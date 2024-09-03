
#Figure 4.11
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv", 
           sep=",", header=TRUE)
  
  fill_colors <- c() 
  for ( i in 1:length(hotdogs$New.record) ) { 
    if (hotdogs$New.record[i] == 1) { 
      fill_colors <- c(fill_colors, "#821122") 
    } else { 
      fill_colors <- c(fill_colors, "#cccccc") 
    } 
  } 
  
  barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors,main = "Nathan's Hot Dog Eating Contest Results 1980-2010",
          border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")
  
#Figure 4.22
  hot_dog_places <- read.csv('http://datasets.flowingdata.com/hot-dog-places.csv', 
              sep=",", header=TRUE)
  
  names(hot_dog_places) <- c("2000", "2001", "2002", "2003", "2004", 
                             "2005", "2006", "2007", "2008", "2009", "2010")
  
  hot_dog_matrix <- as.matrix(hot_dog_places)
  
  barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0, 200), 
          xlab="Year", ylab="Hot dogs and buns (HDBs) eaten", 
          main="Hot Dog Eating Contest Results, 1980-2010") 
  
  
#Figure 4.28
subscribers <- read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv", 
             sep=",", header=TRUE)
  
plot(subscribers$Subscribers)  
  
plot(subscribers$Subscribers, type="p", ylim=c(0, 30000))  

plot(subscribers$Subscribers, type="h", ylim=c(0, 30000), 
     xlab="Day", ylab="Subscribers") 
points(subscribers$Subscribers, pch=19, col="black")

#Figure 4.34

population <- read.csv("http://datasets.flowingdata.com/world-population.csv", 
           sep=",", header=TRUE)

plot(population$Year, population$Population, type="l", 
     ylim=c(0, 7000000000), xlab="Year", ylab="Population") 

#Figure 4.43
postage <- read.csv("http://datasets.flowingdata.com/us-postage.csv", sep=",", header=TRUE)

plot(postage$Year, postage$Price, type="s") 

plot(postage$Year, postage$Price, type="s", 
     main="US Postage Rates for Letters, First Ounce, 1991-2010", 
     xlab="Year", ylab="Postage Rate (Dollars)")


#part 2
# Load the data
art_data <- read.csv("path_to_your_art.csv")  # Replace with the actual path or use file.choose() if running interactively

# Set up the 2x2 plotting space
par(mfrow=c(2,2))

# Plot 1: Histogram of total.sale
hist(art_data$total.sale, 
     main="Histogram of Total Sales",
     xlab="Total Sales", 
     ylab="Frequency", 
     col="skyblue", 
     border="white")

# Plot 2: Density plot of total.sale
density_plot <- density(art_data$total.sale)
plot(density_plot, 
     main="Density Plot of Total Sales",
     xlab="Total Sales", 
     ylab="Density", 
     col="purple")

# Filtering data for drawing paper and watercolor paper
drawing_paper_sales <- art_data$total.sale[art_data$paper_type == "Drawing Paper"]  # adjust the condition based on your dataset
watercolor_paper_sales <- art_data$total.sale[art_data$paper_type == "Watercolor Paper"]  # adjust the condition based on your dataset

# Plot 3: Density plot for drawing paper
if (length(drawing_paper_sales) > 1) {
  plot(density(drawing_paper_sales), 
       main="Density of Total Sales for Drawing Paper",
       xlab="Total Sales", 
       ylab="Density", 
       col="red", 
       lwd=2)
} else {
  plot.new()
  title("Not enough data for Drawing Paper")
}

# Plot 4: Density plot for watercolor paper
if (length(watercolor_paper_sales) > 1) {
  plot(density(watercolor_paper_sales), 
       main="Density of Total Sales for Watercolor Paper",
       xlab="Total Sales", 
       ylab="Density", 
       col="blue", 
       lwd=2)
} else {
  plot.new()
  title("Not enough data for Watercolor Paper")
}




  
