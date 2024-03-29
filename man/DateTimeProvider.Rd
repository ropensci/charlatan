% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datetime-provider.R
\name{DateTimeProvider}
\alias{DateTimeProvider}
\title{DateTimeProvider}
\description{
date and time methods
}
\examples{
z <- DateTimeProvider$new()
z$countries
z$centuries
z$century()
z$timezone()
z$unix_time()
z$date("\%Y-\%M-\%d")
z$date_time()
z$year()
z$iso8601("1932-02-12 05:32:12")
# z$iso8601("January 4, 1981")

# date time between a range of dates
(start_date <- Sys.time() - 604800L)
z$date_time_between(start_date = start_date)
# in the year 1900
z$date_time_between("1900-01-01 00:00:00 PST", "1900-12-31 00:00:00 PST")
z$date_time_between("1900-01-01", "1900-12-31")
}
\references{
https://en.wikipedia.org/wiki/Unix_time

https://en.wikipedia.org/wiki/Unix_time
}
\section{Super class}{
\code{\link[charlatan:BareProvider]{charlatan::BareProvider}} -> \code{DateTimeProvider}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{centuries}}{(character) centuries in roman numerals}

\item{\code{countries}}{(list) countries list}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-DateTimeProvider-unix_time}{\code{DateTimeProvider$unix_time()}}
\item \href{#method-DateTimeProvider-date}{\code{DateTimeProvider$date()}}
\item \href{#method-DateTimeProvider-date_time}{\code{DateTimeProvider$date_time()}}
\item \href{#method-DateTimeProvider-date_time_fromtimestamp}{\code{DateTimeProvider$date_time_fromtimestamp()}}
\item \href{#method-DateTimeProvider-iso8601}{\code{DateTimeProvider$iso8601()}}
\item \href{#method-DateTimeProvider-year}{\code{DateTimeProvider$year()}}
\item \href{#method-DateTimeProvider-century}{\code{DateTimeProvider$century()}}
\item \href{#method-DateTimeProvider-timezone}{\code{DateTimeProvider$timezone()}}
\item \href{#method-DateTimeProvider-date_time_between}{\code{DateTimeProvider$date_time_between()}}
\item \href{#method-DateTimeProvider-clone}{\code{DateTimeProvider$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="bothify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-bothify'><code>charlatan::BareProvider$bothify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="lexify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-lexify'><code>charlatan::BareProvider$lexify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="numerify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-numerify'><code>charlatan::BareProvider$numerify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="print"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-print'><code>charlatan::BareProvider$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit'><code>charlatan::BareProvider$random_digit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_not_zero"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_not_zero'><code>charlatan::BareProvider$random_digit_not_zero()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_not_zero_or_empty"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_not_zero_or_empty'><code>charlatan::BareProvider$random_digit_not_zero_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_or_empty"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_or_empty'><code>charlatan::BareProvider$random_digit_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_element"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_element'><code>charlatan::BareProvider$random_element()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_element_prob"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_element_prob'><code>charlatan::BareProvider$random_element_prob()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_int"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_int'><code>charlatan::BareProvider$random_int()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_letter"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_letter'><code>charlatan::BareProvider$random_letter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="randomize_nb_elements"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-randomize_nb_elements'><code>charlatan::BareProvider$randomize_nb_elements()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-unix_time"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-unix_time}{}}}
\subsection{Method \code{unix_time()}}{
Get a timestamp between January 1, 1970 and now, unless passed
explicit \code{start_date} or \code{end_date} values
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$unix_time(start_date = NULL, end_date = "now")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{start_date}}{start date, a valid date format}

\item{\code{end_date}}{start date, a valid date format, default: "now"}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-date"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-date}{}}}
\subsection{Method \code{date()}}{
Generate a date between January 1, 1970 and now,
with given pattern
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$date(pattern = "\%Y-\%m-\%d")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{pattern}}{date pattern, default: \verb{\%Y-\%m-\%d}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-date_time"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-date_time}{}}}
\subsection{Method \code{date_time()}}{
Generate a date time between January 1, 1970 and now
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$date_time(tzinfo = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tzinfo}}{timezone, see \link{timezone}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-date_time_fromtimestamp"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-date_time_fromtimestamp}{}}}
\subsection{Method \code{date_time_fromtimestamp()}}{
Generate a iso8601 format date
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$date_time_fromtimestamp(timestamp, tzinfo = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{timestamp}}{a timestamp}

\item{\code{tzinfo}}{timezone, see \link{timezone}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-iso8601"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-iso8601}{}}}
\subsection{Method \code{iso8601()}}{
Generate a iso8601 format date
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$iso8601(date, tzinfo = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{date}}{a date, in a valid date format}

\item{\code{tzinfo}}{timezone, see \link{timezone}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-year"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-year}{}}}
\subsection{Method \code{year()}}{
generate a year
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$year()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-century"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-century}{}}}
\subsection{Method \code{century()}}{
generate a century
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$century()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-timezone"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-timezone}{}}}
\subsection{Method \code{timezone()}}{
generate a timezone
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$timezone()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-date_time_between"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-date_time_between}{}}}
\subsection{Method \code{date_time_between()}}{
Generate a date time based on a random date between
two given dates
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$date_time_between(start_date, end_date = "now", tzinfo = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{start_date}}{start date, a valid date format}

\item{\code{end_date}}{start date, a valid date format, default: "now"}

\item{\code{tzinfo}}{timezone, see \link{timezone}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DateTimeProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-DateTimeProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DateTimeProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
