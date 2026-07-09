// ============================================================================
// Instance: RideMetricThomasSpeed
// ============================================================================
Instance: RideMetricThomasSpeed
InstanceOf: RideMetric
Title: "Thomas's Speed Metric - 38.5 km/h Average"
Description: "Thomas Weber's average speed during training ride"
* status = #final
* code = RideMetricType#average-speed
* subject = Reference(CyclistThomasWeber)
* valueQuantity.value = 38.5
* valueQuantity.unit = "km/h"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #km/h