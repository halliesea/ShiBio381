## HW#5

### March 3,2021

### Hallie Shi

------

#### Q1

```
x=1.1
a=2.2
b=3.3
z=x^(a^b)
print(z) 
[1] 3.61713
```

```
z=(x^a)^b 
print(z)
[1] 1.997611
```

```
z=3*x^3+2*x^2+1
print(z)
[1] 7.413
```

#### Q2

```
my_vector1 <- seq(from=1,to=8)
my_vector2 <- seq(from=7,to=1)
my_vector <- c(my_vector1,my_vector2)
print(my_vector)
[1] 1 2 3 4 5 6 7 8 7 6 5 4 3 2 1
```

```
my_vec2 <- seq(from=1,to=5)
rep(x=my_vec2,times=my_vec2)
[1] 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
```

```
my_vec3 <- seq(from=5,to=1)
my_vec4 <- seq(from=1,to=5)
rep(x=my_vec3,times=my_vec4)
[1]5 4 4 3 3 3 2 2 2 2 1 1 1 1 1
```

#### Q3

```
x <- runif(n=10)
y <- runif(n=10)
theta = atan(y/x)*(180/pi)
r = y/sin(theta)
Vec_polarCo <- cbind(r,theta)
print(Vec_polarCo)
             r    theta
 [1,]  0.9964102 70.67423
 [2,]  0.3484958 20.49457
 [3,] -0.5205795 55.66400
 [4,]  7.3537236 65.84061
 [5,]  0.3213232 65.46026
 [6,] -1.2221119 66.56300
 [7,]  5.5324204 44.13301
 [8,]  0.6557013 34.31666
 [9,] -0.5697369 61.77902
[10,]  0.3881902 19.71884
```

#### Q5

```
#the sheep enters the ark;
Queue[c(2,3,4,5)] 
[1] "fox"     "owl"     "ant"    "serpent"
```

```
#the donkey arrives and talks his way to the front of the line;
z <- vector(mode = "character", length=5)
z <-c("donkey",Queue[c(2,3,4,5)] )
print(z)
[1] "donkey"  "fox"     "owl"   "ant"     "serpent"
```

```
#the serpent gets impatient and leaves;
z[c(1,2,3,4)]
[1] "donkey" "fox"    "owl"    "ant" 
```

```
#the owl gets bored and leaves;
z[c(1,2,4)]
[1] "donkey" "fox"    "ant"  
```

```
#the aphid arrives and the ant invites him to cut in line.
z <-c(z[c(1,2)],"aphid",z[c(4)])
print(z)
[1] "donkey" "fox"    "aphid"  "ant"  
```

```
# Finally, determine the position of the aphid in the line.
which(z=="aphid")
[1] 3
```

#### Q6

```
#Use R to create a vector of all of the integers from 1 to 100 that are not divisible by 2, 3, or 7.

z <- 1:100
z <- c(z%%2==0|z%%3==0|z%%7==0)
print(z)
which(z==FALSE)
[1]  1  5 11 13 17 19 23 25 29 31 37 41
[13] 43 47 53 55 59 61 65 67 71 73 79 83
[25] 85 89 95 97

```



