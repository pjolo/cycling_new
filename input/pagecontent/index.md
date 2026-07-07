# Race Cycling FHIR Implementation Guide

Welcome to the **Race Cycling FHIR Implementation Guide** - a playful FHIR IG for road cycling enthusiasts! 🚴‍♂️

## Overview

This Implementation Guide demonstrates FHIR profiling for cycling domain concepts:

- **Cyclist** - A patient/cyclist profile with Functional Threshold Power (FTP) extension
- **RaceBike** - A Device profile with sliced properties for frame material, groupset, and wheelset
- **RideMetric** - Observation profile for training metrics (power, heart rate, cadence, speed)
- **TrainingRide** - Procedure profile representing a training ride or race
- **RideReport** - Bundle document summarizing a complete ride with cyclist, bike, ride, and metrics

## Key Features

- **Extensions**: Functional Threshold Power (FTP) in watts
- **Terminologies**: Custom CodeSystems for frame materials, groupsets, wheelsets, and metric types
- **Slicing**: Device.property slicing for bike components, Bundle.entry slicing for report structure
- **ValueSets**: Bound value sets with required binding strength

## Example Scenarios

- Amateur cyclist Anna Müller with FTP of 245W on a Canyon Ultimate CF SLX
- Professional cyclist Thomas Weber with FTP of 420W on a Specialized S-Works Tarmac SL7
- Training ride with power, heart rate, cadence, and speed metrics
- Complete ride report bundle

## Navigation

- [Use Case (Deutsch)](usecase-german.html)
- [Cas d'usage (Français)](usecase-french.html)
- [Resource Overview (PlantUML)](racecycling-overview.html)
- [Artifacts Summary](artifacts.html)

{% include racecycling-overview.svg %}

## FHIR Version

This IG is based on **FHIR R4 (4.0.1)**.

## License

CC0-1.0 - Public Domain

---

*This is a fun/educational Implementation Guide - not for clinical use!*