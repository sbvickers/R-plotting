filename <- 'testPlot.svg'

#----------------------------------------------------------
# make SVG file need to uncomment to save file otherwise
# sends output to screen.
#----------------------------------------------------------
#svg(filename, bg="transparent", height=6.5, width=6.5)
#----------------------------------------------------------

#----------------------------------------------------------
# margins : par(mfrow=c(rows,col), mar=c(bottom,left,top,right) + 0.1)
#----------------------------------------------------------
par(mfrow=c(1,1), mar=c(5,6,1,1)+0.1)
#----------------------------------------------------------


#----------------------------------------------------------
# x and y data where x is from -10 to 10 and y is a normal
# distribution with mu = 0.5 and sig = 1.0
#----------------------------------------------------------
x <- c(seq(-10,10,0.05))
y <- dnorm(x, mean=0.5, sd=1)
#----------------------------------------------------------


#----------------------------------------------------------
# x and y labels
#----------------------------------------------------------
y_lab <- 'Fraction'
x_lab <- 'Value'
#----------------------------------------------------------


#----------------------------------------------------------
# plot the data with the x and y labels defined earlier
# cex = size of points
# cex.lab = label size
# frame.plot = F dont plot frame around plot.
# axes = F no axes do them later
#----------------------------------------------------------
plot(x,y, ylab=y_lab, xlab=x_lab, cex=0.2, xlim=c(-10, 10), ylim=c(min(y), max(y)), frame.plot=F, axes=F)
#----------------------------------------------------------


#----------------------------------------------------------
# make Axes
# first entry in axis(x, ...) is position
# 1 bottom, 2 left, 3 top and 4 right
#----------------------------------------------------------
axis(1, at=c(-10,-5,0,5,10), tcl=0.8, labels=c(-10,-5,0,5,10), lwd=0.01, lwd.ticks=2.0, cex.axis=1.5)
axis(3, at=c(-10,-5,0,5,10), tcl=0.8, labels=F, lwd=0.01, lwd.ticks=2.0, cex.axis=1.5)

axis(2, at=c(0.0,0.1,0.2,0.3,0.4,0.5), tcl=0.8, labels=c(0.0,0.1,0.2,0.3,0.4,0.5), lwd=0.01, lwd.ticks=2.0, cex.axis=1.5)
axis(4, at=c(0.0,0.1,0.2,0.3,0.4,0.5), tcl=0.8, labels=F, lwd=0.01, lwd.ticks=2.0, cex.axis=1.5)
#----------------------------------------------------------


#----------------------------------------------------------
# box around plot
#----------------------------------------------------------
box(lwd=1.8)
#----------------------------------------------------------

readline(prompt="Pause. press <Enter> to continue...")

dev.off()
