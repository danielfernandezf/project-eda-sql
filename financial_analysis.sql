
-- ============================================================
-- FINANCIAL STATEMENTS ANALYSIS (2009-2023)
-- EDA & SQL Bootcamp Project
-- ============================================================

-- P1: Which company has the highest average Net Profit Margin?
SELECT 
    Company,
    Category,
    ROUND(AVG("Net Profit Margin"), 2) AS avg_net_profit_margin
FROM financials
GROUP BY Company
ORDER BY avg_net_profit_margin DESC;

-- P2: How has EBITDA evolved for each company over time?
SELECT 
    Year,
    Company,
    ROUND(EBITDA, 2) AS ebitda
FROM financials
ORDER BY Company, Year;

-- P3: Which sector is most profitable measured by average ROE?
SELECT 
    Category,
    ROUND(AVG(ROE), 2) AS avg_roe,
    ROUND(AVG("Net Profit Margin"), 2) AS avg_net_profit_margin
FROM financials
GROUP BY Category
ORDER BY avg_roe DESC;

-- P4: Is there a correlation between Revenue and Net Income?
SELECT 
    Company,
    Category,
    ROUND(AVG(Revenue), 2) AS avg_revenue,
    ROUND(AVG("Net Income"), 2) AS avg_net_income,
    ROUND(AVG("Net Income") / AVG(Revenue) * 100, 2) AS efficiency_pct
FROM financials
GROUP BY Company
ORDER BY efficiency_pct DESC;

-- P5: Which company has the best ROA?
SELECT 
    Company,
    Category,
    ROUND(AVG(ROA), 2) AS avg_roa
FROM financials
GROUP BY Company
ORDER BY avg_roa DESC;

-- P6: Which company has grown the most in Market Cap?
SELECT 
    Company,
    ROUND(MIN("Market Cap(in B USD)"), 2) AS market_cap_start,
    ROUND(MAX("Market Cap(in B USD)"), 2) AS market_cap_end,
    ROUND(MAX("Market Cap(in B USD)") - MIN("Market Cap(in B USD)"), 2) AS absolute_growth,
    ROUND((MAX("Market Cap(in B USD)") - MIN("Market Cap(in B USD)")) 
          / MIN("Market Cap(in B USD)") * 100, 2) AS growth_pct
FROM financials
GROUP BY Company
ORDER BY growth_pct DESC;

-- P7: Has US inflation impacted Net Profit Margin over time?
SELECT 
    Year,
    ROUND(AVG("Inflation Rate(in US)"), 2) AS inflation_rate,
    ROUND(AVG("Net Profit Margin"), 2) AS avg_net_profit_margin
FROM financials
GROUP BY Year
ORDER BY Year;

-- P8: Which companies have a concerning Debt/Equity Ratio (> 2)?
SELECT 
    Company,
    Category,
    Year,
    ROUND("Debt/Equity Ratio", 2) AS debt_equity_ratio
FROM financials
WHERE "Debt/Equity Ratio" > 2
ORDER BY "Debt/Equity Ratio" DESC;

-- P9: Which company generates the most Operating Cash Flow 
--     relative to its Revenue?
SELECT 
    Company,
    Category,
    ROUND(AVG("Cash Flow from Operating"), 2) AS avg_operating_cf,
    ROUND(AVG(Revenue), 2) AS avg_revenue,
    ROUND(AVG("Cash Flow from Operating") / AVG(Revenue) * 100, 2) AS cf_to_revenue_pct
FROM financials
GROUP BY Company
ORDER BY cf_to_revenue_pct DESC;

-- P10: Is there a relationship between employees and Revenue?
SELECT 
    Company,
    Category,
    ROUND(AVG("Number of Employees"), 0) AS avg_employees,
    ROUND(AVG(Revenue), 2) AS avg_revenue,
    ROUND(AVG(Revenue) / AVG("Number of Employees"), 2) AS revenue_per_employee
FROM financials
GROUP BY Company
ORDER BY revenue_per_employee DESC;
