#Problem 1 [Vectors and arithmetic operations, sequences]

# (a)
x<-c(4,1,1,4)

# (b)
y<-c(1,4)

# (c) The vector y is recycling because it has a shorter lenght that vector x.
# The recycling means that y is replicated until it is the same lenght as x.
x-y

#(d)
s<-c(x,y)

#(e)
rep(s, 10)
length(rep(s,10))

rep(s,10)
srep <- rep(s,10) 
length(srep)
#(f)
rep(s, each=3)

#(g)
#i
seq(7,21,by=1)

# by = 1 is default
#ii

## NOTE: doe not assign to built-in object like t. To see what t normally does, run

?t
t<-7:21

#(h)
length(t)
