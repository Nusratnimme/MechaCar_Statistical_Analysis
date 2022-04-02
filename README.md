# Analyses of MechaCar Prototype

## Purpose
We have data on a number of varibles on AutosRUs' newest prototype, MechaCar. We have a:
- table containing data on weight, length, ground clearance, spoiler angle, AWD (binary), and mpg of vehicles; and 
- another table on pounds per square inch (PSI) of the suspension coils of vehicles from different manufacturing lots.

The purposes of the analyses are:
- to use regression to identify which factors can predict mpg of MechaCar prototypes;
- to produce summary statistics on the PSI of the suspension coils from the manufacturing lots;
- to conduct t-tests to determine if the manufacturing lots are statistically different from the mean population.

## Linear Regression to Predict MPG

Multiple linear regression model was fitted to predict the mpg of Mechacar prototypes. The dependent variables can be seen in the image below.

![MechaCar_png](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/MechaCar_mpg.png)

The **summary()** function returns below statistics which measure the overall fit (**R-squared**) as well as the level of significance (**pr(>|t|)**) of each of the explanatory variable.

![summary_mpg](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/summary_mpg.png)

- According to our data, **vehicle_length** and **ground_clearance** are statistically significant in providing non-random variance to mpg as the corresponding p-values are both less than even 0.001. In other words, these two variables are statistically significant predictors of mpg.

- On the other hand, **vehicle weight**, **spoiler angle**, and **AWD** are not siginificant predictors of mpg as can be concluded from their large p-values (>0.05).

- It should be noted that the **intercept** of the fitted model is also statistically significant. However, considering practical scenario, we can ignore it (the intercept estimates mpg of a vehicle with zero length, weight, etc. and is of no practical use therefore). 

- The R-squared statistic for the fitted model is 0.71 meaning that roughly 71% of the variability of the mpg can be explained by the model which is overall statistically significant (p-value of **5.35e-11**).

From the above results, it can be said that the model did a fairly good job in predicting the mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

- The data indicate that the design specification that the variance of the suspension coils must not exceed 100 pounds PSI across all manfucaturing lots is met (**62.3**).
 
_Total summary table_

![Total_Summary](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)

- However, when calculated by individual manufacturing lots, lot-3 fails to meet the criteria (**170.29**) although lot-1 and lot-2 do meet it (**0.98** and **7.47**, respectively).

_Lot summary table_

![Lot_summary](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

## T-Tests on Suspension Coils

- Results of t-test on suspension coils PSI with null hypothesis that the true mean is equal to 1500 indicate that we don't have any evidence from the data to reject this hypothesis at a level of significance of 0.05. In other words, our data suggest that the **true mean is indeed 1500 PSI**.

![Overall_t.test](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Overall_t.test.png)

- However, when the test is conducted by lot, we see wide variability in the result in terms of level of sigificance. While the **null hypothesis (true mean = 1500 PSI) cannot be rejected for lot-1 and lot-2**, we can reject it for lot-3 at 0.05 level of significance. In other words, this suggest that the **true mean PSI for suspension coils from lot-3 is not equal to 1500**.

_Lot-1_
![Lot1_t.test](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_t.test.png)

_Lot-2_
![Lot2_t.test](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_t.test.png)

_Lot-3_
![Lot3_t.test](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_t.test.png)

