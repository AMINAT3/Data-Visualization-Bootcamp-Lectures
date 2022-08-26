library("ggplot2")

df_real_estate <- read.csv("C:/Users/Zachary_B/Desktop/data sci bootcamp/Data Visualization/data set/histogram_data.csv",
                            header = TRUE,
                            sep = ",")
hist <- ggplot(df_real_estate,
               aes(x = Price)) + 
        geom_histogram(bins = 8,
                       fill = "#108A99",
                       color = "white") +
        theme_classic() +
        ggtitle("Distribution of Real Estate Prices") +
        xlab("price in(000' $)") +
        ylab("Number of Properties") +
        theme(plot.title = element_text(size =16,
                                       face = "bold"))
hist
