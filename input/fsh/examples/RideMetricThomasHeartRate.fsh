// ============================================================================
// Instance: RideMetricThomasHeartRate
// ============================================================================
Instance: RideMetricThomasHeartRate
InstanceOf: RideMetric
Title: "Thomas's Heart Rate Metric - 165 bpm Average"
Description: "Thomas Weber's average heart rate during training ride"
* status = #final
* code = RideMetricType#average-heart-rate
* subject = Reference(CyclistThomasWeber)
* valueQuantity.value = 165
* valueQuantity.unit = "beats per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min