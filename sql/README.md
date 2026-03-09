# SQL Analysis Queries

This folder contains SQL scripts used to analyze Formula 1 performance data and build KPI tables for dashboard visualization.

### Tables Used

The analysis primarily uses the following tables from the Formula 1 dataset:

- results
- drivers
- constructors
- races

## Query Overview

01_driver_career_totals.sql  
Calculates total races and total points for each driver.

02_driver_avg_points.sql  
Computes average points per race to evaluate driver efficiency.

03_constructor_avg_points.sql  
Measures average constructor performance across races.

04_constructor_post2014.sql  
Analyzes constructor performance after the 2014 regulation changes.

05_momentum_top10.sql  
Identifies drivers with the strongest recent momentum compared to their career averages.

06_final_driver_kpi_table.sql  
Creates a dashboard-ready KPI table combining:
- career performance
- recent performance
- momentum score
- overperformance metric (grid vs finish position)
