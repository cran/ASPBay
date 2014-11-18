#include <RcppArmadillo.h>

using namespace Rcpp;

// MHcpp
arma::mat MHcpp(int N, IntegerVector S, IntegerVector R, double sd_freq, double sd_psi, arma::rowvec p0);
RcppExport SEXP ASPBay_MHcpp(SEXP NSEXP, SEXP SSEXP, SEXP RSEXP, SEXP sd_freqSEXP, SEXP sd_psiSEXP, SEXP p0SEXP) {
BEGIN_RCPP
    SEXP __sexp_result;
    {
        Rcpp::RNGScope __rngScope;
        Rcpp::traits::input_parameter< int >::type N(NSEXP );
        Rcpp::traits::input_parameter< IntegerVector >::type S(SSEXP );
        Rcpp::traits::input_parameter< IntegerVector >::type R(RSEXP );
        Rcpp::traits::input_parameter< double >::type sd_freq(sd_freqSEXP );
        Rcpp::traits::input_parameter< double >::type sd_psi(sd_psiSEXP );
        Rcpp::traits::input_parameter< arma::rowvec >::type p0(p0SEXP );
        arma::mat __result = MHcpp(N, S, R, sd_freq, sd_psi, p0);
        PROTECT(__sexp_result = Rcpp::wrap(__result));
    }
    UNPROTECT(1);
    return __sexp_result;
END_RCPP
}
