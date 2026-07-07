Profile: RideMetric
Parent: Observation
Id: ride-metric
Title: "Ride Metric"
Description: "A single training metric recorded during a cycling ride, e.g. power, heart rate, cadence or speed."

* ^status = #draft
* status = #final
* code from RideMetricTypeVS (required)
* subject only Reference(Patient)
* value[x] only Quantity
* valueQuantity 1..1 MS
* component 0..*