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

# Deloiverable 2: Create Visualizations for the Trip Analysis

suspension_coil <- read.csv('./Resources/Suspension_Coil.csv',stringsAsFactors = F)

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils

# t.test for all manufacturing lots
t.test(suspension_coil$PSI ,mu= 1500)

# t.test for individual lots
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu= 1500)

t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu= 1500)

t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu= 1500)



