Profile: TrainingRide
Parent: Procedure
Id: training-ride
Title: "Training Ride"
Description: "A cycling training ride or race, linking the cyclist, their bike, and recorded metrics."

* ^status = #draft
* status = #completed
* code from RideMetricTypeVS (required)
* subject only Reference(Patient)
* performer 0..*
* partOf 0..*