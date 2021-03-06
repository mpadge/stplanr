% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/osrmfunctions.R
\name{route_osrm}
\alias{route_osrm}
\title{Plan a route with OSRM}
\usage{
route_osrm(from, to, l = NULL, alt = FALSE, ..., singleline = TRUE)
}
\arguments{
\item{from}{Text string or coordinates (a numeric vector of
\code{length = 2} representing latitude and longitude) representing a point
on Earth.}

\item{to}{Text string or coordinates (a numeric vector of
\code{length = 2} representing latitude and longitude) representing a point
on Earth. This represents the destination of the trip.}

\item{l}{Only needed if from and to are empty, in which case this
should be a spatial object representing desire lines}

\item{alt}{Boolean value to return alternative routes (default = TRUE).}

\item{...}{Arguments passed to viaroute()}

\item{singleline}{Should a single line be returned? Default is \code{TRUE}}
}
\description{
This is a wrapper around \code{viaroute} that returns a single route between A and B.
}
\note{
The public-facing OSRM routing service (the default)
only provides routing for cars by default. For details, see
\url{https://github.com/Project-OSRM/osrm-backend/issues/4530}.
}
\examples{
\dontrun{
from <- c(-1.55, 53.80) # geo_code("leeds")
to <- c(-1.76, 53.80) # geo_code("bradford uk")
r <- route_osrm(from, to)
plot(r)
r_many <- line2route(flowlines_sf[2:9, ], route_osrm, time_delay = 1)
plot(cents)
plot(r_many$geometry)
}
}
\seealso{
Other routes: \code{\link{line2routeRetry}},
  \code{\link{line2route}}, \code{\link{nearest2spdf}},
  \code{\link{route_cyclestreet}},
  \code{\link{route_dodgr}},
  \code{\link{route_graphhopper}},
  \code{\link{route_local}},
  \code{\link{route_transportapi_public}},
  \code{\link{route}}, \code{\link{viaroute2sldf}},
  \code{\link{viaroute}}
}
\concept{routes}
