
#Choose F
Original_f <- file.choose()

#Read
Reasons <-  read.csv(Original_f)

(Reasons)
#Select 
data <- Reasons$Reasons
#Create table
reason_table <- table(data)
reason_table


p.1 <- barplot(sort(reason_table,decreasing = T),
        main ="reasons to take IST 719",
        xlab = 'reasons',
        ylab = 'count',
        col = 'red')
sort(reason_table)



plot(c(5,7,9,4,5))
plot(c(5,7,9,4,5),pch = 49)

#Sctr plt w/ diff plt chars
p.2 <- plot(c(5,7,9,4,5),pch = c(1,2,3,4,5),
     cex =c(3,2,3,4,5), col = c("orange", 'blue'))

#3rd plt
plot(c(5,7,9,4,5), type = 'l') #line plt
plot(c(5,7,9,4,5), type = 'h') #hist
plot(c(5,7,9,4,5), type = 's') #step plt


p.3 <- plot(c(5,7,9,4,5), type = 'h',
     lwd =10,
     lend =0,
     col = "orange",
     ylim = c(0,10),
     xlab = "this is the x-axis",
     ylab = 'this is the y-axis',
     main = 'this is a hist graph') #hist

n <- 27
#letters[4:6]
my.lets <- sample(letters[4:6], size =n, replace=T)
#take a sample of size n=27 for a letter of 4:6 and replace 
barplot(my.lets)
#barplots dont take characters

my.table <- table(my.lets)
#make the sample into a table

p.4 <- barplot(my.table,
        col = "orange",
        xlab = "this is the x-axis",
        ylab = 'this is the y-axis',
        main = 'this is a barplot of letters D E F',
        border = F)
#5th plot 
n <- 1000
x <- rnorm(n=n, mean =72, sd = 12)
y <- runif(n=n, min =42, max = 92)

plot(x, y, main = 'sctr plt of x and y')
p.5 <- boxplot(y, horizontal = T,col = 'purple')


pdf("multiple_plots1.pdf", width = 8, height = 6)

dev.off()

p.1
p.2
p.3
p.4
p.5

par(mfrow= c(2,3))


        
        
        