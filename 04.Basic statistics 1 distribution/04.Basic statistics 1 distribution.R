library(tidyverse)

# 01. Binomial distribution

bd <- dbinom(seq(0, 100, by = 5), size = 100, prob = 0.5)
plot(seq(0, 100, by = 5), bd, type = 'h', lwd = 10, col = "red4", 
     xlab = "X",
     ylab = "Probability",
     main = c("Binomial distribution example (X = 100, probability = 0.5)"))



# 02. Poisson distribution

pd <- dpois(x=c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10), lambda = 2)
plot(pd, type='h', lwd = 10, col = 'red4',
     xlab = 'Observation',
     ylab = 'Probability',
     main = "Poisson distribution example (lambda = 2)")

dpois(x = 27, lambda = 30)*100



# 03. Normal distribution

nd <- dnorm(seq(-10, 10, length = 100), mean = 0, sd = 1)
plot(seq(-10, 10, length = 100), nd, type='l', lwd = 5, col = 'red4',
     xlab = 'X',
     ylab = 'Probability',
     main = "Normal distribution, (Mean = 0, SD = 1)")



# 04. Exponential distribution

x_dexp <- seq(1, 10, by = 1) 
y_dexp <- dexp(x_dexp, rate = 1)
plot(y_dexp, type='l', lwd = 3, col ='red4',
     xlab = 'T',
     ylab = 'Lambda',
     main = 'Exponential distribution, (lambda = 1)')



# 05. T distribution

x <- seq(-5, 5, 0.01)
y_td1 <- dt(x, 2)
y_td2 <- dt(x, 4)
y_td3 <- dt(x, 6)
y_td4 <- dt(x, 8)
y_td5 <- dt(x, 10)

ggplot()+
  geom_line(aes(x = x, y = y_td1, color='T distribution df = 2')) +
  geom_line(aes(x = x, y = y_td2, color='T distribution df = 4')) +
  geom_line(aes(x = x, y = y_td3, color='T distribution df = 6')) +
  geom_line(aes(x = x, y = y_td4, color='T distribution df = 8')) +
  geom_line(aes(x = x, y = y_td5, color='T distribution df = 10')) +
  theme(legend.position = 'right') +
  xlab('Values') +
  ylab('Density') +
  ggtitle('T distribution graphs') +
  scale_color_manual(values=c('red4','orange3', 'yellow3', 'forestgreen', 'blue4'))



# 06. F distribution

x <- seq(0, 5, 0.01)
y_fd1 <- df(x, 10, 20)
y_fd2 <- df(x, 10, 40)
y_fd3 <- df(x, 10, 60)
y_fd4 <- df(x, 10, 80)

ggplot()+
  geom_line(aes(x = x, y = y_fd1, color='F distribution df = 10 and 20')) +
  geom_line(aes(x = x, y = y_fd2, color='F distribution df = 10 and 40')) +
  geom_line(aes(x = x, y = y_fd3, color='F distribution df = 10 and 60')) +
  geom_line(aes(x = x, y = y_fd4, color='F distribution df = 10 and 80')) +
  theme(legend.position = 'right') +
  xlab('Values') +
  ylab('Density') +
  ggtitle('F distribution graphs') +
  scale_color_manual(values=c('red4','orange3', 'yellow3', 'forestgreen'))



# 07. chi-squared distribution

x <- seq(0, 5, 0.01)
y_cd1 <- dchisq(x, 1)
y_cd2 <- dchisq(x, 3)
y_cd3 <- dchisq(x, 5)
y_cd4 <- dchisq(x, 7)
y_cd5 <- dchisq(x, 9)

ggplot()+
  geom_line(aes(x = x, y = y_cd1, color='chi-squared distribution df = 1')) +
  geom_line(aes(x = x, y = y_cd2, color='chi-squared distribution df = 3')) +
  geom_line(aes(x = x, y = y_cd3, color='chi-squared distribution df = 5')) +
  geom_line(aes(x = x, y = y_cd4, color='chi-squared distribution df = 7')) +
  geom_line(aes(x = x, y = y_cd5, color='chi-squared distribution df = 9')) +
  theme(legend.position = 'right') +
  xlab('Values') +
  ylab('Probability') +
  ylim(0, 1) +
  ggtitle('chi-squared distribution graphs') +
  scale_color_manual(values=c('red4','orange3', 'yellow3', 'forestgreen', 'blue4'))