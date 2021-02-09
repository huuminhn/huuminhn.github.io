# Portfolio

---
## Tableau Visualization: 

Video Game Production and Consumption: Japan vs. North America  
https://public.tableau.com/profile/minh.nguyen1290#!/vizhome/Video_Game_Sales_16081465148140/Dashboard1

<img src="VideoGame.png?raw=true"/>

## Python
--- 

### [Airline Demand Forecast](https://github.com/huuminhn/Airline_Demand_Forecast)  
**Purpose of this project is Prediction:**  
Apply booking pattern estimated from training data into validation data.      
Compute final demand forecasts for 7 departure dates and days.  

**Data Description:**    
*Three variables:*  
Departure date  
Booking date  
Cumulative bookings  

*Training Data*  
84 departure dates  
61 days prior (days prior=0,1,…,60)  

*Validation Data*  
7 departure dates (7/25~7/31)  
29 days prior (days prior=0,1,…,28)  

**Modelling ( Naïve forecast):**    
Additive model:  
Forecast = Forecasts for remaining demand + on-the-book  

Multiplicative Model:  
Forecast = on-the-book/(historical booking rate for given days prior)  

Model Evaluation based on *Mean Absolute Scaled Error (MASE)*:  
(Total absolute error of model) / (Total absolute error of Naive Forecasts)  

---
### [Passenger Choice Behaviour](https://github.com/huuminhn/Passenger_Choice_Behaviour)
<img src="Airports.png?raw=true"/>

---
[Project 3 Title](http://www.google.com/)
<img src="images/dummy_thumbnail.jpg?raw=true"/>

---

### Category Name 2

- [Project 1 Title](https://github.com/huuminhn/Credit_Fraud_R)
- [Project 2 Title](http://example.com/)
- [Project 3 Title](http://example.com/)
- [Project 4 Title](http://example.com/)
- [Project 5 Title](http://example.com/)

---
## R
---

### [Credit Card Fraud](https://github.com/huuminhn/Credit_Fraud_R)
**Purpose**:  
Predict any credit fraudulent based on each transaction characteristics.
This including but not limited to the information of the customers.

**Model Building**:   
*Logistic Regression*: Variable selection using backward method. The ROC curve can be illustrated as:    
<img src="Rplot_ROC.png?raw=true"/>

*Decision Tree*: The tree model can be illustrated as:  
<img src="Rplot_Tree.png?raw=true"/>

**Key Findings**:  
The confusion matrix of both models were similar.  
Decision Tree perform *slightly better* than Logistic Regression Model, at 99.906% and 99.9% respectively.  
However, this is an *insignificant* difference between the two.

---

## SQL Database:

### [Database Design: A Flower Shop Project](https://github.com/huuminhn/SQL_Data_Base_Design_Flower_Shop)
**Description**: This is a team project that design a database for a local flower store to optimize the business operation. The process involve data entry, ETL and applying queries as demanded. The data has to be inputted manually by the team members, then create 12 SQL queries to match with the demand of the flower botique owners, and they can be found in my github page, along with a bigger version of the ER diagram below.  
The ER diagram of the flower shop illustrated through **MySQL Workbench**:  
<img src="Flower_ER.png?raw=true"/>
<p style="font-size:11px">Page template forked from <a href="https://github.com/evanca/quick-portfolio">evanca</a></p>
<!-- Remove above link if you don't want to attibute -->
