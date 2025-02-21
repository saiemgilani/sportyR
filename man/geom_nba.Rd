% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basketball-nba-features.R
\name{geom_nba}
\alias{geom_nba}
\title{Create a ggplot2 instance that represents a regulation NBA court, with the
center of the court corresponding to (0, 0)}
\usage{
geom_nba(
  full_surf = TRUE,
  rotate = FALSE,
  rotation_dir = "ccw",
  unit = "ft",
  include_amateur_free_throw_lane = TRUE,
  include_amateur_free_throw_lane_lines = TRUE,
  background_color = NULL,
  ...
)
}
\arguments{
\item{full_surf}{A boolean indicating whether or not to draw a full-surface
representation of the playing surface. Default: \code{TRUE}}

\item{rotate}{A boolean indicating whether or not the surface representation
needs to be rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the surface
representation. Default: \code{'ccw'}}

\item{unit}{A string indicating the units with which to make the plot.
Default: \code{'ft'}}

\item{include_amateur_free_throw_lane}{A boolean indicating whether or not to
include the amateur (NCAA) free-throw lane in the final plot. Default: \code{TRUE}}

\item{include_amateur_free_throw_lane_lines}{A boolean indicating whether or
not to include the amateur (NCAA) free-throw lane lines in the final plot.
Default: \code{TRUE}}

\item{background_color}{A hexadecimal string representing the color to use
for the plot's background. Default: \code{NULL}}

\item{...}{Additional arguments to pass to the function. These should be the
colors to pass to the \code{nba_features_set_colors()} function}
}
\value{
A ggplot2 instance that represents a regulation NBA court
}
\description{
Create a ggplot2 instance that represents a regulation NBA court, with the
center of the court corresponding to (0, 0)
}
