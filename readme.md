✈️ SkyRoutes Profit Lab: Identifying Profitable Airline Routes
📌 Project Type: Business Intelligence Case Study
📁 Files Involved:

SkyRoutesAnalysis.sql

AirlineRoutesData.xlsx

SkyRoutes_Query_Results.xlsx

SkyRoutes_Dashboard.pbix

SkyRoutes_Conclusion_Report.docx

👨‍💻 Analyst: Dev Surana
⏱️ Time Taken: ~6–7 hours

SQL: 2h | Excel Validation: 1h | Power BI: 2.5h | Documentation: 1.5h

🛠️ Tools Used:

MySQL 🐬

Power BI 📊

Excel 📋

📂 Project Overview
The objective of this project was to help SkyRoutes Airlines identify highly profitable routes and detect loss-making segments using a data-driven approach.
This was accomplished by analyzing flight-level revenue, costs, occupancy, and duration data from airline operations.

📊 Core SQL Analysis Summary (SkyRoutesAnalysis.sql)
1. 🛫 Top 10 Most Frequent Routes
High-frequency domestic routes: DEL-BOM, BLR-HYD, DEL-KOL.

2. 💰 Revenue vs Cost Analysis
Some high-revenue routes had minimal margins due to high costs.

3. ⚠️ Underperforming Routes
Negative-profit routes were flagged for reevaluation.

4. 💺 Occupancy Rate
Average across all routes: ~X%. Below 60% indicates poor demand.

5. 📈 Monthly Profit Trend
Seasonal peaks seen in travel-heavy months; dips in monsoons.

6. 🌍 Domestic vs International

Domestic: Consistent, smaller margins

International: Fewer but higher-margin flights

7. ⏱️ Revenue per Minute
Short-haul (<90 mins) routes delivered best revenue efficiency.

📌 Power BI Dashboard Highlights
✅ Bar Chart – Top 10 profitable routes
✅ Map Visualization – Route patterns by geography
✅ Line Graph – Monthly route profitability
✅ Gauge Chart – Average seat occupancy
✅ Stacked Columns – Cost vs Revenue by route

🔍 Interactive Filters:

Aircraft Type

Month

Route Code

🖼️ 📷 Dashboard Preview

![Dashboard Screenshot](images/dashboard.png)

📑 Key Recommendations
✔️ Discontinue or optimize consistently unprofitable routes
✔️ Promote routes with low occupancy but latent potential
✔️ Prioritize short-haul routes with better revenue/min ratios
✔️ Match aircraft type efficiently with route category

📦 Folder Structure
bash
Copy
Edit
SkyRoutes_Project/
├── SkyRoutesAnalysis.sql
├── AirlineRoutesData.xlsx
├── SkyRoutes_Query_Results.xlsx
├── SkyRoutes_Dashboard.pbix
└── SkyRoutes_Conclusion_Report.docx
📌 Summary Metrics
Metric	Value (Approx.)
Avg. Occupancy Rate	~X%
Top Revenue Route	DEL-BOM
Avg. Revenue per Route	₹xxx,xxx
Avg. Cost per Route	₹yyy,yyy
Routes with Loss	~12% of total
Highest Revenue/Minute Route	XXX

💡 Future Scope
Integrate weather/fuel cost variables for deeper insights

Predictive modeling using Python/R

Live dashboards for real-time monitoring