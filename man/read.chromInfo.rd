\name{read.chromInfo}
\alias{read.chromInfo}
\title{
Read/parse chromInfo data from a data frame/file/UCSC database


}
\description{
Read/parse chromInfo data from a data frame/file/UCSC database


}
\usage{
read.chromInfo(chromInfo = paste0(system.file(package = "circlize"),
    "/extdata/chromInfo.txt"), species = NULL, chromosome.index = NULL, sort.chr = TRUE)
}
\arguments{

  \item{chromInfo}{Path of the chromInfo file or a data frame that already contains chromInfo data
  \item{species}{Abbreviations of species. e.g. hg19 for human, mm10 for mouse. If this
  \item{chromosome.index}{subset of chromosomes, also used to re-set chromosome orders.
  \item{sort.chr}{Whether chromosome names should be sorted (first sort by numbers then by letters).

}
\details{
The function read the chromInfo data, sort the chromosome names and calculate the length of each chromosome. 

You can find the data structure for the cytoband data from \url{http://hgdownload.cse.ucsc.edu/goldenpath/hg19/database/chromInfo.txt.gz}

If \code{sort.chr} is not set and \code{chromosome.index} is not specified, there would be several circumstances when determining the order of chromosomes. 


}
\value{
\describe{
  \item{df}{Data frame for chromInfo data (rows are sorted if \code{sort.chr} is set to \code{TRUE})
  \item{chromosome}{Sorted chromosome names
  \item{chr.len}{Length of chromosomes. Order are same as \code{chromosome}
}


}