# 📊 Financial Performance Analysis — Multi-Sector Public Companies (2009–2023)

> EDA & SQL Bootcamp Project · Data Science & Machine Learning Program

## 📌 Project Overview

This project performs a structured Exploratory Data Analysis (EDA) on annual financial data for **12 major publicly listed companies** across **8 industry sectors**, covering fiscal years **2009 to 2023**.

The goal is to uncover patterns in profitability, efficiency, growth, liquidity, and workforce metrics using a combination of **Python**, **SQL**, and **Tableau**.

---

## 🗂️ Repository Structure

```
financial-analysis/
│
├── Financial Statements.csv        # Raw dataset (source: Kaggle)
├── financial_statements.db         # SQLite database (loaded from CSV)
├── project.ipynb                   # Main Jupyter Notebook (EDA + SQL upload)
├── financial_analysis.sql          # SQL queries for all 10 business questions
├── Financial_Analysis_Report.pdf   # Full written report
└── README.md
```

---

## 📦 Dataset

| Attribute        | Value                                                              |
|------------------|--------------------------------------------------------------------|
| **Source**       | [Kaggle — Financial Statements](https://www.kaggle.com/)           |
| **Rows**         | 161 (annual records per company)                                   |
| **Columns**      | 23 (financial metrics + contextual variables)                      |
| **Companies**    | AAPL, MSFT, GOOG, AMZN, NVDA, INTC, AIG, BCS, PYPL, SHLDQ, MCD, PCG |
| **Sectors**      | IT, ELEC, BANK, FINTECH, FOOD, FINANCE, LOGI, MANUFACTURING       |
| **Time Period**  | 2009 – 2023 (14 years)                                             |

### Key Variables

`Revenue` · `Net Income` · `EBITDA` · `Net Profit Margin` · `ROE` · `ROA` · `ROI` · `Debt/Equity Ratio` · `Current Ratio` · `Cash Flow from Operating` · `Market Cap (B USD)` · `Number of Employees` · `Inflation Rate (US)`

---

## 🧹 Data Cleaning

- Renamed `'Company '` (trailing whitespace) → `'Company'`
- Standardized `Category` to uppercase: `'Bank'` → `'BANK'`, `'FinTech'` → `'FINTECH'`
- 1 missing value in `Market Cap (in B USD)` — retained as `NaN` (does not affect core metrics)
- No duplicate rows detected
- All financial figures in **millions of USD** (Market Cap in billions)

---

## ❓ Business Questions

The analysis answers 10 pre-defined business questions, grouped by theme:

### 📈 Profitability
| # | Question |
|---|----------|
| 1 | Which company has the highest average **Net Profit Margin** (2009–2023)? |
| 2 | How has **EBITDA** evolved for each company over time? |
| 3 | Which **sector** is most profitable by average **ROE**? |

### ⚙️ Efficiency
| # | Question |
|---|----------|
| 4 | Is there a correlation between **Revenue** and **Net Income** by sector? |
| 5 | Which company has the best **ROA** — generating more profit with fewer assets? |

### 🚀 Growth
| # | Question |
|---|----------|
| 6 | Which company has grown the most in **Market Cap** between 2009 and 2023? |
| 7 | Has **US inflation** impacted Net Profit Margin over time? |

### 💧 Liquidity & Debt
| # | Question |
|---|----------|
| 8 | Which companies have a concerning **Debt/Equity Ratio** (> 2)? |
| 9 | Which company generates the most **Operating Cash Flow** relative to Revenue? |

### 👥 Workforce
| # | Question |
|---|----------|
| 10 | Is there a relationship between **number of employees** and Revenue per company? |

---

## 🛠️ Tools & Libraries

| Tool | Purpose |
|------|---------|
| `pandas` | Data loading, cleaning, and manipulation |
| `numpy` | Numerical operations |
| `matplotlib` | Static visualizations (histograms, bar charts, line charts) |
| `seaborn` | Statistical plots (boxplots, scatter plots) |
| `sqlite3` | SQL database creation and querying |
| `Tableau` | Interactive dashboards |

---

## 📊 Key Findings (Summary)

- **AAPL** and **NVDA** consistently lead in Net Profit Margin across the IT and ELEC sectors.
- **IT sector** (AAPL, MSFT, GOOG) shows the highest average ROE and most stable profitability.
- **NVDA** recorded the highest Market Cap growth (~10,000%) driven by the AI boom.
- **SHLDQ** and **PCG** show negative margins during crisis years, pulling sector averages down.
- **AMZN** (LOGI) maintains low profit margins despite massive revenue, prioritizing growth over profitability.
- **AIG** and **BCS** exceed the Debt/Equity risk threshold of 2.0 in multiple years.
- **AAPL** and **MSFT** lead in Operating Cash Flow efficiency relative to Revenue.
- US inflation spikes (2021–2022) show a mild negative correlation with average Net Profit Margin.

---

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/financial-analysis.git
cd financial-analysis
```

### 2. Install dependencies

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### 3. Run the notebook

```bash
jupyter notebook project.ipynb
```

### 4. Run SQL queries

Open `financial_analysis.sql` in any SQLite client, or query the included `financial_statements.db` directly:

```bash
sqlite3 financial_statements.db
```

---

## 📄 Report

The full written report is available in [`Financial_Analysis_Report.pdf`](./Financial_Analysis_Report.pdf), covering dataset overview, data cleaning steps, descriptive statistics, and structured answers to all 10 business questions.

---

## 👤 Author

Daniel Fernández Fernández  
Data Science & ML Bootcamp  
