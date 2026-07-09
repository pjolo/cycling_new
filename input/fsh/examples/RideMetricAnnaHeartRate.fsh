// ============================================================================
// Instance: RideMetricAnnaHeartRate
// ============================================================================
Instance: RideMetricAnnaHeartRate
InstanceOf: RideMetric
Title: "Anna's Heart Rate Metric - 142 bpm Average"
Description: "Average heart rate during morning interval training ride"
* status = #final
* code = RideMetricType#average-heart-rate
* subject = Reference(CyclistAnnaMuller)
* valueQuantity.value = 142
* valueQuantity.unit = "beats per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min