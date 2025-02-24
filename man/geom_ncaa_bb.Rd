% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basketball-ncaa-bb-features.R
\name{geom_ncaa_bb}
\alias{geom_ncaa_bb}
\title{Create a ggplot2 instance that represents a regulation NCAA basketball court,
with the center of the court corresponding to (0, 0)}
\usage{
geom_ncaa_bb(
  full_surf = TRUE,
  rotate = FALSE,
  rotation_dir = "ccw",
  unit = "ft",
  include_m_three_point_line = TRUE,
  include_w_three_point_line = TRUE,
  include_professional_free_throw_lane = FALSE,
  include_professional_free_throw_lane_lines = FALSE,
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

\item{include_m_three_point_line}{A boolean indicating whether or not to
include the men's three-point line in the final plot. Default: \code{TRUE}}

\item{include_w_three_point_line}{A boolean indicating whether or not to
include the women's three-point line in the final plot. Default: \code{TRUE}}

\item{include_professional_free_throw_lane}{A boolean indicating whether or
not to include the professional((W)NBA) free-throw lane in the final plot.
Default: \code{FALSE}}

\item{include_professional_free_throw_lane_lines}{A boolean indicating
whether or not to include the professional((W)NBA) free-throw lane lines in
the final plot. Default: \code{FALSE}}

\item{background_color}{A hexadecimal string representing the color to use
for the plot's background. Default: \code{NULL}}

\item{...}{Additional arguments to pass to the function. These should be the
colors to pass to the \code{ncaa_bb_features_set_colors()} function}
}
\value{
A ggplot2 instance that represents a regulation NCAA basketball court
}
\description{
Create a ggplot2 instance that represents a regulation NCAA basketball court,
with the center of the court corresponding to (0, 0)
}
