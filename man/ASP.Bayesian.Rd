\name{ ASP.Bayesian }
\alias{ ASP.Bayesian }
\title{ Samples in the posterior distribution of the frequencies and OR}
\description{ Samples using Metropolis-Hasting Algorithm in the posterior distribution of the four haplotype frequencies and OR }
\usage{ ASP.Bayesian(N, Tem_Gen, Index_Gen, IBD, snp, sd.freq = 0.05,
                     sd.psi = 0.05, p0 = c(rep(1/4, 4), 1)) }
\arguments{
  \item{N}{ Sample size }
  \item{Tem_Gen}{ Genotypes of controls (denoted by the number of alternative allele) }
  \item{Index_Gen}{ Genotypes of index cases }
  \item{IBD}{ IBD states for each affected sib-pair }
  \item{snp}{ Names or number column of the SNP to consider }
  \item{sd.freq}{ Random walk standard deviation of the frequency logarithms }
  \item{sd.psi}{ Random walk standard deviation of the OR }
  \item{p0}{ The initial point of random walk }
}
\details{ Samples using Metropolis-Hasting and likelihood defined by data. More precisely, give the frequency samples of haplotypes for observed SNP and unobserved causal SNP and give
          the sample of the odds ratio associated to the causal SNP. }
\value{
  \item{f_ab}{ Sample of the haplotype composed by the two alternative alleles }
  \item{f_Ab}{ Sample of the haplotype composed by the reference allele for the causal (unobserved) locus and the alternative alleles for the observed locus }
  \item{f_aB}{ Sample of the haplotype composed by the alternative allele for the causal (unobserved) locus and the reference alleles for the observed locus }
  \item{f_AB}{ Sample of the haplotype composed by the two reference alleles }
  \item{OR}{ Sample of the OR }
}
\references{ Dandine-Roulland, Claire and Perdry, Herve. \emph{Where is the causal variant? On the advantage of the family design over the case-control design in genetic association studies.} 
Submitted to Eur J Hum Genet }
\author{Claire Dandine-Roulland}
\seealso{\code{\link{ASP.Selection}}, \code{\link{Graphs.Bayesian}}}
\examples{
data(ASPData)
B <- ASP.Bayesian(1e5, ASPData$Control, ASPData$Index,
                  ASPData$IBD, 15 )
}
\keyword{ Metropolis-Hasting }
\keyword{ Sampling }
