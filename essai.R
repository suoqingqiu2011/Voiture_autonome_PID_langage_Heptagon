d<-read.delim("logs.txt", header = F, sep = "", dec = ".")
c<-d[which(d$V1=="pid"),]
n<-nrow(c)
y=t(c[2])
floaty<-as.numeric(y)
maxy=max(floaty)
maxy
miny=min(floaty)
miny
plot(c(1:n),y,type="l",xlab="time: *0.01s",ylab="pid value",xlim=c(0,n+1),ylim=c(miny,maxy),col="red",main="graphe de pid")

