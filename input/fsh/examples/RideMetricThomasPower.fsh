// ============================================================================
// Instance: RideMetricThomasPower
// ============================================================================
Instance: RideMetricThomasPower
InstanceOf: RideMetric
Title: "Thomas's Power Metric - 385W Average"
Description: "Thomas Weber's average power output during training ride"
* status = #final
* code = RideMetricType#average-power
* subject = Reference(CyclistThomasWeber)
* valueQuantity.value = 385
* valueQuantity.unit = "W"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #W