# CineInvest: Cinematic Risk & Revenue Intelligence Suite

## Project Overview

**CineInvest: Cinematic Risk & Revenue Intelligence Suite** is a data analytics and business intelligence project focused on the **Media & Entertainment** domain.

The project analyzes historical movie data to evaluate **revenue, profitability, ROI, budget efficiency, genre performance, production-company performance, and release-year trends**.

The solution follows an end-to-end analytics workflow, starting from data assessment and cleaning and progressing through Excel, SQL, Python, statistical analysis, and Power BI dashboard development.

## Business Problem

Movie investment involves significant financial uncertainty. Revenue alone does not provide a complete picture of investment success because production budget, profit, and ROI also need to be considered.

CineInvest addresses the following business challenges:

- Movie financial information needs to be analyzed together for effective investment decisions.
- Historical movie data requires cleaning and validation before analysis.
- Revenue alone cannot determine investment efficiency.
- Movie performance varies across genres, budgets, production companies, and release periods.
- High-budget movies do not necessarily generate the highest ROI.
- Decision-makers need an interactive dashboard to compare movie and segment performance.

## Project Objectives

- Analyze movie financial performance.
- Evaluate investment efficiency using **Budget, Revenue, Profit, and ROI**.
- Identify stronger-performing movie genres.
- Analyze production-company performance.
- Study revenue and movie-production trends across release years.
- Perform data cleaning and validation.
- Create business-focused analytical features.
- Perform EDA and statistical analysis.
- Develop reusable SQL analysis and KPIs.
- Build an interactive Power BI dashboard.
- Convert analytical findings into business insights and recommendations.

# Dataset

### Dataset Name

**Movie Investment Efficiency & Portfolio Risk Analytics Dataset**

### Dataset Size

- **Records:** 4,803 movies
- **Columns:** 51
- **Primary Key:** `movie_id`

### Dataset Information

The dataset contains historical movie information including:

- Movie title
- Budget
- Revenue
- Release date
- Genres
- Production companies
- Cast
- Crew
- Popularity
- Other movie-related attributes

### Data Files

**Raw Dataset:** `project_dataset.csv`

**Cleaned Dataset:** `cleaned_movies.csv`

The raw dataset is retained for comparison and validation, while the cleaned dataset is used for analysis and Power BI development.

# Data Preparation

The project included a structured data-quality and preparation process.

### Data Profiling

- Checked row and column counts.
- Inspected data types.
- Identified missing values.
- Checked duplicates using `movie_id`.
- Checked malformed dates.
- Checked numeric and financial fields.
- Identified invalid or out-of-range values.
- Checked categorical consistency.

### Data Cleaning

- Handled missing values according to the cleaning plan.
- Validated duplicate records.
- Standardized date fields.
- Corrected data types.
- Cleaned text fields.
- Harmonized categorical values.
- Validated financial fields.
- Reconciled row counts after cleaning.

# Feature Engineering

The following business-oriented features were created:

- `Profit`
- `ROI`
- `Revenue_Budget_Ratio`
- `Release_Year`
- `Release_Season`
- `Budget_Category`
- `Profitability_Category`

These features allow movie performance to be analyzed from both revenue and investment-efficiency perspectives.

# Data Analysis & Methodology

## Overall Workflow

**Business Understanding → Dataset Assessment → Data Profiling → Cleaning & Validation → Feature Engineering → Excel Analysis → SQL Analysis → Python / EDA → Statistical Analysis → Power BI Modeling → DAX & KPI Development → Dashboard Development → Business Insights → Recommendations → Documentation & Submission**

### Excel Analysis

Used for data filtering, conditional formatting, data validation, pivot-table analysis, revenue comparisons, production-company analysis, and initial business summaries.

### SQL Analysis

Used for data loading, cleaning and validation, null and duplicate handling, data-type conversion, aggregation, filtering, grouping, KPI calculations, ranking, window functions, revenue analysis, and production-company analysis.

### Python / Pandas Analysis

Used for data loading and inspection, cleaning validation, missing-value validation, descriptive statistics, distribution analysis, correlation analysis, outlier analysis, trend analysis, visualization, and business insight generation.


# Power BI Dashboard

The final Power BI dashboard is organized into three main analytical sections:

## 1. Overview

The **Overview** section provides a high-level summary of movie financial performance.

### KPI Cards

- **Movie Count**
- **Total Profit**
- **Revenue-Budget Ratio**
- **Average ROI**
- **Total Revenue**

### Overview Visualizations

- **Total Revenue by Primary Genre**
- **Total Revenue by Budget Category**
- **Total Revenue by Primary Production Company**
- **Movie Count by Profitability Category**

The Overview section answers:

> **What is the overall financial performance of the movie portfolio?**

## 2. Trends

The **Trends** section focuses on movie performance over time.

### Visualizations

- **Total Revenue by Release Year**
- **Average ROI by Release Year**
- **Movie Count by Release Year**

The Trends section helps identify changes in revenue performance, investment efficiency, and movie-production volume.

The Trends section answers:

> **How has movie production and financial performance changed over time?**

## 3. Segments

The **Segments** section provides deeper analysis of production companies and individual movie performance.

### Visualizations

- **Total Revenue by Production Companies**
- **Budget vs Revenue by Movie Title**
- **Movie Count by Primary Production Company**

The Segments section helps compare production-company revenue, production volume, and movie-level budget and revenue relationships.

The Segments section answers:

> **How do production companies and individual movies differ in financial performance and investment efficiency?**

# Dashboard Interactivity

The Power BI dashboard includes:

- Production Companies slicer
- Primary Production Company slicer
- Cast Gender Ratio slicer
- Cross-filtering
- Drill-down
- Interactive navigation
- Dynamic visual filtering

Selecting a production company allows the user to focus the dashboard on that specific segment and analyze its related performance.

# Key Business Insights

## 1. Revenue Growth Over Time

Movies released after 2000 generated higher revenue, indicating stronger revenue performance in later release periods.

## 2. Production Company Contribution

Top production companies contribute a major share of overall revenue, showing that revenue contribution is not evenly distributed across companies.

## 3. Budget vs ROI

High-budget movies do not always generate the highest ROI. This shows that production budget should not be evaluated independently from investment return.

## 4. Genre Performance

Genre performance varies considerably. **Action and Adventure** are among the stronger revenue-generating genres in the analysis.

## 5. Investment Efficiency

Revenue alone is not sufficient to evaluate movie investment performance.

**Budget + Revenue + Profit + ROI** should be considered together.

# Recommendations

- Evaluate **Budget, Revenue, Profit, and ROI together** before making investment decisions.
- Use **Budget vs Revenue** analysis when evaluating high-cost movie investments.
- Compare movie genres using multiple financial KPIs.
- Evaluate production companies using revenue, profit, ROI, and production volume.
- Investigate extreme ROI values before using them as investment benchmarks.
- Use the interactive Power BI dashboard to compare specific production companies and movie segments.
- Use historical release-year trends as supporting information for investment planning.

# Technology Stack

| Technology | Purpose |
|---|---|
| Microsoft Excel | Data inspection, cleaning support, pivot analysis |
| MySQL Workbench 8.0 | SQL analysis and KPI queries |
| Python | Data analysis and processing |
| Pandas | Data cleaning and manipulation |
| Jupyter Notebook | EDA and statistical analysis |
| Power BI | Data modeling and dashboard |
| DAX | KPI and analytical calculations |
| Git | Version control |
| GitHub | Project repository |

# Repository Structure

```text
Movie-Investment-Efficiency-Portfolio-Risk-Analytics-System/
│
├── data/
│   ├── project_dataset.csv
│   └── cleaned_movies.csv
│
├── notebooks/
│   └── CineInvest_EDA.ipynb
│
├── sql/
│   └── CineInvest_Analysis.sql
│
├── dashboard/
│   └── Day-18.pbix
│
├── docs/
│   ├── Project_Overview.docx
│   ├── Relevant_Project_Details.docx
│   ├── Sprint_Documentation.docx
│   ├── Data_Analysis_and_Methodology.docx
│   ├── Key_Insights_and_Findings.docx
│   ├── Data_Dictionary.docx
│   ├── Dashboard_Documentation.docx
│   ├── Cleaning_Log.docx
│   └── Final_Report.docx
│
├── presentation/
│   └── CineInvest_Final_Presentation.pptx
│
└── README.md
```

# Project Documentation

The project documentation includes:

- Project Overview & Objectives
- Relevant Project Details
- Sprint-wise Documentation
- Data Analysis & Methodology
- Key Insights & Findings
- Data Dictionary
- Dashboard Documentation
- Cleaning Log
- Final Report
- Final Presentation

# Final Project Outcome

CineInvest transforms historical movie data into an interactive **movie investment efficiency and portfolio risk analytics solution**.

The project combines **Excel, SQL, Python, and Power BI** to move from raw movie data through cleaning, analysis, statistical validation, KPI development, visualization, and business recommendations.

The final dashboard provides three analytical views:

> **Overview → Trends → Segments**

Together, these views help users understand **movie revenue, profitability, ROI, budget efficiency, genre performance, production-company performance, and release-year trends**.


## Final Business Message

> **CineInvest moves movie analysis beyond revenue reporting by combining Budget, Revenue, Profit, and ROI to provide a clearer view of investment efficiency and movie performance.**

# Key Features

- **End-to-End Data Analytics:** Covers data profiling, cleaning, validation, feature engineering, EDA, statistical analysis, SQL analysis, and Power BI reporting.
- **Investment Efficiency Analysis:** Combines Budget, Revenue, Profit, ROI, and Revenue-Budget Ratio to evaluate movie performance.
- **Feature Engineering:** Creates `Profit`, `ROI`, `Revenue_Budget_Ratio`, `Release_Year`, `Release_Season`, `Budget_Category`, and `Profitability_Category`.
- **Genre Performance Analysis:** Compares revenue performance across primary movie genres.
- **Budget Analysis:** Evaluates revenue performance across different budget categories.
- **Production Company Analysis:** Compares revenue contribution and movie volume across production companies.
- **Time-Series Analysis:** Tracks Revenue, Average ROI, and Movie Count by Release Year.
- **Budget vs Revenue Analysis:** Helps identify the relationship between movie investment and revenue generation.
- **Profitability Analysis:** Categorizes movies based on profitability and compares their distribution.
- **Interactive Power BI Dashboard:** Provides Overview, Trends, and Segments views with KPI cards, charts, slicers, filtering, drill-down, and navigation.
- **Business-Oriented KPIs:** Includes Movie Count, Total Revenue, Total Profit, Average ROI, and Revenue-Budget Ratio.

# Recommendations

- Evaluate **Budget, Revenue, Profit, and ROI together** before making movie investment decisions.
- Use **Budget vs Revenue** analysis to assess whether higher production spending is generating proportionally higher revenue.
- Compare genres using multiple financial indicators rather than relying only on total revenue.
- Evaluate production companies using revenue, profit, ROI, and movie volume together.
- Investigate unusually high or extreme ROI values before using them as investment benchmarks.
- Use release-year trends to understand changes in movie production and revenue performance.
- Use the interactive Power BI dashboard to compare specific production companies, budget categories, genres, and movie segments.
- Prioritize investment decisions based on **investment efficiency and profitability**, not revenue alone.

# Conclusion

CineInvest demonstrates how historical movie data can be transformed into a practical **movie investment efficiency and portfolio risk analytics solution**.

The project combines **Excel, SQL, Python, Pandas, and Power BI** to move from raw data through cleaning, validation, feature engineering, EDA, statistical analysis, KPI development, and interactive visualization.

The analysis shows that **revenue alone is not enough to evaluate movie investment success**. Budget, Profit, ROI, genre, production company, and release-year performance must be considered together.

The final Power BI dashboard provides three analytical perspectives:

> **Overview → Trends → Segments**

These views help decision-makers understand overall financial performance, identify changing trends, compare business segments, and evaluate investment efficiency.

Overall, CineInvest provides a structured, data-driven approach for supporting **movie investment evaluation, performance comparison, and risk-aware decision-making**.



# GitHub Repository

**CineInvest – Movie Investment Efficiency & Portfolio Risk Analytics System**

`https://github.com/SAINIKHILCHARY/Movie-Investment-Efficiency-Portfolio-Risk-Analytics-System`

# Author

**Madupu Sai Nikhil**

**Computer Science & Engineering**

**Areas:** Data Analytics | Python | SQL | Power BI | Excel
