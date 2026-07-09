// ============================================================================
// Instance: TrainingRideAnnaMorning
// ============================================================================
Instance: TrainingRideAnnaMorning
InstanceOf: TrainingRide
Title: "Anna's Morning Interval Training Ride"
Description: "Intervall training ride in the pre-alps"
* status = #completed
* code = RideMetricType#average-power
* subject = Reference(CyclistAnnaMuller)
* performer[0].actor = Reference(CyclistAnnaMuller)
* performedDateTime = "2024-01-15T08:30:00+01:00"