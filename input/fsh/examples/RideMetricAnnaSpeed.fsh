// ============================================================================
// Instance: RideMetricAnnaSpeed
// ============================================================================
Instance: RideMetricAnnaSpeed
InstanceOf: RideMetric
Title: "Anna's Speed Metric - 32.5 km/h"
Description: "Average speed during morning interval training ride"
* status = #final
* code = RideMetricType#average-speed
* subject = Reference(CyclistAnnaMuller)
* valueQuantity.value = 32.5
* valueQuantity.unit = "km/h"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #km/h