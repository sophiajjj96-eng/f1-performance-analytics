# F1 Performance Analytics
An end-to-end SQL analytics project analyzing 2000–2024 Formula 1 race data to evaluate driver and constructor performance using KPI modeling and dashboard visualization.

## Project Overview
This project analyzes historical Formula 1 race data to evaluate driver and constructor performance.
The goal was to simulate a real-world analytics workflow:
- Extract structured data
- Transform metrics using SQL
- Build performance KPIs
- Visualize results in Tableau

## Key Business Questions
- Which drivers consistently outperform their starting positions?
- Which constructors show the most variability?
- Who performs best in recent seasons?
- How does short-term momentum compare to long-term performance?

## Tools Used
- SQL (aggregation, GROUP BY, joins, performance metrics)
- Tableau (dashboard visualization)
- CSV structured race datasets

## Project Structure
f1-performance-analytics/
│
├── data/
│   ├── results_history.csv
│   └── qualifying_results.csv
│
├── sql/
│   ├── 01_driver_metrics.sql
│   ├── 02_constructor_variability.sql
│   └── 03_recent_season_analysis.sql
│
└── tableau/
    └── dashboard.twbx
    
## Key Insights
- Drivers starting outside top 5 positions but with high consistency showed stronger long-term performance stability.
- Constructor variability increased significantly during regulation change seasons.
- Recent season momentum did not always correlate with historical dominance.
