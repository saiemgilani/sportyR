% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/football-cfl-features.R
\name{cfl_feature_yard_numbers}
\alias{cfl_feature_yard_numbers}
\title{Generate the data frame for the points that will become the yard marking
numbers}
\usage{
cfl_feature_yard_numbers(
  full_surf = TRUE,
  rotate = FALSE,
  rotation_dir = "ccw"
)
}
\arguments{
\item{full_surf}{A boolean indicating whether or not to plot a full surface
representation of the surface. Default: \code{TRUE}}

\item{rotate}{A boolean indicating whether or not this feature needs to be
rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the
feature. Default: \code{'ccw'}}
}
\value{
a data frame that contains the information needed to add the yard
marking numbers
}
\description{
Generate the data frame for the points that will become the yard marking
numbers
}
