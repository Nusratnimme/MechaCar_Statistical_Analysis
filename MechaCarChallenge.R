# Deliverable 1: Linear Regression to Predict MPG

library(dplyr)
MechaCar_mpg <- read.csv('./Resources/MechaCar_mpg.csv',stringsAsFactors = F)
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

# Additional Scatter plots for 'vehicle_length' and 'ground_clearance' against 'mpg'
plt <- ggplot(MechaCar_mpg,aes(x=vehicle_length,y=mpg))
plt + geom_point()

plt <- ggplot(MechaCar_mpg,aes(x=ground_clearance,y=mpg))
plt + geom_point()
