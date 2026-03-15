# F1 Performance Analytics | SQL + Tableau

SQL • Data Analytics • Tableau • Performance Metrics

An end-to-end data analytics project analyzing 20+ years of Formula 1 race data (2000–2024) to evaluate driver and constructor performance using SQL-based KPI modeling and Tableau dashboards.

This project demonstrates how structured relational race data can be transformed into performance insights and decision-support metrics through SQL analysis and interactive visualization.

---

## Dashboard Preview

![Driver KPI Dashboard](dashboard/driver-kpi-chart.png)

---

# Project Snapshot

Dataset: 20+ years of Formula 1 race data  
Rows analyzed: ~25,000+ race results  
Database: SQLite  
Queries written: 6 analytical SQL scripts  
Visualization: Tableau dashboard  

---

# Project Overview

This project analyzes historical Formula 1 race data to evaluate both **long-term career performance** and **short-term performance momentum** of drivers and constructors.

The workflow mirrors a typical analytics pipeline used in data-driven organizations:

1. Extract structured race data  
2. Transform and aggregate metrics using SQL  
3. Design performance KPIs  
4. Visualize insights using Tableau dashboards  

The objective is to identify performance patterns and compare **historical consistency with recent performance trends**.

---

# Key Business Questions

This analysis explores several performance-focused questions:

- Which drivers generate the strongest overall race performance across their careers?
- Which drivers demonstrate the most effective win conversion?
- How does starting grid position influence race outcomes?
- Which constructors demonstrate the most consistent competitive performance?
- Which drivers are currently outperforming their long-term historical averages?

---

# Dataset

Source:  
Formula 1 World Championship Dataset  
https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020

Key tables used:

- `results`
- `drivers`
- `constructors`
- `races`

The dataset was imported into **SQLite** to simulate a structured analytics environment.

---

# Tools Used

## SQL (SQLite)

Used for data transformation and KPI modeling.

Key SQL techniques applied:

- JOIN operations across relational tables
- GROUP BY aggregations
- Common Table Expressions (CTEs)
- KPI metric calculations
- Filtering and ranking

## Tableau

Used to build dashboards visualizing driver and constructor performance trends.

## DB Browser for SQLite

Used for query development and database management.

---

# Key Performance Metrics

The project models several analytical KPIs used to evaluate driver and team effectiveness.

### Career Average Points

Average points scored per race across a driver's entire career.

### Recent Performance

Average points scored in recent races to evaluate current performance momentum.

### Momentum Score

```
momentum_score = recent_avg_points - career_avg_points
```

A positive value indicates improving performance relative to historical averages.

### Overperformance Score

```
overperformance_score = grid_position - finishing_position
```

Positive values indicate drivers finishing ahead of their starting grid position.

---

# SQL Analysis Pipeline

The SQL scripts follow a structured analytics workflow:

1. Driver career totals  
2. Driver efficiency metrics  
3. Constructor average performance  
4. Post-2014 constructor performance analysis  
5. Driver momentum analysis  
6. Final KPI table generation for dashboard visualization  

---

# Project Background

This project was originally developed as a university team project analyzing Formula 1 race data.

The initial analysis and presentation were completed in a team setting.  
This repository represents an extended version of the project where the analysis pipeline was further developed using SQL and structured KPI modeling.

Additional work in this repository includes:

- Building a SQL-based analytics pipeline
- Designing performance KPIs
- Structuring query-based analysis
- Developing a Tableau dashboard for visualization

---

# Example Insights

### Long-Term Driver Dominance
Lewis Hamilton leads the dataset in total career points, reflecting sustained competitive dominance across multiple seasons.

### Constructor Performance Stability
Mercedes demonstrates both high point accumulation and relatively stable performance across seasons, indicating strong organizational competitiveness.

### Grid Position vs Race Outcomes
Several drivers consistently finish ahead of their starting grid positions, suggesting strong race execution and strategic performance.

### Momentum vs Historical Performance
Momentum analysis reveals drivers whose recent race performance exceeds their long-term career averages.

---

# Repository Structure

```
f1-performance-analytics
│
├ dashboard
│   └ driver-kpi-chart.png
│
├ sql
│   ├ 01_driver_career_totals.sql
│   ├ 02_driver_avg_points.sql
│   ├ 03_constructor_avg_points.sql
│   ├ 04_constructor_post2014.sql
│   ├ 05_momentum_top10.sql
│   ├ 06_final_driver_kpi_table.sql
│   └ README.md
│
├ tableau
│   ├ Design data.twbx
│   ├ F1.Drivers.Characteristics.1.twbx
│   ├ Races Data.twbx
│   └ README.md
│
├ README.md
├ f1_database.db
└ f1-performance-analytics-presentation.pdf
```

---

# Project Presentation

Full project presentation:

[View Project Presentation](f1-performance-analytics-presentation.pdf)

---

# Future Improvements

Potential future extensions include:

- Lap time performance analysis  
- Driver consistency metrics  
- Season-by-season performance comparisons  
- Predictive race outcome modeling  
- Expanded Tableau dashboards  

---

# Author

Sophia Choi  
Business Technology Management  

Data Analytics • SQL • Tableau • Business Operations Strategy
