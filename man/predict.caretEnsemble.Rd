% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/caretEnsemble.R
\name{predict.caretEnsemble}
\alias{predict.caretEnsemble}
\title{Make predictions from a caretEnsemble. This function passes the data to each function in
turn to make a matrix of predictions, and then multiplies that matrix by the vector of
weights to get a single, combined vector of predictions.}
\usage{
\method{predict}{caretEnsemble}(object, keepNA = TRUE, se = FALSE,
  return_weights = FALSE, ...)
}
\arguments{
\item{object}{a \code{\link{caretEnsemble}} to make predictions from.}

\item{keepNA}{a logical indicating whether predictions should be made for all
cases where sufficient data exists or only for complete cases across all models. When
TRUE this does not predict for missing values. When FALSE, missing values are overwritten
with predictions where possible.}

\item{se}{logical, should prediction errors be produced? Default is false.}

\item{return_weights}{a logical indicating whether prediction weights for each model for
each observation should be returend}

\item{...}{arguments (including newdata) to pass to predict.train. These arguments
must be named}
}
\value{
If \code{return_weights = TRUE} a list is returned with a data.frame
slot for predictions and a matrix slot for the model weights. If \code{return_weights = FALSE}
a data.frame is returned for the predictions.
}
\description{
Make predictions from a caretEnsemble. This function passes the data to each function in
turn to make a matrix of predictions, and then multiplies that matrix by the vector of
weights to get a single, combined vector of predictions.
}
\examples{
\dontrun{
set.seed(42)
models <- caretList(iris[1:50,1:2], iris[1:50,3], methodList=c('glm', 'lm'))
ens <- caretEnsemble(models)
cor(predict(ens, newdata=iris[51:150,1:2]), iris[51:150,3])
}
}

