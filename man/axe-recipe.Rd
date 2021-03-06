% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recipe.R
\name{axe-recipe}
\alias{axe-recipe}
\alias{axe_env.recipe}
\alias{axe_env.step}
\alias{axe_env.step_arrange}
\alias{axe_env.step_bagimpute}
\alias{axe_env.step_bin2factor}
\alias{axe_env.step_BoxCox}
\alias{axe_env.step_bs}
\alias{axe_env.step_center}
\alias{axe_env.step_classdist}
\alias{axe_env.step_corr}
\alias{axe_env.step_count}
\alias{axe_env.step_date}
\alias{axe_env.step_depth}
\alias{axe_env.step_discretize}
\alias{axe_env.step_downsample}
\alias{axe_env.step_dummy}
\alias{axe_env.step_factor2string}
\alias{axe_env.step_filter}
\alias{axe_env.step_geodist}
\alias{axe_env.step_holiday}
\alias{axe_env.step_hyperbolic}
\alias{axe_env.step_ica}
\alias{axe_env.step_integer}
\alias{axe_env.step_interact}
\alias{axe_env.step_inverse}
\alias{axe_env.step_invlogit}
\alias{axe_env.step_isomap}
\alias{axe_env.step_knnimpute}
\alias{axe_env.step_kpca}
\alias{axe_env.step_lag}
\alias{axe_env.step_lincomb}
\alias{axe_env.step_log}
\alias{axe_env.step_logit}
\alias{axe_env.step_lowerimpute}
\alias{axe_env.step_meanimpute}
\alias{axe_env.step_medianimpute}
\alias{axe_env.step_modeimpute}
\alias{axe_env.step_mutate}
\alias{axe_env.step_naomit}
\alias{axe_env.step_nnmf}
\alias{axe_env.step_novel}
\alias{axe_env.step_num2factor}
\alias{axe_env.step_ns}
\alias{axe_env.step_nzv}
\alias{axe_env.step_ordinalscore}
\alias{axe_env.step_other}
\alias{axe_env.step_pca}
\alias{axe_env.step_pls}
\alias{axe_env.step_poly}
\alias{axe_env.step_range}
\alias{axe_env.step_ratio}
\alias{axe_env.step_regex}
\alias{axe_env.step_relu}
\alias{axe_env.step_rm}
\alias{axe_env.step_rollimpute}
\alias{axe_env.step_shuffle}
\alias{axe_env.step_slice}
\alias{axe_env.step_scale}
\alias{axe_env.step_string2factor}
\alias{axe_env.step_sqrt}
\alias{axe_env.step_spatialsign}
\alias{axe_env.step_unorder}
\alias{axe_env.step_upsample}
\alias{axe_env.step_window}
\alias{axe_env.step_YeoJohnson}
\alias{axe_env.step_zv}
\alias{axe_env.quosure}
\title{Axing a recipe object.}
\usage{
\method{axe_env}{recipe}(x, verbose = FALSE, ...)

\method{axe_env}{step}(x, ...)

\method{axe_env}{step_arrange}(x, ...)

\method{axe_env}{step_bagimpute}(x, ...)

\method{axe_env}{step_bin2factor}(x, ...)

\method{axe_env}{step_BoxCox}(x, ...)

\method{axe_env}{step_bs}(x, ...)

\method{axe_env}{step_center}(x, ...)

\method{axe_env}{step_classdist}(x, ...)

\method{axe_env}{step_corr}(x, ...)

\method{axe_env}{step_count}(x, ...)

\method{axe_env}{step_date}(x, ...)

\method{axe_env}{step_depth}(x, ...)

\method{axe_env}{step_discretize}(x, ...)

\method{axe_env}{step_downsample}(x, ...)

\method{axe_env}{step_dummy}(x, ...)

\method{axe_env}{step_factor2string}(x, ...)

\method{axe_env}{step_filter}(x, ...)

\method{axe_env}{step_geodist}(x, ...)

\method{axe_env}{step_holiday}(x, ...)

\method{axe_env}{step_hyperbolic}(x, ...)

\method{axe_env}{step_ica}(x, ...)

\method{axe_env}{step_integer}(x, ...)

\method{axe_env}{step_interact}(x, ...)

\method{axe_env}{step_inverse}(x, ...)

\method{axe_env}{step_invlogit}(x, ...)

\method{axe_env}{step_isomap}(x, ...)

\method{axe_env}{step_knnimpute}(x, ...)

\method{axe_env}{step_kpca}(x, ...)

\method{axe_env}{step_lag}(x, ...)

\method{axe_env}{step_lincomb}(x, ...)

\method{axe_env}{step_log}(x, ...)

\method{axe_env}{step_logit}(x, ...)

\method{axe_env}{step_lowerimpute}(x, ...)

\method{axe_env}{step_meanimpute}(x, ...)

\method{axe_env}{step_medianimpute}(x, ...)

\method{axe_env}{step_modeimpute}(x, ...)

\method{axe_env}{step_mutate}(x, ...)

\method{axe_env}{step_naomit}(x, ...)

\method{axe_env}{step_nnmf}(x, ...)

\method{axe_env}{step_novel}(x, ...)

\method{axe_env}{step_num2factor}(x, ...)

\method{axe_env}{step_ns}(x, ...)

\method{axe_env}{step_nzv}(x, ...)

\method{axe_env}{step_ordinalscore}(x, ...)

\method{axe_env}{step_other}(x, ...)

\method{axe_env}{step_pca}(x, ...)

\method{axe_env}{step_pls}(x, ...)

\method{axe_env}{step_poly}(x, ...)

\method{axe_env}{step_range}(x, ...)

\method{axe_env}{step_ratio}(x, ...)

\method{axe_env}{step_regex}(x, ...)

\method{axe_env}{step_relu}(x, ...)

\method{axe_env}{step_rm}(x, ...)

\method{axe_env}{step_rollimpute}(x, ...)

\method{axe_env}{step_shuffle}(x, ...)

\method{axe_env}{step_slice}(x, ...)

\method{axe_env}{step_scale}(x, ...)

\method{axe_env}{step_string2factor}(x, ...)

\method{axe_env}{step_sqrt}(x, ...)

\method{axe_env}{step_spatialsign}(x, ...)

\method{axe_env}{step_unorder}(x, ...)

\method{axe_env}{step_upsample}(x, ...)

\method{axe_env}{step_window}(x, ...)

\method{axe_env}{step_YeoJohnson}(x, ...)

\method{axe_env}{step_zv}(x, ...)

\method{axe_env}{quosure}(x, ...)
}
\arguments{
\item{x}{A model object.}

\item{verbose}{Print information each time an axe method is executed.
Notes how much memory is released and what functions are
disabled. Default is \code{FALSE}.}

\item{...}{Any additional arguments related to axing.}
}
\value{
Axed recipe object.
}
\description{
recipe objects are created from the \pkg{recipes} package, which is
leveraged for its set of data pre-processing tools. These recipes work
by sequentially defining each pre-processing step. The implementation
of each step, however, results its own class so we bundle all the axe
methods related to recipe objects in general here. Note that the
butchered class is only added to the recipe as a whole, and not to each
pre-processing step.
}
\examples{
suppressWarnings(suppressMessages(library(recipes)))

data(biomass)

biomass_tr <- biomass[biomass$dataset == "Training",]
rec <- recipe(HHV ~ carbon + hydrogen + oxygen + nitrogen + sulfur,
              data = biomass_tr) \%>\%
  step_center(all_predictors()) \%>\%
  step_scale(all_predictors()) \%>\%
  step_spatialsign(all_predictors())

out <- butcher(rec, verbose = TRUE)

# Another recipe object
wrapped_recipes <- function() {
  some_junk_in_environment <- runif(1e6)
  return(
    recipe(mpg ~ cyl, data = mtcars) \%>\%
      step_center(all_predictors()) \%>\%
      step_scale(all_predictors())
  )
}

# Remove junk
cleaned_recipes <- axe_env(wrapped_recipes(), verbose = TRUE)

# Check size
lobstr::obj_size(cleaned_recipes)

}
