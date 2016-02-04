#' Create a series of (x, y) points for a graph
#' @description Create a series of (x, y) points along
#' with other style attributes for plotting on a graph
#' @param series_label a name for the series of (x, y)
#' points.
#' @param x a vector of x points.
#' @param y a vector of y points.
#' @param shape the shape for the points.
#' @param line_width the line width for the shape representing the
#' data point.
#' @param fill_color the fill color for the shape representing the
#' data point.
#' @param line_color the color of the shape line representing the
#' data point.
#' @param width the width of the shape representing the
#' data point.
#' @param height the height of the shape representing the
#' data point.
#' @export create_xy_pts

create_xy_pts <- function(series_label,
                          x,
                          y,
                          shape = "circle",
                          line_width = 2.5,
                          fill_color = "white",
                          line_color = "black",
                          width = 0.25,
                          height = 0.25){

  # Stop function if any of several
  # conditions not met
  stopifnot(length(x) == length(y))
  stopifnot(is.numeric(x))
  stopifnot(is.numeric(y))
  stopifnot(length(x) > 0)

  # Count the number of points in the plot
  point_count <- length(x)

  # Create the NDF that contains a set
  # of (x, y) points alongside attributes
  chart_nodes <-
    create_nodes(
      nodes = paste0(series_label, "_", 1:point_count),
      label = " ",
      type = series_label,
      x = x,
      y = y,
      shape = shape,
      penwidth = line_width,
      style = "filled",
      fillcolor = fill_color,
      color = line_color,
      fixedsize = "true",
      width = width,
      height = height)

  return(chart_nodes)
}