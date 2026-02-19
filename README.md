# F1 Performance Analytics
An end-to-end SQL analytics project analyzing historical Formula 1 race data (2000–2024) to evaluate driver and constructor performance using KPI modeling and Tableau visualization.

---

## Project Overview
This project explores Formula 1 race results to simulate a real-world analytics workflow:
- Import structured CSV race datasets into SQLite
- Perform aggregations and joins using SQL
- Define performance KPIs
- Build a Tableau dashboard for visualization
The focus was to practice SQL fundamentals while applying business-style performance analysis.

---

## Key Business Questions
- Which drivers consistently outperform their starting grid positions?
- Which constructors show the most performance stability or variability?
- Who performs best in recent seasons?
- How does short-term momentum compare to long-term career performance?

---

## Data Sources
Publicly available structured Formula 1 datasets including:
- `races.csv`
- `results.csv`
- `drivers.csv`
- `constructors.csv`
- `qualifying_results.csv`
Database built in **SQLite** using DB Browser.

---

## KPI Definitions

### Driver KPIs
- **Total Career Points**
- **Average Points per Race**
- **Grid vs Finish Performance Delta**
- **Recent Season Average Points**
- **Momentum Score**  
  `recent_avg_points - career_avg_points`
### Constructor KPIs
- **Total Points**
- **Average Points per Race**
- **Performance Variability**
- **Post-2014 Regulation Performance Comparison**

---

## SQL Techniques Used
- INNER JOIN
- GROUP BY aggregation
- HAVING filters
- ORDER BY ranking
- CTE (Common Table Expressions)
- Calculated metrics using `ROUND()`, `AVG()`, `SUM()`

---

## Project Structure
f1-performance-analytics/
│
├── data/
│ ├── results_history.csv
│ ├── qualifying_results.csv
│
├── sql/
│ ├── 01_driver_metrics.sql
│ ├── 02_constructor_analysis.sql
│ ├── 03_recent_momentum.sql
│ ├── 04_final_kpi_table.sql
│
├── tableau/
│ └── dashboard.twbx
│
├── f1.db
└── README.md


---

## Key Insights
- Drivers with consistent top-5 finishes show stronger long-term scoring stability.
- Mercedes demonstrates the highest post-2014 dominance in both total and average points.
- Recent momentum does not always align with historical career dominance.
- Performance variability increases during regulation change seasons.

---

## Tools Used
- SQLite (DB Browser)
- SQL
- Tableau
- CSV datasets

---

## What I Learned
- Building relational joins across multiple structured datasets
- Defining business-oriented KPIs from raw sports data
- Translating SQL results into dashboard-ready data models
- Structuring analytics projects in a reproducible format

---

## Next Improvements
- Add window functions for rolling performance metrics
- Automate database build process
- Expand to predictive modeling in Python
