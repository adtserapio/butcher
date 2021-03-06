% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cv.R
\name{axe-cv.glmnet}
\alias{axe-cv.glmnet}
\alias{axe_fitted.cv.glmnet}
\title{Axing an cv.glmnet.}
\usage{
\method{axe_fitted}{cv.glmnet}(x, verbose = FALSE, ...)
}
\arguments{
\item{x}{A model object.}

\item{verbose}{Print information each time an axe method is executed.
Notes how much memory is released and what functions are
disabled. Default is \code{FALSE}.}

\item{...}{Any additional arguments related to axing.}
}
\value{
Axed cv.glmnet object.
}
\description{
cv.glmnet objects are created from carrying out k-fold
cross-validation from the \pkg{glmnet} package.
}
\examples{
# Load libraries
suppressWarnings(suppressMessages(library(glmnet)))

# Example 1
n <- 500
p <- 30
nzc <- trunc(p/10)
x <- matrix(rnorm(n*p), n, p)
beta <- matrix(rnorm(30), 10, nzc)
beta <- rbind(beta, matrix(0, p-10, nzc))
f <- x \%*\% beta
p <- exp(f)
p <- p/apply(p, 1, sum)
g <- rmult(p)
set.seed(10101)
cvfit <- cv.glmnet(x, g, family="multinomial", keep = TRUE)

out <- butcher(cvfit, verbose = TRUE)

# Example 2
n <- 1000
p <- 100
nzc <- trunc(p/10)
x <- matrix(rnorm(n*p), n, p)
beta <- rnorm(nzc)
fx <- x[, seq(nzc)] \%*\% beta
eps <- rnorm(n)*5
y <- drop(fx+eps)
px <- exp(fx)
px <- px/(1+px)
ly <- rbinom(n = length(px), prob = px, size = 1)
cvfit2 <- cv.glmnet(x, ly,
                    family = "binomial",
                    type.measure = "auc",
                    keep = TRUE)

out <- butcher(cvfit2, verbose = TRUE)

}
