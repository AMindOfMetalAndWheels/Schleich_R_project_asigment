% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cutoff_filter.R
\name{grayscale_filter_cutoff}
\alias{grayscale_filter_cutoff}
\title{Cutoff filter}
\usage{
grayscale_filter_cutoff(vector_for_filter, cutoff = 127)
}
\description{
Uses a vector_for_filter generated from your image by the aapply_cutoff_filter function.
Generates a raw cutoff vector that will be processed into an image by the apply_cutoff_filter function.
this function is built into another function. No need to use by itself.
}
