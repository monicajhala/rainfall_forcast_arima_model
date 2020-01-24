> library(readxl)
> RAINFALL_pivot <- read_excel("RAINFALL pivot.xlsx", 
                               +     sheet = "Worksheet")
> View(RAINFALL_pivot)
> library("tseries", lib.loc="~/R/win-library/3.5")
> library("xts", lib.loc="~/R/win-library/3.5")> kerala <-subset(RAINFALL_pivot,SUBDIVISION==0)
> View(kerala)
> kerala<-subset(RAINFALL_pivot,SUBDIVISION=="Kerala")
> kerala<-ts(data = kerala$ANNUAL,start = 1950,end = 2017,frequency = 12)
> plot(kerala)
> class(kerala)
[1] "ts"
> mode(kerala)<-"numeric"
> acf(kerala)
> pacf(kerala)
> plot(diff(kerala))
> acf(diff(kerala))
> pacf(kerala)
> pacf(diff(kerala))
> arima0(kerala,c(2,1,2))

Call:
  arima0(x = kerala, order = c(2, 1, 2))

Coefficients:
  ar1     ar2      ma1      ma2
-0.1876  0.0590  -0.5701  -0.4324
s.e.   0.0352  0.0353      NaN      NaN

sigma^2 estimated as 173726:  log likelihood = -5993.36,  aic = 11996.72
Warning message:
  In sqrt(diag(x$var.coef)) : NaNs produced
> arima0(kerala,c(1,1,2))

Call:
  arima0(x = kerala, order = c(1, 1, 2))

Coefficients:
  ar1     ma1      ma2
-0.2130  -0.566  -0.4362
s.e.   0.0345   0.001   0.0012

sigma^2 estimated as 174285:  log likelihood = -5994.69,  aic = 11997.37
> arima0(kerala,c(3,1,2))

Call:
  arima0(x = kerala, order = c(3, 1, 2))

Coefficients:
  ar1     ar2     ar3      ma1      ma2
-0.1761  0.0757  0.1070  -0.5956  -0.4063
s.e.   0.0351  0.0356  0.0351   0.0010   0.0010

sigma^2 estimated as 171848:  log likelihood = -5988.84,  aic = 11989.68
> arima0(kerala,c(1,1,2))

Call:
  arima0(x = kerala, order = c(1, 1, 2))

Coefficients:
  ar1     ma1      ma2
-0.2130  -0.566  -0.4362
s.e.   0.0345   0.001   0.0012

sigma^2 estimated as 174285:  log likelihood = -5994.69,  aic = 11997.37
> arima0(kerala,c(2,1,1))

Call:
  arima0(x = kerala, order = c(2, 1, 1))

Coefficients:
  ar1     ar2      ma1
0.2240  0.0074  -0.9921
s.e.  0.0353  0.0353   0.0048

sigma^2 estimated as 175532:  log likelihood = -5996.8,  aic = 12001.61
> arima0(kerala,c(2,1,2))

Call:
  arima0(x = kerala, order = c(2, 1, 2))

Coefficients:
  ar1     ar2      ma1      ma2
-0.1876  0.0590  -0.5701  -0.4324
s.e.   0.0352  0.0353      NaN      NaN

sigma^2 estimated as 173726:  log likelihood = -5993.36,  aic = 11996.72
> arima0(kerala,c(3,1,1))

Call:
  arima0(x = kerala, order = c(3, 1, 1))

Coefficients:
  ar1      ar2     ar3      ma1
0.2261  -0.0184  0.1338  -0.9949
s.e.     NaN   0.0306  0.0237   0.0089

sigma^2 estimated as 172381:  log likelihood = -5989.52,  aic = 11989.04
> arima5<-arima0(kerala,c(2,1,2))
> arima4<-arima0(kerala,c(3,1,2))
> arima3<-arima0(kerala,c(1,1,2))
> arima2<-arima0(kerala,c(3,1,1))
> arima1<-arima0(kerala,c(2,1,1))
> arima6<-arima0(kerala,c(1,1,1))
> arima7<-arima0(kerala,c(3,1,3))
> arima8<-arima0(kerala,c(2,1,3))
> rs4<-arima4$residuals
> rs3<-arima3$residuals
> rs2<-arima2$residuals
> rs1<-arima1$residuals
> rs5<-arima5$residuals
> rs6<-arima6$residuals
> rs7<-arima7$residuals
> rs8<-arima8$residuals
> Box.test(rs1)

Box-Pierce test

data:  rs1
X-squared = 0.0086212, df = 1, p-value = 0.926

> Box.test(rs2)

Box-Pierce test

data:  rs2
X-squared = 0.0015581, df = 1, p-value = 0.9685

> Box.test(rs3)

Box-Pierce test

data:  rs3
X-squared = 0.10222, df = 1, p-value = 0.7492

> Box.test(rs4)

Box-Pierce test

data:  rs4
X-squared = 0.078121, df = 1, p-value = 0.7799

> Box.test(rs5)

Box-Pierce test

data:  rs5
X-squared = 0.2232, df = 1, p-value = 0.6366

> Box.test(rs6)

Box-Pierce test

data:  rs6
X-squared = 0.019009, df = 1, p-value = 0.8903
> Box.test(rs7)

Box-Pierce test

data:  rs7
X-squared = 0.0074648, df = 1, p-value = 0.9311

> Box.test(rs8)

Box-Pierce test

data:  rs8
X-squared = 0.0032529, df = 1, p-value = 0.9545
> frct<-predict(arima1,n.ahead = 4)
> fr<-frct$pred
> fr
ANNUAL
2017  2775.418
2018  2859.837
2019  2881.571
2020  2887.066
> fit<-auto.arima(kerala)
> plot(forecast(fit,h=10))
