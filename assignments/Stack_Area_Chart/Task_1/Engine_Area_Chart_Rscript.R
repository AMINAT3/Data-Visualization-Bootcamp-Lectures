library("ggplot2")
library("dplyr")
library("reshape2")

df_engine_types <- read.csv("C:/Users/Zachary_B/Desktop/data sci bootcamp/Data Visualization/data set/stacked_area_chart_data.csv",
                            header = TRUE,
                            sep = ",")
new_engine_types <- melt(df_engine_types, id.vars = "Year")
area_chart <- ggplot (new_engine_types,
                      aes(x = Year,
                          y = value,
                          fill = variable)) +
                      geom_area() +
               scale_fill_manual(values = c("#97FFFF",
                                            "#00CED1",
                                            "#528B8B",
                                            "#00688B")) +
               theme_classic() +
               theme(legend.justification = c(0.01, 1), 
                     legend.position = c(0.01, 1)) +
               labs(fill = "Engine Type") +
               ylab("Number of Cars") +
               ggtitle("Popularity of Engine Fuel Types (1982 - 2016)") +
               theme(axis.text.x = element_text(angle = 90,
                                                vjust = 0.5)) +
               scale_x_continuous(breaks = new_engine_types$Year)
area_chart


