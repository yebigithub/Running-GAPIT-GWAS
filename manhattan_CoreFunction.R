# manhattan plot
# library(qqman)

man = function(x){
  manhattan(x, 
          chr = colnames(x)[2], 
          col = c("gray","black"), 
          bp= colnames(x)[3], 
          p= colnames(x)[4], 
          snp=colnames(x)[1], 
          logp=FALSE, 
          genomewideline=FALSE, 
          suggestiveline = -log10(4.173493e-05), 
          cex.axis = 0.8, 
          mgp=c(2,1,0), 
          ylim=c(0,14),
          main = name)
}

