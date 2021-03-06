% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route-transport-api.R
\name{route_transportapi_public}
\alias{route_transportapi_public}
\title{Plan a single route with TransportAPI.com}
\usage{
route_transportapi_public(from, to, silent = FALSE,
  region = "southeast", modes = NA, not_modes = NA)
}
\arguments{
\item{from}{Text string or coordinates (a numeric vector of
\code{length = 2} representing latitude and longitude) representing a point
on Earth.}

\item{to}{Text string or coordinates (a numeric vector of
\code{length = 2} representing latitude and longitude) representing a point
on Earth. This represents the destination of the trip.}

\item{silent}{Logical (default is FALSE). TRUE hides request sent.}

\item{region}{String for the active region to use for journey plans.
Possible values are 'southeast' (default) or 'tfl'.}

\item{modes}{Vector of character strings containing modes to use. Default is
to use all modes.}

\item{not_modes}{Vector of character strings containing modes not to use.
Not used if \code{modes} is set.}
}
\description{
Provides an R interface to the TransportAPI.com public transport API.
The function returns a SpatialLinesDataFrame object representing the
public route.
Currently only works for the United Kingdom.
See \url{https://developer.transportapi.com/documentation}for more information.
}
\details{
This function uses the online routing service
TransportAPI.com to find public routes
between origins and destinations. It does not require
any key to access the API.

Note that if \code{from} and \code{to} are supplied as
character strings (instead of lon/lat pairs), Google's
geo-coding services are used via \code{geo_code}.

Note: there is now a dedicated transportAPI package:
https://github.com/ITSLeeds/transportAPI
}
\examples{

\dontrun{
# Plan the 'public' route from Hereford to Leeds
rqh <- route_transportapi_public(from = "Hereford", to = "Leeds")
plot(rq_hfd)
}

# Aim plan public transport routes with transportAPI
}
\seealso{
line2route

Other routes: \code{\link{line2routeRetry}},
  \code{\link{line2route}}, \code{\link{nearest2spdf}},
  \code{\link{route_cyclestreet}},
  \code{\link{route_dodgr}},
  \code{\link{route_graphhopper}},
  \code{\link{route_local}}, \code{\link{route_osrm}},
  \code{\link{route}}, \code{\link{viaroute2sldf}},
  \code{\link{viaroute}}
}
\concept{routes}
