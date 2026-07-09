// ============================================================================
// Instance: RideMetricThomasCadence
// ============================================================================
Instance: RideMetricThomasCadence
InstanceOf: RideMetric
Title: "Thomas's Cadence Metric - 95 rpm"
Description: "Thomas Weber's average cadence during training ride"
* status = #final
* code = RideMetricType#average-cadence
* subject = Reference(CyclistThomasWeber)
* valueQuantity.value = 95
* valueQuantity.unit = "revolutions per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min