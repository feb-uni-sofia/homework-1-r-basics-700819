#Problem 2  [Vectors, data frames, subsetting]

#(a)
date<-c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
xmin<-c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax<-c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#(b)
xmax-xmin

#(c)
avgxmin<-mean(xmin)
avgxmax<-mean(xmax)

#(d)
xmin[xmin<avgxmin]

#(e)
xmin[xmax>avgxmax]
