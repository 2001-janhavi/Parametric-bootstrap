n=50
x=rexp(n,2)
theta_h=1/mean(x)
B=1000
Boot_mean={}

for(i in 1:B)
{
x_b=rexp(n,theta_h)
Boot_mean[i]=mean(x_b)
}

par(mfrow=c(1,2))
hist(Boot_mean)
xseq=seq(0,1,0.03)
Xbpdf=dgamma(xseq,1*n,n*2)
plot(xseq,Xbpdf,type="l",xlab=expression(bar(X)),ylab = "Density",main = "Density of G(50,100)",lwd=1.5)
