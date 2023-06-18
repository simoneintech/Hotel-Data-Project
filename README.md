# Hotel-Data-Project


## In this repo:

I have used SQL Server to answer the question "Is our revenue growing by year?"

# First,

- I started started with union to combine all of the tables together, that were seperated by year.<br />
- I then analyze my data. I look at what data I have available, in order to answer this question. I <br />
- noticed that there's no revenue table. So I know need to create one.

# Secondly, 

- To calculate the revenue, I used the select statement <strong>select (stays_in_week_nights+stays_in_weekend_nights)*adr 
as Revenue from HotelsData </strong> <br />
- in order to multiply the daily rates (ADR) by the stays.

# Next,

- After, I broke this down into specific hotel types. Seperarting revenue for each hotel. 
- I used order by 1,2 to group each hotel type together based on year.

# Then,

- I was able to infer that the hotel has lost profit from the years
2019=2020 but had a major profit gain during 2018-2019

# Lastly,

- I continued my analysis in Tableau
