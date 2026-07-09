// ============================================================================
// Instance: RideMetricAnnaPower
// ============================================================================
Instance: RideMetricAnnaPower
InstanceOf: RideMetric
Title: "Anna's Power Metric - 215W Average"
Description: "Average power during morning interval training ride"
* status = #final
* code = RideMetricType#average-power
* subject = Reference(CyclistAnnaMuller)
* valueQuantity.value = 215
* valueQuantity.unit = "W"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #W