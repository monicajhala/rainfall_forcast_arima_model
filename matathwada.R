> ww5<-ts(data = ww$ANNUAL,start = 1950,end = 2017,frequency = 12)
> plot(ww5)
> mode(ww5)<-"numeric"
> acf(ww5)
> pacf(ww5)
> plot(diff(ww5))
> acf(diff(ww5))
> pacf(diff(ww5))
> acf(log(ww5))
> pacf(log(ww5))
> arima0(ww5,c(1,1,1))

Call:
  arima0(x = ww5, order = c(1, 1, 1))

Coefficients:
  ar1      ma1
0.1610  -0.9986
s.e.  0.0349   0.0060

sigma^2 estimated as 34480:  log likelihood = -5342.99,  aic = 10691.99
> arima0(ww5,c(2,1,1))

Call:
  arima0(x = ww5, order = c(2, 1, 1))

Coefficients:
  ar1     ar2      ma1
0.1549  0.0173  -0.9997
s.e.  0.0353  0.0353   2.1704

sigma^2 estimated as 34457:  log likelihood = -5342.81,  aic = 10693.61
> arima0(ww5,c(3,1,1))

Call:
  arima0(x = ww5, order = c(3, 1, 1))

Coefficients:
  ar1     ar2      ar3      ma1
0.1570  0.0462  -0.1864  -0.9990
s.e.  0.0314  0.0316   0.0265   0.0091

sigma^2 estimated as 33263:  log likelihood = -5328.8,  aic = 10667.6
> arima0(ww5,c(4,1,1))

Call:
  arima0(x = ww5, order = c(4, 1, 1))

Coefficients:
  ar1     ar2      ar3      ar4      ma1
0.1323  0.0522  -0.1648  -0.1362  -0.9993
s.e.  0.0100  0.0114   0.0100   0.0101   0.0107

sigma^2 estimated as 32611:  log likelihood = -5321.03,  aic = 10654.05
> arima0(ww5,c(5,1,1))

Call:
  arima0(x = ww5, order = c(5, 1, 1))

Coefficients:
  ar1     ar2      ar3      ar4     ar5      ma1
0.1399  0.0617  -0.1679  -0.1449  0.0608  -0.9996
s.e.  0.0352  0.0352   0.0347   0.0352  0.0352   1.6960

sigma^2 estimated as 32494:  log likelihood = -5319.56,  aic = 10653.11
> arima0(ww5,c(6,1,1))

Call:
  arima0(x = ww5, order = c(6, 1, 1))

Coefficients:
  ar1     ar2      ar3      ar4     ar5     ar6      ma1
0.1399  0.0620  -0.1674  -0.1450  0.0604  0.0024  -0.9995
s.e.  0.0353  0.0356   0.0353   0.0352  0.0356  0.0354   1.5877

sigma^2 estimated as 32495:  log likelihood = -5319.56,  aic = 10655.12
> arima0(ww5,c(6,1,2))

Call:
  arima0(x = ww5, order = c(6, 1, 2))

Coefficients:
  ar1     ar2      ar3      ar4      ar5      ar6      ma1
-0.1596  0.0804  -0.1501  -0.2339  -0.0226  -0.0693  -0.6514
s.e.   0.0441  0.0453   0.0397   0.0391   0.0436   0.0407   0.0015
ma2
-0.3552
s.e.   0.0015

sigma^2 estimated as 32488:  log likelihood = -5321.8,  aic = 10661.61
> arima0(ww5,c(5,1,2))

Call:
  arima0(x = ww5, order = c(5, 1, 2))

Coefficients:
  ar1     ar2      ar3      ar4     ar5      ma1      ma2
-0.1918  0.0967  -0.1436  -0.1964  0.0243  -0.6525  -0.3495
s.e.   0.0357  0.0354   0.0353   0.0354  0.0354   0.0021   0.0018

sigma^2 estimated as 32370:  log likelihood = -5318.22,  aic = 10652.45
> arima0(ww5,c(4,1,2))

Call:
  arima0(x = ww5, order = c(4, 1, 2))

Coefficients:
  ar1     ar2      ar3      ar4      ma1      ma2
-0.2047  0.1325  -0.1449  -0.2093  -0.6598  -0.3479
s.e.   0.0347  0.0355   0.0351   0.0349   0.0008   0.0010

sigma^2 estimated as 32240:  log likelihood = -5320.97,  aic = 10655.94
> arima0(ww5,c(3,1,2))

Call:
  arima0(x = ww5, order = c(3, 1, 2))

Coefficients:
  ar1     ar2      ar3      ma1      ma2
-0.2103  0.0984  -0.1078  -0.6354  -0.3669
s.e.   0.0355  0.0363   0.0360   0.0016   0.0021

sigma^2 estimated as 33882:  log likelihood = -5336.37,  aic = 10684.74
> arima0(ww5,c(2,1,2))

Call:
  arima0(x = ww5, order = c(2, 1, 2))

Coefficients:
  ar1     ar2      ma1      ma2
-0.2095  0.1288  -0.6477  -0.3589
s.e.   0.0338  0.0343      NaN      NaN

sigma^2 estimated as 34160:  log likelihood = -5341.11,  aic = 10692.22
Warning message:
  In sqrt(diag(x$var.coef)) : NaNs produced
> arima0(ww5,c(1,1,2))

Call:
  arima0(x = ww5, order = c(1, 1, 2))

Coefficients:
  ar1      ma1      ma2
-0.2222  -0.6578  -0.3443
s.e.   0.0349   0.0021   0.0024

sigma^2 estimated as 34665:  log likelihood = -5345.53,  aic = 10699.06
> arima1<-arima0(ww5,c(6,1,1))
> arima2<-arima0(ww5,c(5,1,1))
> arima3<-arima0(ww5,c(4,1,1))
> arima4<-arima0(ww5,c(3,1,1))
> arima5<-arima0(ww5,c(2,1,2))
> arima6<-arima0(ww5,c(6,1,2))
> arima7<-arima0(ww5,c(5,1,2))
> rs8<-arima7$residuals
> Box.test(rs1)

Box-Pierce test

data:  rs1
X-squared = 0.0011284, df = 1, p-value = 0.9732

> Box.test(rs2)

Box-Pierce test

data:  rs2
X-squared = 0.00052677, df = 1, p-value = 0.9817

> Box.test(rs3)

Box-Pierce test

data:  rs3
X-squared = 0.033783, df = 1, p-value = 0.8542

> Box.test(rs4)

Box-Pierce test

data:  rs4
X-squared = 0.53393, df = 1, p-value = 0.465

> Box.test(rs5)

Box-Pierce test

data:  rs5
X-squared = 0.18132, df = 1, p-value = 0.6702

> Box.test(rs6)

Box-Pierce test

data:  rs6
X-squared = 1.5232, df = 1, p-value = 0.2171

> Box.test(rs7)

Box-Pierce test

data:  rs7
X-squared = 1.5232, df = 1, p-value = 0.2171
> Box.test(rs8)

Box-Pierce test

data:  rs8
X-squared = 0.18814, df = 1, p-value = 0.6645
> frct<-predict(arima7,n.ahead = 1)
> fr<-frct$pred
> fr
ANNUAL
2017 792.7635
> frct<-predict(arima6,n.ahead = 4)
> fr<-frct$pred
> fr
ANNUAL
2017 779.1636
2018 820.6235
2019 826.1455 
2020 817.1130



