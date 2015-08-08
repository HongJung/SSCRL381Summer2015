theURL <- "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table(file = theURL, header = TRUE, sep = ",")
head(tomato)
save(tomato, file="tomato.rdata")
rm(tomato)
head(tomato)
load("tomato.rdata")
head(tomato)

n <- 20
r <- 1:10
w <- data.frame(n,r)
w

save(n,r,w,file="multiple.rdata")
rm(TOMATO)
rm(n,r,w)
n
r
w

load("multiple.rdata")
n
w
r

require(ggplot2)
data(diamonds)
head(diamonds)

require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringAsFactors = FALSE)
install.packages("XML")


bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringAsFactors = FALSE)
bowlPool
