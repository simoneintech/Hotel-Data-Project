# Hotel Revenue Analysis


## Overview

This project delves into an in-depth analysis of hotel revenue data from the "Hotel-Revenue-Porject" database, covering a three-year span ('2018$', '2019$', '2020$'). The primary objective is to scrutinize the growth patterns in hotel revenue over time, considering various factors such as hotel types, market segments, and meal costs.

# Data Preparation
The initial step involves consolidating the data from individual year tables ('2018$', '2019$', '2020$') into a temporary table named "HotelsData." This amalgamation streamlines subsequent analyses by providing a unified dataset.

# Revenue Growth Analysis
To discern patterns of revenue growth over the years, a comprehensive assessment is conducted. The total revenue is calculated by multiplying the sum of stays (week nights and weekend nights) by the average daily rate (adr). This step allows us to evaluate whether there is a consistent increase or decrease in revenue across the specified time frame.

# Revenue Breakdown by Hotel Type
Building upon the general revenue growth analysis, a deeper understanding is sought by categorizing revenue according to hotel types—City Hotel and Resort Hotel. This granular breakdown enables us to identify trends specific to each hotel type, providing valuable insights into their respective performances.

# Revenue Analysis with Additional Factors
Expanding the analysis, the revenue breakdown is further enriched by incorporating additional factors, namely market segment and meal cost. By joining the "market_segment$" and "meal_cost$" tables, the analysis gains nuance, revealing the impact of these factors on overall revenue trends. This step helps identify which market segments and meal plans contribute significantly to the revenue.

# Final Analysis Note
Through the exploration of hotel revenue data, it is revealed that City Hotel experienced revenue growth from 2018-2019, followed by a decline from 2019-2020. Meanwhile, Resort Hotel exhibited a similar trend. These findings offer valuable insights into the financial trajectories of each hotel type, facilitating informed decision-making for future business strategies.


