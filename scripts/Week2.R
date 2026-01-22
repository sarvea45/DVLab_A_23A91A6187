# Load Air Passengers
data(AirPassengers)

#Verify the Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

# Convert the dataset to a dataframe
ap_df<- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

# Data Frame with years and months Seperately
ap_df_months <- data.frame(
  year=floor(time(AirPassengers)),
  month= cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

plot(AirPassengers)

plot(AirPassengers,
     type='l',
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="No.of passengers",
     col="red"
)

plot(AirPassengers,
     type='l',
     lwd=1.5,
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="No.of passengers",
     col="red"
)
points(AirPassengers,
       type='o',
       pch='16',
       col="blue")
grid()
#Using the GGPLOT2 Library
library(ggplot2)
ggplot(ap_df,aes(x=year,y = passengers))+
  geom_line(color="darkgreen",linewidth=0.5)+
  labs(title = "Trend Analysis of Air Passengers",
       subtitle = "From 1949-1960",
       caption="Using Built-in Air Passenger Dataset",
       x='Months',
       y='No.of Passengers')+
  geom_point(color='red',size=0.5)+
  geom_smooth(se = FALSE,color='orange')+
  theme_minimal()+
  theme(
    plot.title = element_text(face='bold',size = 14),
    plot.subtitle = element_text(size = 10)
  )