\name{predict.panelAR}
\alias{predict.panelAR}
\title{
Predict method for fitted objects of class \code{"panelAR"}.
}
\description{
Predicted values from Prais-Winsten regression.
}
\usage{
\method{predict}{panelAR}(object,newdata=NULL,se.fit = FALSE,
      conf.interval = FALSE, conf.level = 0.95, na.action=na.pass,\dots)
}

\arguments{
  \item{object}{an object of class \code{"panelAR"}.
}
  \item{newdata}{an optional data frame used for prediction. If omitted, the fitted values are used.
}
  \item{se.fit}{logical. If \code{TRUE}, standard errors of predicted values are reported. Default: \code{FALSE}.
}
  \item{conf.interval}{logical. If \code{TRUE}, a confidence interval for predicted values is returned. Default: \code{FALSE}.
}
  \item{conf.level}{A number in the range \eqn{(0,1)} denoting the confidence level. Default: 0.95.
  	}
  \item{na.action}{function denoting how to handle missing values in \code{newdata}. See \code{\link{predict.lm}} for details. Default: \code{na.pass}, which predicts \code{NA} values.
  	}
\item{\dots}{further arguments passed to or from other methods.
	}
}

\value{
	\item{fit}{either a vector or a data frame containing the fitted values, as well as standard errors and/or intervals (if specified). If \code{se.fit="TRUE"}, \code{se.fit} column provides the standard errors. If \code{interval} is set, \code{lb} and \code{ub} provide the lower and upper bounds of the interval, respectively.}
	\item{df}{degrees of freedom.}
}

\author{
Konstantin Kashin \email{kkashin@fas.harvard.edu}
}
\seealso{The function \code{\link{panelAR}}.

See \code{\link{predict.lm}} and \code{\link{napredict}} for additional details.
}
\examples{
data(Rehm)
out <- panelAR(NURR ~ gini, data=Rehm, panelVar='ccode', timeVar='year', autoCorr='ar1', 
panelCorrMethod='pcse', rho.na.rm=TRUE, panel.weight='t-1', bound.rho=TRUE)
summary(out)

# fitted values (with SE and CI)
predict(out, se.fit=TRUE, conf.interval=TRUE)
}