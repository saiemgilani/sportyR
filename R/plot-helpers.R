#' Create the base for the ggplot2 instance with the correct theme elements
#'
#' @param rotate Whether or not the final output will be rotated (adjusts the
#'   margins). Default: \code{FALSE}
#' @param background_color A hexadecimal string representing the color to use for
#'   the plot's background. Default: \code{NULL}
#'
#' @return A ggplot2 instance onto which the features will be added
create_plot_base = function(rotate = FALSE,
                            background_color = NULL) {
  if (!is.null(background_color)) {
    # If the plot has a specific background color, set the element correctly
    background = ggplot2::element_rect(fill = background_color)
  }

  else {
    # Otherwise, use ggplot2::element_blank()
    background = ggplot2::element_blank()
  }

  if (rotate) {
    g = ggplot2::ggplot() +
      ggplot2::coord_fixed() +
      ggplot2::theme(
        plot.margin = ggplot2::margin(0, -1, 0, -1, "cm"),
        panel.border = ggplot2::element_blank(),
        panel.background = background,
        axis.title = ggplot2::element_blank(),
        axis.text = ggplot2::element_blank(),
        axis.ticks = ggplot2::element_blank(),
        panel.grid = ggplot2::element_blank(),
      )
  }

  else {
    g = ggplot2::ggplot() +
      ggplot2::coord_fixed() +
      ggplot2::theme(
        plot.margin = ggplot2::margin(-1, 0, -1, 0, "cm"),
        panel.border = ggplot2::element_blank(),
        panel.background = background,
        axis.title = ggplot2::element_blank(),
        axis.text = ggplot2::element_blank(),
        axis.ticks = ggplot2::element_blank(),
        panel.grid = ggplot2::element_blank(),
      )
  }

  # Return the ggplot2 instance
  return(g)
}

#' Check a data frame to ensure it has the minimal features for plotting
#' @param df A data frame to check
#'
#' @return A boolean indicating whether the minimal features needed for plotting
#'   (a column called \code{x} and a column called \code{y}) are present
check_data_frame_for_plot = function(df) {
  if (nrow(df) == 0) {
    # If the data frame is empty, it's suitable for plotting since nothing will
    # actually be plotted
    return(TRUE)
  }
  if (sum(c("x", "y") %in% names(df)) == 2) {
    # If the columns 'x' and 'y' are present, the data frame is suitable for
    # plotting
    return(TRUE)
  }

  else {
    # Otherwise, the data frame is not suitable for a plot
    return(FALSE)
  }
}

#' Add a feature to a ggplot2 instance
#'
#' @param g The ggplot2 instance onto which the feature will be added
#' @param feature_df The data frame containing the points to add to the feature
#' @param feature_color A hexadecimal string with which to color the feature
#'   once added to the plot
#' @param group A grouping to pass along to \code{ggplot2::aes()}. This is used
#'   for speed in the NFL and NCAA Football plotting functions
#'
#' @return A ggplot2 instance with the feature added to it
add_feature = function(g, feature_df, feature_color, group = NULL) {
  # Initialize x and y (to pass checks)
  x = y = NULL

  # First, check the data frame to ensure it has 'x' and 'y' columns
  data_frame_checked_and_passed = check_data_frame_for_plot(feature_df)

  if (data_frame_checked_and_passed) {
    # So long as the input data frame has the correct features, add the feature
    # to the plot
    g = g +
      ggplot2::geom_polygon(data = feature_df, ggplot2::aes(x, y, group = group), fill = feature_color)
  }

  else {
    stop("Incorrect column names. Data frame must have columns 'x' and 'y' to be plotted")
  }
}
