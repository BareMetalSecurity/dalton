package main

import (
	"dalton/config"
	"dalton/scannerd"
	"fmt"
	"net/http"
	"os"
	"os/signal"
	"runtime"
	"syscall"
)

const (
	DALTON_SCANNERD_SECTION = "scannerd"
	DALTON_SCANNERD_HOST    = "host"
	DALTON_SCANNERD_PORT    = "port"
	DALTON_FORCE_SHUTDOWN   = 10
)

var (
	signals chan os.Signal
)

/*
   The main function that will run the scannerd
*/
func main() {

	cores := maxParallelism()
	runtime.GOMAXPROCS(cores)
	signals = make(chan os.Signal, 1) // Buffered Channel
	signal.Notify(signals, syscall.SIGINT, syscall.SIGTERM)
	//start handling the mux
	http.Handle("/", scannerd.NewMux())
	go scannerd.StartScanning()
	go gracefulShutdown(signals)
	//get the scannerd listening host and port
	//from the central configuration
	host := config.ReadKey(DALTON_SCANNERD_SECTION, DALTON_SCANNERD_HOST)
	port := config.ReadKey(DALTON_SCANNERD_SECTION, DALTON_SCANNERD_PORT)
	listeningURI := fmt.Sprintf("%s:%s", host.String(), port.String())
	fmt.Println(fmt.Sprintf("Starting %s on Port %s With Cores : %d", scannerd.SCANNER_NAME, port.String(), cores))
	http.ListenAndServe(listeningURI, nil)
	fmt.Println("Awaiting any Signal from the operating System To shutdown the current program.")

}

func maxParallelism() int {
	maxProcs := runtime.GOMAXPROCS(0)
	numCPU := runtime.NumCPU()
	if maxProcs < numCPU {
		return maxProcs
	}
	return numCPU
}

func gracefulShutdown(signals chan os.Signal) {
	notification := <-signals
	fmt.Println("We received the following Notification for shutting down : " + fmt.Sprintf("Signal : %v", notification))
	fmt.Println("Shutting down the operating system")
	//Immediately shutting down
	syscall.Exit(DALTON_FORCE_SHUTDOWN)
}
