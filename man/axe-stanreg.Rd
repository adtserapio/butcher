% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stanreg.R
\name{axe-stanreg}
\alias{axe-stanreg}
\alias{axe_call.stanreg}
\alias{axe_env.stanreg}
\alias{axe_fitted.stanreg}
\title{Axing a stanreg.}
\usage{
\method{axe_call}{stanreg}(x, verbose = FALSE, ...)

\method{axe_env}{stanreg}(x, verbose = FALSE, ...)

\method{axe_fitted}{stanreg}(x, verbose = FALSE, ...)
}
\arguments{
\item{x}{A model object.}

\item{verbose}{Print information each time an axe method is executed.
Notes how much memory is released and what functions are
disabled. Default is \code{FALSE}.}

\item{...}{Any additional arguments related to axing.}
}
\value{
Axed stanreg object.
}
\description{
stanreg objects are created from the \pkg{rstanarm} package, leveraged
to do Bayesian regression modeling with \pkg{stan}.
}
\examples{
\donttest{
# Load libraries
suppressWarnings(suppressMessages(library(parsnip)))
suppressWarnings(suppressMessages(library(rsample)))
suppressWarnings(suppressMessages(library(rstanarm)))

# Load data
split <- initial_split(mtcars, props = 9/10)
car_train <- training(split)

# Create model and fit
ctrl <- fit_control(verbosity = 0) # Avoid printing output
stanreg_fit <- linear_reg() \%>\%
  set_engine("stan") \%>\%
  fit(mpg ~ ., data = car_train, control = ctrl)

out <- butcher(stanreg_fit, verbose = TRUE)

# Another stanreg object
wells$dist100 <- wells$dist / 100
fit <- stan_glm(
  switch ~ dist100 + arsenic,
  data = wells,
  family = binomial(link = "logit"),
  prior_intercept = normal(0, 10),
  QR = TRUE,
  chains = 2,
  iter = 200 # for speed purposes only
)

out <- butcher(fit, verbose = TRUE)
}
}
