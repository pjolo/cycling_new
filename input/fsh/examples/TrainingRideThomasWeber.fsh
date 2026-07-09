// ============================================================================
// Instance: TrainingRideThomasWeber
// ============================================================================
Instance: TrainingRideThomasWeber
InstanceOf: TrainingRide
Title: "Thomas's Training Ride"
Description: "Professional training ride in the Alps"
* status = #completed
* code = RideMetricType#average-power
* subject = Reference(CyclistThomasWeber)
* performer[0].actor = Reference(CyclistThomasWeber)
* performedDateTime = "2024-01-15T09:00:00+01:00"