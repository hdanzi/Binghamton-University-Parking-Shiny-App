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

## 📁 Project Structure & Image Assets
To ensure the visual narrative renders correctly, this project requires a specific folder structure for image assets:
* **Root Directory:** Contains `app.R` and `TuesThursBingParking3.csv`.
* **www/ Folder:** A sub-folder named `www` must contain the following image files: `M1.jpeg`, `M2.jpeg`, `M4.jpeg`, and `G.jpeg`. 
* *Note: Shiny automatically looks in the `/www` directory for any media referenced in the UI.*

## 📊 Features
* **Dynamic Filtering:** Users can toggle between Tuesdays/Thursdays and specific time blocks to see real-time availability trends.
* **Interactive Bar Charts:** Hover-over data points powered by Plotly to see exact "available spot" counts per lot.
* **Integrated Narrative:** A data-driven "day-in-the-life" story that guides the user through the visualization.

## 🚀 How to Run Local
1. Clone this repository.
2. Ensure the `/www` folder and `.csv` file are in the root directory as described above.
3. Install required packages:
   ```R
   install.packages(c("shiny", "dplyr", "plotly", "ggplot2"))
