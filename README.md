# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Multiple linear regression model was fitted to predict the mpg of Mechacar prototypes using varibales from our data source MechaCar_mpg.csv.

![MechaCar_png](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/MechaCar_mpg.png)

In addition to overall model fit, statistical metrics using the **summary()** function are given below.

![summary_mpg](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/summary_mpg.png)

According to the summary output, **vehicle_length** and **ground_clearance** statistically provided non-random amounts of variance to the linear model as the p-values for both of them are much smaller than the assumed significance level of 0.05. However, vehicle weight, spoiler angle, and AWD provided random amounts of variance to the mpg values.

The slope of the linear model cannot be considered 0 because the p-value of the linear model is 5.35e-11, which is also much smaller than the assumed significance level of 0.05.

From the above results, it can be said that the model does effectively predict the mpg of MechaCar prototypes. Since the r-squared value for this linear model is 0.7149 meaning that roughly 70% of the variability of the mpg can be explained by it while the p-value remained much smaller.

## Summary Statistics on Suspension Coils

The current manufacturing data meet the design specification that dictate the variance of the suspension coils must not exceed 100 pounds per square inch(PSI) across all manfucaturing lots when they are calculated together. However, when calculating by individual manufacturing lots, lot 3 does not meet the design spefication because the variance is 170.29.

Total summary table

![Total_Summary](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)

Lot summary table

![Lot_summary](https://github.com/Nusratnimme/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)
