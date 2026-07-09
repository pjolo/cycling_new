# Use Case (Deutsch)

## Überblick

Dieser Implementierungsleitfaden (IG) modelliert den Radsport-Domain mit FHIR R4 Ressourcen. Er dient als **Lern- und Spielprojekt** um FHIR Profiling, Slicing, Extensions und Terminologien zu üben - ganz ohne den Ernst eines echten klinischen IGs (wie CH Core, EPD, etc.).

## Akteure

| Akteur | FHIR Ressource | Beschreibung |
|--------|----------------|--------------|
| **Radfahrer/in** | `Patient` (Profil: `Cyclist`) | Person die Rennrad fährt, mit FTP-Extension |
| **Rennrad** | `Device` (Profil: `RaceBike`) | Das Fahrrad als medizinisches Gerät modelliert |
| **Trainingsausfahrt** | `Procedure` (Profil: `TrainingRide`) | Eine einzelne Ausfahrt oder ein Rennen |
| **Trainingsmetrik** | `Observation` (Profil: `RideMetric`) | Einzelne Messwerte: Watt, Puls, Trittfrequenz, Geschwindigkeit |
| **Ausfahrten-Bericht** | `Bundle` (Profil: `RideReport`) | Dokument-Bundle mit allen Infos einer Ausfahrt |

## Beispiel-Szenario: Annas Morgentraining

**Anna Müller** (28, Amateur-Radsportlerin, FTP 245W) fährt morgens eine Intervall-Einheit in den Voralpen:

1. **Radfahrer-Profil** (`CyclistAnnaMuller`):
   - Name: Anna Müller
   - Geburtsdatum: 15.06.1995
   - FTP: 245 W (Extension)
   - [Beispiel ansehen](Patient-CyclistAnnaMuller.html)

2. **Rennrad** (`RaceBikeCanyonUltimate`):
   - Modell: Canyon Ultimate CF SLX 8.0
   - Rahmen: Carbon (`RaceBikeFrameMaterial#carbon`)
   - Gruppe: Shimano Ultegra Di2 (`RaceBikeGroupset#shimano-ultegra`)
   - Laufräder: Tubeless (`RaceBikeWheelset#tubeless`)
   - [Beispiel ansehen](Device-RaceBikeCanyonUltimate.html)

3. **Trainingsausfahrt** (`TrainingRideAnnaMorning`):
   - Status: completed
   - Datum: 15.01.2024, 08:30
   - Verknüpft mit Anna und ihrem Rad
   - [Beispiel ansehen](Procedure-TrainingRideAnnaMorning.html)

4. **Metriken** (je eine `RideMetric`):
   - **Leistung**: 215 W durchschnittlich (`RideMetricType#power`)
     - [Beispiel ansehen](Observation-RideMetricAnnaPower.html)
   - **Herzfrequenz**: 142 bpm durchschnittlich (`RideMetricType#heart-rate`)
     - [Beispiel ansehen](Observation-RideMetricAnnaHeartRate.html)
   - **Trittfrequenz**: 88 rpm (`RideMetricType#cadence`)
     - [Beispiel ansehen](Observation-RideMetricAnnaCadence.html)
   - **Geschwindigkeit**: 32.5 km/h (`RideMetricType#speed`)
     - [Beispiel ansehen](Observation-RideMetricAnnaSpeed.html)

5. **Ausfahrten-Bericht** (`RideReportAnnaMorning`):
   - Bundle vom Typ `document`
   - Enthält: Cyclist, RaceBike, TrainingRide, 4× RideMetric
   - Zeitstempel: 15.01.2024, 10:45
   - [Beispiel ansehen](Bundle-RideReportAnnaMorning.html)

## Terminologien (Spass-CodeSystems)

Alle CodeSystems sind **fiktiv** und nur für diesen Spass-IG gedacht:

| CodeSystem | Codes | Zweck |
|------------|-------|-------|
| `RaceBikeFrameMaterial` | carbon, aluminium, steel, titanium | Rahmenmaterial |
| `RaceBikeGroupset` | shimano, sram, campagnolo (+ Modelle) | Schaltgruppe |
| `RaceBikeWheelset` | clincher, tubular, tubeless, disc-brake, rim-brake | Laufradtyp |
| `RideMetricType` | power, heart-rate, cadence, speed, distance, elevation | Metrik-Typ |

## Profiling-Highlights

### Cyclist (Patient-Profil)

- Erbt von `Patient` (nicht `Person` - damit klinischer Kontext möglich)
- Extension `functional-threshold-power` (0..1, MS)
- Binding: Quantity mit UCUM Watt (W)

### RaceBike (Device-Profil)

- Slicing auf `Device.property` nach `type` (Discriminator: value)
- Drei Slices: `frameMaterial`, `groupset`, `wheelset` (alle 0..1 MS)
- Binding auf je eigenen CodeSystem (required)
- `deviceName` 1..* MS für Modellname und Hersteller

### RideMetric (Observation-Profil)

- `status` = final (fix)
- `code` aus `RideMetricTypeVS` (required)
- `subject` nur `Patient` (Cyclist)
- `value[x]` nur `Quantity` (1..1 MS)

### TrainingRide (Procedure-Profil)

- `status` = completed
- `code` aus `RideMetricTypeVS` (required, z.B. power für Watt-basiertes Training)
- `subject` = Cyclist
- `performer` = Cyclist
- `partOf` für Etappenrennen

### RideReport (Bundle-Profil)

- `type` = document
- Slicing auf `Bundle.entry.resource`
- Vier Slices: `cyclist` (1..1), `bike` (0..1), `ride` (1..1), `metrics` (1..*)
- `timestamp` 1..1 MS

## Nächste Schritte für Lernende

1. **Weitere Instanzen**: Thomas Weber (Profi, 385W FTP) mit Specialized S-Works Tarmac
   - [RaceBikeSpecializedSWorks.html](Device-RaceBikeSpecializedSWorks.html)
   - [RideReportThomasWeber.html](Bundle-RideReportThomasWeber.html)
2. **Komponenten verfeinern**: Laufräder als eigene Devices (`hasPart` Referenz)
3. **Intervalle modellieren**: `RideMetric.component` für Intervall-Splits
4. **Etappenrennen**: `TrainingRide.partOf` Kette für Mehrtagestouren
5. **Plausibilitätsprüfungen**: Invariants (z.B. FTP > 0, speed > 0)
6. **PlantUML Diagramm**: Übersicht aller Ressourcen und Beziehungen

---

*Viel Spass beim FHIR-Lernen mit dem Rennrad!* 🚴‍♀️🚴‍♂️