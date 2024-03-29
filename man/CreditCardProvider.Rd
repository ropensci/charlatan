% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/credit_card-provider.R
\name{CreditCardProvider}
\alias{CreditCardProvider}
\title{CreditCardProvider}
\description{
credit card methods
}
\examples{
z <- CreditCardProvider$new()
z$credit_card_provider()
z$credit_card_number()
z$credit_card_security_code()
z$generate_number(13)
}
\keyword{internal}
\section{Super class}{
\code{\link[charlatan:BareProvider]{charlatan::BareProvider}} -> \code{CreditCardProvider}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{luhn_lookup}}{(list) luhn lookup, named list}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-CreditCardProvider-credit_card_type}{\code{CreditCardProvider$credit_card_type()}}
\item \href{#method-CreditCardProvider-generate_number}{\code{CreditCardProvider$generate_number()}}
\item \href{#method-CreditCardProvider-credit_card_provider}{\code{CreditCardProvider$credit_card_provider()}}
\item \href{#method-CreditCardProvider-credit_card_number}{\code{CreditCardProvider$credit_card_number()}}
\item \href{#method-CreditCardProvider-credit_card_security_code}{\code{CreditCardProvider$credit_card_security_code()}}
\item \href{#method-CreditCardProvider-clone}{\code{CreditCardProvider$clone()}}
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
\if{html}{\out{<a id="method-CreditCardProvider-credit_card_type"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-credit_card_type}{}}}
\subsection{Method \code{credit_card_type()}}{
Returns a random credit card type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$credit_card_type(card_type = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{card_type}}{(character) a card type, see \code{credit_card_types}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CreditCardProvider-generate_number"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-generate_number}{}}}
\subsection{Method \code{generate_number()}}{
make a credit card number with specific starting numbers
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$generate_number(prefix, length = 13)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{prefix}}{the start of the CC number as a string, any number of digits.}

\item{\code{length}}{the length of the CC number to generate. Typically 13 or 16}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CreditCardProvider-credit_card_provider"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-credit_card_provider}{}}}
\subsection{Method \code{credit_card_provider()}}{
credit card provider
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$credit_card_provider(card_type = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{card_type}}{(character) a card type, see \code{credit_card_types}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CreditCardProvider-credit_card_number"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-credit_card_number}{}}}
\subsection{Method \code{credit_card_number()}}{
credit card number
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$credit_card_number(card_type = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{card_type}}{(character) a card type, see \code{credit_card_types}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CreditCardProvider-credit_card_security_code"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-credit_card_security_code}{}}}
\subsection{Method \code{credit_card_security_code()}}{
credit card security code
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$credit_card_security_code(card_type = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{card_type}}{(character) a card type, see \code{credit_card_types}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CreditCardProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-CreditCardProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CreditCardProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
