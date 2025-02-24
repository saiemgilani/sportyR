% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/soccer-premier-league-features.R
\name{premier_league_feature_goal}
\alias{premier_league_feature_goal}
\title{Generate the data frame for the points that comprise the goal}
\usage{
premier_league_feature_goal(
  touchline_length,
  full_surf = TRUE,
  rotate = FALSE,
  rotation_dir = "ccw"
)
}
\arguments{
\item{touchline_length}{The length of touchline. This should be the entire
length (both halves) of the pitch}

\item{full_surf}{A boolean indicating whether or not to plot a full surface
representation of the surface. Default: \code{TRUE}}

\item{rotate}{A boolean indicating whether or not this feature needs to be
rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the
feature. Default: \code{'ccw'}}
}
\value{
A data frame containing the points that comprise the goal
}
\description{
Generate the data frame for the points that comprise the goal
}
