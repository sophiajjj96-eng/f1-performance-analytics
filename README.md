# F1 Performance Analytics

An end-to-end SQL analytics project analyzing historical Formula 1 race data to evaluate driver and constructor performance using KPI modeling and dashboard-ready datasets.

The project demonstrates how relational race data can be transformed into performance metrics and analytical insights using SQL.

---

# Project Overview

This project analyzes historical Formula 1 race data to evaluate long-term performance, short-term momentum, and constructor efficiency.

The workflow simulates a typical analytics pipeline:

1. Extract structured race data
2. Transform and aggregate metrics using SQL
3. Build analytical KPIs
4. Prepare data for visualization (Tableau)

The goal is to compare career performance with recent trends and identify drivers or constructors that are outperforming expectations.

---

# Key Business Questions

This project answers several analytical questions:

* Which drivers consistently outperform their starting positions?
* Which drivers show the strongest recent momentum?
* Which constructors demonstrate the most consistent performance?
* How does recent performance compare to long-term career averages?
* Which teams improved after the 2014 regulation changes?

---

# Data Source

Dataset: Formula 1 World Championship Dataset

Source:
https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020

The dataset contains:

* race results
* driver information
* constructors
* circuits
* race schedules
* lap times

Only relevant tables were imported into SQLite for analysis.

---

# Tools Used

* **SQL (SQLite)**

  * Joins
  * Aggregations
  * CTEs
  * KPI calculations

* **Tableau**

  * Dashboard visualization
  * Performance comparison charts

* **DB Browser for SQLite**

  * Query development
  * Database inspection

---

# Key Metrics (KPIs)

The project models several performance metrics:

### Career Average Points

Average points per race across a driver's entire career.

### Recent Performance

Average points across the most recent races.

### Momentum Score

Measures improvement compared to historical performance.

momentum_score = recent_avg_points − career_avg_points

### Overperformance Score

Measures how much a driver improves relative to their starting grid position.

overperformance_score = grid_position − finishing_position

Positive values indicate outperforming the starting position.

---

# SQL Analysis Pipeline

The SQL queries follow a structured analysis pipeline:

1. Driver career totals
2. Driver efficiency metrics
3. Constructor performance analysis
4. Post-2014 regulation analysis
5. Momentum analysis
6. Final KPI table generation for dashboard use

---

# Project Structure

```
f1-performance-analytics
│
├── sql
│   ├── 01_driver_career_totals.sql
│   ├── 02_driver_avg_points.sql
│   ├── 03_constructor_avg_points.sql
│   ├── 04_constructor_post2014.sql
│   ├── 05_momentum_top10.sql
│   └── 06_final_driver_kpi_table.sql
│
├── f1.db
└── README.md
```

---

# Example Insight

Preliminary analysis shows that:

* Drivers with strong recent momentum are not always the ones with the highest historical performance.
* Constructor performance became more volatile following the 2014 regulation changes.
* Some drivers consistently outperform their starting grid positions, indicating strong racecraft and strategy.

---

# Future Improvements

Possible extensions to the project include:

* Adding lap time analysis
* Predictive modeling for race outcomes
* Driver consistency metrics
* Season-by-season performance tracking
* Expanded Tableau dashboards

---

# Author

SQL Analytics Project
Focused on motorsport performance analysis and KPI modeling.
