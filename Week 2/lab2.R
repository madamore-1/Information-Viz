getwd()


choose.dir()


my.dir <- choose.dir()
my.dir<- 'C:/Users/madamore/OneDrive - Syracuse University/Documents'
list.files()

fname <- paste0(my.dir, '/tips.csv')

read.csv(fname)


paste("IST", "719", '!')
paste0("IST", "719", '!')

paste("IST", "719", '!', sep ='-')


tips <- read.csv(fname, header = T, stringsAsFactors = F)

View(tips)


dim(tips)
class(tips)
colnames(tips)
str(tips)


fname2 <- 'C:/Users/madamore/OneDrive - Syracuse University/Documents/wine.txt'
wine <- read.delim(fname2, header = T, sep ="\t")


dim(wine)
class(wine)
colnames(wine)
str(wine)



junkdata <- list("A", "B", "1")

save(junkdata,file='C:/Users/madamore/OneDrive - Syracuse University/Documents/junkdata.Rda')

dir()





head(tips)
tail(tips)
tips[1,]

tips[1:3]

tips[,1:2]


plot(tips$tip, main = "dist of the tip")

plot(sort(tips$tip), main = 'sorted dist of the tip')
hist(tips$tip)
plot(density(tips$tip))#proability
boxplot(tips$tip)
summary(tips$tip)

par(mfrow= c(2,1))

hist(f.tips, main = 'female tips')
hist(m.tips, main = 'male tips')
unique(tips$sex)
f.tips <- tips$tip[tips$sex=="Female"]
m.tips <- tips$tip[tips$sex=="Male"]




hist(f.tips, main = 'female tips' ,ylim = c(0,50), xlim = c(0,12), breaks = 15)
abline(v=median(f.tips), col='red', lwd=2)

hist(m.tips, main = 'male tips',ylim = c(0,50), xlim = c(0,12), breaks = 15)
     abline(v=median(m.tips), col='red', lwd=2)




