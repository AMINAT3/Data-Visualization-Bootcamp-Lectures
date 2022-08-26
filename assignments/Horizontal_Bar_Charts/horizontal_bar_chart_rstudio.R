library("ggplot2")

df_used_cars <- read.csv("C:/Users/Zachary_B/Desktop/data sci bootcamp/Data Visualization/data set/bar_chart_data.csv",
                         header = TRUE,
                         sep = ",")
bar_chart <- ggplot(df_used_cars) +
                    aes(x = Brand,
                        y = Cars.Listings) +
                    coord_flip() +
                    geom_bar(stat = "identity", 
                             width = NULL,
                             color = "#009999",
                             fill = "#009999") +
             ggtitle("Cars Listings by Brand") +
             labs(x = NULL, 
                  y = "Numbers of Listings")
bar_chart
