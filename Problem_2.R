#Problem 2  [Vectors, data frames, subsetting]

#(a)
xmin<-c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)

xmax<-c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#(b)
xmax-xmin

#(c)
avgxmin<-mean(xmin)
avgxmin

avgxmax<-mean(xmax)
avgxmax

#(d)
xmin[xmin<avgxmin]

#(e)
xmin[xmax>avgxmax]

#(f)

## NOTE: not DRY (don't repeate yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <- c('03Mon18','04Tue18', '05Wed18', 
              '06Thu18', '07Fri18', '08Sat18','09Sun18') 

names(xmax) <- c('03Mon18','04Tue18', '05Wed18', 
                     '06Thu18', '07Fri18', '08Sat18','09Sun18') 


xmin
xmax

#(g)
temperatures <- data.frame(xmin, xmax)
temperatures

#(h)
temperatures$xminFahrenheit<-xmin*9/5+32
temperatures

#(i)

## Better:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

temp.Fahrenheit<- data.frame(
  Fmin = xmin*9/5+32,
  Fmax = xmax*9/5+32)

temp.Fahrenheit

#(j)

## Very well
#i
temp.Fahrenheit[c(1:5), ]

#ii
temp.Fahrenheit[-c(6,7), ]
