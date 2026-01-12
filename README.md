# Binghamton-University-Parking-Shiny-App
An R Shiny data journalism project investigating the "Binghamton Parking Gate Scandal." It combines narrative storytelling with interactive data to track parking availability across campus lots. Using ggplot2 and Plotly, the app visualizes peak congestion times, helping students navigate parking shortages caused by university construction.

# Binghamton Parking Gate Scandal | Data Journalism Project

An interactive data narrative and Shiny web application that investigates the parking crisis at Binghamton University. This project blends investigative journalism with data visualization to highlight the challenges commuters face due to campus construction and peak-hour congestion.

## 📌 Project Overview
Finding a parking spot at Binghamton University during peak class hours is often described by students as an "uphill battle." This project uses a custom dataset of parking lot occupancy to:
* **Identify Peak Hours:** Visualize exactly when specific lots (M2, M3, M4, L) reach maximum capacity.
* **Compare Lot Availability:** Contrast commuter-heavy lots with underutilized resident or remote lots (M1, G1).
* **Contextualize the Crisis:** Provide a narrative background on how new university construction projects are impacting student transit.

## 🛠️ Tech Stack
* **Language:** R
* **Framework:** [Shiny](https://shiny.posit.co/)
* **Visualization:** `ggplot2`, `plotly`
* **Data Manipulation:** `dplyr`
* **UI/UX:** Custom CSS and HTML integration for long-form narrative storytelling.

## 📊 Features
* **Dynamic Filtering:** Users can toggle between Tuesdays/Thursdays and specific time blocks to see real-time availability trends.
* **Interactive Bar Charts:** Hover-over data points powered by Plotly to see exact "available spot" counts per lot.
* **Integrated Narrative:** A data-driven "day-in-the-life" story that guides the user through the visualization.

## 🚀 How to Run Local
1. Clone this repository.
2. Ensure you have the dataset `TuesThursBingParking3.csv` in your working directory.
3. Install required packages:
   ```R
   install.packages(c("shiny", "dplyr", "plotly", "ggplot2"))
