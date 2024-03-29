% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/currency-provider.R
\name{CurrencyProvider}
\alias{CurrencyProvider}
\title{CurrencyProvider}
\description{
currencies
}
\examples{
z <- CurrencyProvider$new()
z$render()
}
\keyword{internal}
\section{Super class}{
\code{\link[charlatan:BareProvider]{charlatan::BareProvider}} -> \code{CurrencyProvider}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{formats}}{(character) currency formats character vector}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-CurrencyProvider-render}{\code{CurrencyProvider$render()}}
\item \href{#method-CurrencyProvider-clone}{\code{CurrencyProvider$clone()}}
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
\if{html}{\out{<a id="method-CurrencyProvider-render"></a>}}
\if{latex}{\out{\hypertarget{method-CurrencyProvider-render}{}}}
\subsection{Method \code{render()}}{
get a currency
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CurrencyProvider$render()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
(character string) of length 3
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CurrencyProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-CurrencyProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CurrencyProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
