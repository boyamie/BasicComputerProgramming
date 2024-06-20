x <- seq(-3,3,0.5)
y <- x^2 + 1
y1 <- -x + 6
plot(x,y,type="o",col="blue")
lines(x,y1,type="o",col="red")
text(-1.2,5,"y=x^2+1",col="blue")
text(0.8,5.9,"y1=-x+6",col="red")