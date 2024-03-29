% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jobs-provider.R
\name{JobProvider}
\alias{JobProvider}
\title{JobProvider}
\value{
A JobProvider object with methods for jobs
}
\description{
generate jobs
}
\seealso{
Other ParentProviders: 
\code{\link{AddressProvider}},
\code{\link{ColorProvider}},
\code{\link{CompanyProvider}},
\code{\link{InternetProvider}},
\code{\link{LoremProvider}},
\code{\link{PersonProvider}},
\code{\link{PhoneNumberProvider}},
\code{\link{TaxonomyProvider}},
\code{\link{UserAgentProvider}}
}
\concept{ParentProviders}
\section{Super classes}{
\code{\link[charlatan:BareProvider]{charlatan::BareProvider}} -> \code{\link[charlatan:BaseProvider]{charlatan::BaseProvider}} -> \code{JobProvider}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-JobProvider-render}{\code{JobProvider$render()}}
\item \href{#method-JobProvider-clone}{\code{JobProvider$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="bothify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-bothify'><code>charlatan::BareProvider$bothify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="lexify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-lexify'><code>charlatan::BareProvider$lexify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="numerify"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-numerify'><code>charlatan::BareProvider$numerify()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit'><code>charlatan::BareProvider$random_digit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_not_zero"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_not_zero'><code>charlatan::BareProvider$random_digit_not_zero()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_not_zero_or_empty"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_not_zero_or_empty'><code>charlatan::BareProvider$random_digit_not_zero_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_digit_or_empty"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_digit_or_empty'><code>charlatan::BareProvider$random_digit_or_empty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_element"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_element'><code>charlatan::BareProvider$random_element()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_element_prob"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_element_prob'><code>charlatan::BareProvider$random_element_prob()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_int"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_int'><code>charlatan::BareProvider$random_int()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="random_letter"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-random_letter'><code>charlatan::BareProvider$random_letter()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BareProvider" data-id="randomize_nb_elements"><a href='../../charlatan/html/BareProvider.html#method-BareProvider-randomize_nb_elements'><code>charlatan::BareProvider$randomize_nb_elements()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="allowed_locales"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-allowed_locales'><code>charlatan::BaseProvider$allowed_locales()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="check_locale"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-check_locale'><code>charlatan::BaseProvider$check_locale()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="initialize"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-initialize'><code>charlatan::BaseProvider$initialize()</code></a></span></li>
<li><span class="pkg-link" data-pkg="charlatan" data-topic="BaseProvider" data-id="print"><a href='../../charlatan/html/BaseProvider.html#method-BaseProvider-print'><code>charlatan::BaseProvider$print()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobProvider-render"></a>}}
\if{latex}{\out{\hypertarget{method-JobProvider-render}{}}}
\subsection{Method \code{render()}}{
Make a job
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobProvider$render()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-JobProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-JobProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{JobProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
