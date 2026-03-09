# F1 Performance Analytics

An end-to-end SQL analytics project analyzing historical Formula 1 race data to evaluate driver and constructor performance using KPI modeling and dashboard visualization.

The project demonstrates how relational race data can be transformed into performance insights through SQL analysis and visualized using Tableau.

---

# Project Overview

This project analyzes historical Formula 1 race data to evaluate both **long-term career performance** and **short-term race momentum** of drivers and constructors.

The workflow simulates a typical data analytics pipeline:

1. Extract structured race data
2. Transform and aggregate metrics using SQL
3. Build performance KPIs
4. Visualize insights using Tableau dashboards

The objective is to identify performance patterns and compare historical consistency with recent performance trends.

---

# Key Business Questions

This analysis explores several key questions:

* Which drivers accumulate the highest total points across their careers?
* Which drivers have the strongest win records?
* How does starting grid position relate to race outcomes?
* Which constructors demonstrate the most consistent performance?
* Which drivers show strong recent momentum compared to their career averages?

---

# Data Source

Dataset: **Formula 1 World Championship Dataset**

Source:
https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020

The dataset includes:

* Race results
* Driver information
* Constructors
* Circuits
* Race schedules
* Lap time records

Relevant tables were imported into **SQLite** for analysis.

---

# Tools Used

### SQL (SQLite)

Used for data transformation and metric generation.

Key SQL concepts applied:

* JOIN operations across relational tables
* Aggregations using `GROUP BY`
* Common Table Expressions (CTEs)
* KPI calculations
* Filtering and ranking

### Tableau

Used for dashboard visualization and exploratory analysis.

The dashboard presents key metrics including driver performance, race wins, starting position trends, and constructor variability.

### DB Browser for SQLite

Used to develop and test SQL queries and manage the database.

---

# Key Performance Metrics (KPIs)

The project models several analytical KPIs.

### Career Average Points

Average points scored per race across a driver's career.

### Recent Performance

Average points scored in the most recent races.

### Momentum Score

Measures whether a driver is currently outperforming their historical performance.

```
momentum_score = recent_avg_points - career_avg_points
```

A positive score indicates improving performance.

### Overperformance Score

Measures how much a driver improves relative to their starting grid position.

```
overperformance_score = grid_position - finishing_position
```

Positive values indicate drivers finishing ahead of their starting position.

---

# SQL Analysis Pipeline

The SQL scripts follow a structured analysis pipeline:

1. **Driver career totals**
2. **Driver efficiency metrics**
3. **Constructor average performance**
4. **Post-2014 constructor performance analysis**
5. **Driver momentum analysis**
6. **Final KPI table generation for dashboard use**

---

# Dashboard

An interactive Tableau dashboard was created to visualize key performance metrics derived from the SQL analysis.

The dashboard compares driver and constructor performance across multiple dimensions.

### Key Visualizations

**Driver Performance Overview**

* Total career points
* Race wins comparison
* Average starting position
* Constructor variability influence

**Constructor Performance**

* Distribution of podium finishes
* Team performance consistency
* Constructor ranking comparisons

### Example Insights

* Mercedes and Ferrari dominate podium appearances across the dataset.
* Some drivers achieve strong race results despite weaker starting positions.
* Constructor performance variability reveals differences in team consistency across seasons.

### Tableau Workbook

The interactive dashboard is available in this repository:

```
tableau/f1_dashboard.twbx
```

Open the workbook using **Tableau Desktop** or **Tableau Public** to explore the dashboard.

---

# Project Structure

```text
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
├── tableau
│   └── f1_dashboard.twbx
│
├── f1.db
└── README.md
```

---

## Example Insight

Initial analysis suggests that:

* Drivers with strong recent momentum are not always those with the highest historical performance.
* Constructor performance patterns shifted significantly after the 2014 regulation changes.
* Some drivers consistently outperform their starting grid positions, suggesting strong race execution and strategy.

---

## Future Improvements

Potential future extensions include:

* Lap time analysis
* Driver consistency metrics
* Season-by-season performance comparisons
* Predictive race outcome modeling
* Expanded Tableau dashboards

---

## Author

SQL Analytics Project
Focused on motorsport performance analysis and KPI modeling.
