require(ggplot2)
data("diamonds")
head(diamonds)
hist(diamonds$carat, xlab = "Carat")


plot(price ~ carat, data = diamonds)
plot(diamonds$carat, diamonds$price)


boxplot(diamonds$carat)

ggplot(data = diamonds) + geom_histogram(aes(x = carat))
ggplot(data = diamonds) + geom_histogram(aes(x = carat)) + facet_wrap(~color)

ggplot(data = diamonds) + geom_density(aes(x = carat))
ggplot(data = diamonds) + geom_density(aes(x = carat),fill = "grey50")

ggplot(diamonds) + geom_histogram(aes(x = carat))
ggplot(data = diamonds) + geom_density(aes(x = carat,fill = "brey50"))

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price))

g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point()
g + geom_point(aes(color = color))

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price, color = color))

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price, color = "blue"))
ggplot(data = diamonds) + geom_point(aes(x = carat, y = price), color = "blue")

g + geom_point(aes(color = color)) + facet_wrap(~color)
g + geom_point(aes(color = color)) + facet_grid(cut ~ clarity)

ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_wrap(~color)

ggplot(diamonds, aes(y = carat, x =1)) + geom_boxplot()

ggplot(diamonds, aes(y = carat, x =cut)) + geom_boxplot()

ggplot(diamonds, aes(y = carat, x =cut)) + geom_violin()

ggplot(diamonds, aes(y = carat, x =cut)) + geom_point() + geom_violin()
ggplot(diamonds, aes(y = carat, x =cut)) + geom_violin() + geom_point()

head(economics)

head(economics)
ggplot(economics, aes(x = date, y = pop)) + geom_line()

install.packages("lubridate")
require(lubridate)

economics$date

economics$year <- year(economics$date)
economics$year

economics$month <- month(economics$date, label = TRUE)
economics$month

econ2000 <- economics[which(economics$year >= 2000), ]

install.packages("scales")
require(scales)
g <- ggplot(econ2000, aes(x=month, y = pop))
g

g <- g + geom_line(aes(color=factor(year), group=year))
g

g <- g + scale_color_discrete(name = "Year")
g

g <- g + scale_y_continuous(labels = comma)
g

g <- g + labs(title="Population Growth", x = "Month", y = "Population")
g


install.packages("ggthemes")
require(ggthemes)

head(diamonds)
g2 <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color))
g2

g2 + theme_economist_white()
g2 + theme_economist_white() + scale_colour_economist()

g2 + theme_excel()
g2 + theme_excel() + scale_colour_excel()


g2 + theme_tufte()


g2 + theme_wsj()

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price, color = color))

g <- ggplot(data = diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color))
