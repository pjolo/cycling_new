// ============================================================================
// Instance: RideMetricAnnaCadence
// ============================================================================
Instance: RideMetricAnnaCadence
InstanceOf: RideMetric
Title: "Anna's Cadence Metric - 88 rpm"
Description: "Average cadence during morning interval training ride"
* status = #final
* code = RideMetricType#average-cadence
* subject = Reference(CyclistAnnaMuller)
* valueQuantity.value = 88
* valueQuantity.unit = "revolutions per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min