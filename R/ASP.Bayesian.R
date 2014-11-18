ASP.Bayesian <-
function(N, Tem_Gen, Index_Gen, IBD, snp, sd.freq=0.05, sd.psi=0.05, p0=c(rep(1/4,4),1))
{
  Index_Gen <- data.frame(Index_Gen)
  Tem_Gen <- data.frame(Tem_Gen)
  
  if (is.character(snp)) snp <- which(colnames(Tem_Gen)==snp)
  
  S <- c( sum(Tem_Gen[,snp]==0), sum(Tem_Gen[,snp]==1), sum(Tem_Gen[,snp]==2) )
  R <- c( sum(Index_Gen[,snp]==0 & IBD==0), sum(Index_Gen[,snp]==0 & IBD==1), sum(Index_Gen[,snp]==0 & IBD==2),
          sum(Index_Gen[,snp]==1 & IBD==0), sum(Index_Gen[,snp]==1 & IBD==1), sum(Index_Gen[,snp]==1 & IBD==2),
          sum(Index_Gen[,snp]==2 & IBD==0), sum(Index_Gen[,snp]==2 & IBD==1), sum(Index_Gen[,snp]==2 & IBD==2) )

  X <- .Call('ASPBay_MHcpp', PACKAGE = 'ASPBay', N, S, R, sd.freq, sd.psi, p0)
  
  return(list(f_ab=X[,1], f_Ab=X[,2], f_aB=X[,3], f_AB=X[,4], OR=X[,5]))
}
