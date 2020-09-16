\name{nload}
\alias{nload}
\title{Load and Update Packages}
\usage{
nload(... , dependencies = TRUE, update = TRUE)
\description{
A loader function with a auto-update functionality that loads packages if they are installed, and installs and updates them beforehand if they are missing/outdated.
}
\arguments{
  \item{...}{The name/names of the packages that should be loaded, it canbe a string/string vector but it doesnt have to be}

  \item{update}{Defaults to TRUE. If update is set to TRUE, outdated packages will be actualized to the newest version}

  \item{dependencies}{Defaults to TRUE, If depencencies is set to TRUE, not installed packages will be installed with their dependencies. This is highly recommended}

}

\note{
if you encounter any bugs or problems please feel free to contact me on github (@SValv) or via email to s.valverde146@gmail.com.
Since I am farely new to coding and have no experience with development of anything this is actually very likely.
}

\examples{

## load/install dplyr

SU::nload(dplyr)

## load/install dplyr as string

SU::nload("dplyr")

## load/install dplyr and data.table

SU::nload(dplyr, data.table)

## load/install dplyr and data.table as string

SU::nload(c("dplyr", "data.table"))


## load/install dplyr and data.table without installing dependencies

SU::nload(dplyr, data.table, dependencies==F)

## load/install dplyr and data.table without update to the newest package version

SU::nload(dplyr, data.table, update==F)


}
