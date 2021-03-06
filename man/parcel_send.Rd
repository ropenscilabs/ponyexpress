% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parcel_send.R
\name{parcel_send}
\alias{parcel_send}
\title{Sends email from notifier object}
\usage{
parcel_send(email_data, type = "text", secret = NULL,
  sent = "sent-emails.rds")
}
\arguments{
\item{email_data}{tibble outputted from note_create}

\item{type}{Type of email. Either text or html.}

\item{secret}{path to secret.json file}

\item{sent}{Path for sent emails to be saved. You will need this later as a log of sent emails.}
}
\description{
Sends email from notifier object
}
\examples{
# First let's generate a sample output from note_create

sample_email <-
data.frame(To = c("N. Bluth <lucille.bluth@gmail.com>", "G.O.B. <gob@imoscardotcom.com>"),
From = c("Karthik Ram <karthik.ram@gmail.com>"),
Subject = "This is the subject",
Body = "This is the message")
# Now send emails with
\dontrun{parcel_send(sample_email, secret)}
}
