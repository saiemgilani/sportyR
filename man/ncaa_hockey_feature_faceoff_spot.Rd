% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hockey-ncaa-hockey-features.R
\name{ncaa_hockey_feature_faceoff_spot}
\alias{ncaa_hockey_feature_faceoff_spot}
\title{Generate the data frame for the points that comprise the faceoff spots}
\usage{
ncaa_hockey_feature_faceoff_spot(
  center = c(0, 0),
  full_surf = TRUE,
  rotate = FALSE,
  rotation_dir = "ccw"
)
}
\arguments{
\item{center}{The center coordinates of the faceoff spot}

\item{full_surf}{A boolean indicating whether or not this feature is needed
for a full-surface representation of the surface. Default: \code{TRUE}}

\item{rotate}{A boolean indicating whether or not this feature needs to be
rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the
feature. Default: \code{'ccw'}}
}
\value{
A data frame containing the points that comprise a faceoff spot
}
\description{
Generate the data frame for the points that comprise the faceoff spots
}
