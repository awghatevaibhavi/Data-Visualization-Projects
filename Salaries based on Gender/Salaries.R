library(ggplot2)
library(ggalt)
theme_set(theme_classic())

setwd("/Users/vaibhaviawghate/Documents/Data Projects/Salaries based on Gender")
data = read.csv("/Users/vaibhaviawghate/Documents/Data Projects/Salaries based on Gender/Maximum Gap.csv")
str(data)
data$Job = factor(data$Job, levels = as.character(data$Job))

gg <- ggplot(data, aes(x=(Women.Annual), xend=(Men.Annual), y=data$Job))
gg <- gg + geom_dumbbell(color="#800080",
                         colour_x="#800080",
                         colour_xend ="#cccc00",
                         size_x=3,
                         size_xend=3, show.legend=TRUE)
gg <- gg + scale_x_continuous(breaks = seq(0,data$Men.Annual),labels=seq(0, data$Men.Annual))
gg <- gg + labs(x="Annual Salary", y=NULL,
                title="Gender Earnings Disparity")
gg <- gg + theme_bw()
#gg <- gg + theme(axis.ticks=element_blank())
gg <- gg + theme(panel.grid.minor=element_blank())
gg <- gg + theme(panel.border=element_blank())
gg <- gg+ theme(axis.text.x = element_text(angle=30, face="bold", size=10))
gg <- gg + theme(axis.title.x=element_text(hjust=1, face="italic", margin=margin(t=-24)))
gg <- gg + theme(plot.caption=element_text(size=8, margin=margin(t=24)))
gg <- gg + theme(legend.position="top")
plot(gg)


data = read.csv("/Users/vaibhaviawghate/Documents/Data Projects/Salaries based on Gender/Minimum Gap.csv")
str(data)
data$Job = factor(data$Job, levels = as.character(data$Job))

gg <- ggplot(data, aes(x=(Women.Annual), xend=(Men.Annual), y=data$Job))
gg <- gg + geom_dumbbell(color="#800080",
                         colour_x="#800080",
                         colour_xend ="#cccc00",
                         size_x=3,
                         size_xend=3, show.legend=TRUE)
gg <- gg + scale_x_continuous(breaks = seq(0,data$Men.Annual),labels=seq(0, data$Men.Annual))
gg <- gg + labs(x="Annual Salary", y=NULL,
                title="Gender Earnings Disparity")
gg <- gg + theme_bw()
#gg <- gg + theme(axis.ticks=element_blank())
gg <- gg + theme(panel.grid.minor=element_blank())
gg <- gg + theme(panel.border=element_blank())
gg <- gg+ theme(axis.text.x = element_text(angle=30, face="bold", size=10))
gg <- gg + theme(axis.title.x=element_text(hjust=1, face="italic", margin=margin(t=-24)))
gg <- gg + theme(plot.caption=element_text(size=8, margin=margin(t=24)))
gg <- gg + theme(legend.position="top")
plot(gg)
