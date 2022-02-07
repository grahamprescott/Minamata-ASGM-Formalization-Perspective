# Minamata-ASGM-Formalization-Perspective

This data and R code accompanies the following publication:

Prescott GW, Baird M, Geenen S, Nkuba B, Phelps J, Webb EL (2022) Formalizing Artisanal and Small-scale Gold Mining: a Grand Challenge of the Minamata Convention. OneEarth. 

Signatories to the Minamata Convention on Mercury with ‘more than insignificant’ artisanal and small-scale gold mining (ASGM) sectors are required to develop and implement National Action Plans (NAPs) to reform their ASGM sectors in line with Annexe C of the Convention. We compiled the budgets of available NAPs for reducing mercury emissions from ASGM sectors. As of 2021-12-31, these were available for 16 countries from: www.mercuryconvention.org/en/parties/national-action-plans. We used these data to estimate the approximate costs of expanding such approaches globally. 

File details:

NAP_budgets.csv 

Contains the budget details for all National Action Plans published by 2021-12-31 at https://www.mercuryconvention.org/en/parties/national-action-plans. Data entered and coded by Graham W. Prescott. 

Variables

1. Country
Factor with 16 levels. Burkina Faso, Burundi, Central African Republic, Democratic Republic of Congo, Ecuador, Guinea, Lao People’s Democratic Republic, Madagascar, Mali, Mongolia, Nigeria, Republic of Congo, Senegal, Sierra Leone, Uganda, Zimbabwe. 

2. Code
Factor with 8 levels. Codes assigned by Graham W. Prescott to make strategies in the published NAPs comparable. Codes correspond to items in Annexe C of the Minamata Convention (https://www.mercuryconvention.org/en/about/convention-text). 
Levels: 
- Education and Awareness [‘(j) Strategies for providing information to artisanal and small-scale gold miners and affected communities’]
- Formalization [‘(c) Steps to facilitate the formalization or regulation of the artisanal and small-scale gold mining sector’]
- Market-based Mechanisms [‘2. Each Party may include in its national action plan additional strategies to achieve its objectives, including the use or introduction of standards for mercury-free artisanal and small-scale gold mining and market-based mechanisms or marketing tools’]
- Mercury Trade Control [‘(f) Strategies for managing trade and preventing the diversion of mercury and mercury compounds from both foreign and domestic sources to use in artisanal and small scale gold mining and processing’]
- Mining Practice Reform [‘(b) Actions to eliminate: I) Whole ore amalgamation; ii) Open burning of amalgam or processed amalgam; iii) Burning of amalgam in residential areas; and iv) Cyanide leaching in sediment, ore or tailings to which mercury has been added without first removing the mercury’, ‘(d) Baseline estimates of the quantities of mercury used and the practices employed in artisanal and small-scale gold mining and processing within its territory’, ‘(e) Strategies for promoting the reduction of emissions and releases of, and exposure to, mercury in artisanal and small-scale gold mining and processing, including mercury-free methods’, and any general monitoring and enforcement measures]
- NAP Management [‘(g) Strategies for involving stakeholders in the implementation and continuing development of the national action plan’]
- Protecting Vulnerable Populations [‘(i) Strategies to prevent the exposure of vulnerable populations, particularly children and women of child-bearing age, especially pregnant women, to mercury used in artisanal and small-scale gold mining’]
- Public Health [‘(h) A public health strategy on the exposure of artisanal and small-scale gold miners and their communities to mercury. Such a strategy should include, inter alia, the gathering of health data, training for health-care workers and awareness-raising through health facilities’]

3. Strategy
Reported strategy in the NAP, copied directly from original NAP. 

4. Item
Reported budget item in the NAP, copied directly from original NAP.

5. Cost_Original
Reported cost of each budget, copied directly from original NAP, in the original currency. 

6. Currency
Currency used in the NAP budget. All NAPs reported in USD, except except Mongolia (Mongolia Tugrik, MNT), Senegal (CFA Franc, XOF), Republic of Congo (CFA Franc, XAF). 

7. Conversion
Exchange rate used to convert non-USD currencies into USD. We converted all costs to USD using the 2021-12-31 conversion rates provided by the US Treasury Department (https://fiscaldata.treasury.gov/datasets/treasury-reporting-rates-exchange/treasury-reporting-rates-of-exchange): 1 USD = 2848.63 MNT, 1 USD = 581.84 XOF, 1 USD = 581.84 XAF. 

8. Cost_USD
Cost in USD. See ‘Conversion’ for exchange rates. 

9. NAP_Language 
Factor with 2 levels. Language the NAP was written in. Levels: English (EN), French (FR). 

