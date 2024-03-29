% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/useragent-provider.R
\name{UserAgentProvider}
\alias{UserAgentProvider}
\title{UserAgentProvider}
\value{
UserAgentProvider object.
}
\description{
user agent methods
For instance mac_processor, user_agents, chrome and firefox user agents.
}
\seealso{
Other ParentProviders: 
\code{\link{AddressProvider}},
\code{\link{ColorProvider}},
\code{\link{CompanyProvider}},
\code{\link{InternetProvider}},
\code{\link{JobProvider}},
\code{\link{LoremProvider}},
\code{\link{PersonProvider}},
\code{\link{PhoneNumberProvider}},
\code{\link{TaxonomyProvider}}
}
\concept{ParentProviders}
\section{Super classes}{
\code{\link[charlatan:BareProvider]{charlatan::BareProvider}} -> \code{\link[charlatan:BaseProvider]{charlatan::BaseProvider}} -> \code{UserAgentProvider}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-UserAgentProvider-mac_processor}{\code{UserAgentProvider$mac_processor()}}
\item \href{#method-UserAgentProvider-linux_processor}{\code{UserAgentProvider$linux_processor()}}
\item \href{#method-UserAgentProvider-user_agent}{\code{UserAgentProvider$user_agent()}}
\item \href{#method-UserAgentProvider-chrome}{\code{UserAgentProvider$chrome()}}
\item \href{#method-UserAgentProvider-firefox}{\code{UserAgentProvider$firefox()}}
\item \href{#method-UserAgentProvider-safari}{\code{UserAgentProvider$safari()}}
\item \href{#method-UserAgentProvider-opera}{\code{UserAgentProvider$opera()}}
\item \href{#method-UserAgentProvider-internet_explorer}{\code{UserAgentProvider$internet_explorer()}}
\item \href{#method-UserAgentProvider-windows_platform_token}{\code{UserAgentProvider$windows_platform_token()}}
\item \href{#method-UserAgentProvider-linux_platform_token}{\code{UserAgentProvider$linux_platform_token()}}
\item \href{#method-UserAgentProvider-mac_platform_token}{\code{UserAgentProvider$mac_platform_token()}}
\item \href{#method-UserAgentProvider-clone}{\code{UserAgentProvider$clone()}}
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
\if{html}{\out{<a id="method-UserAgentProvider-mac_processor"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-mac_processor}{}}}
\subsection{Method \code{mac_processor()}}{
a mac processor
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$mac_processor()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-linux_processor"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-linux_processor}{}}}
\subsection{Method \code{linux_processor()}}{
a linux processor
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$linux_processor()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-user_agent"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-user_agent}{}}}
\subsection{Method \code{user_agent()}}{
a random user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$user_agent()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-chrome"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-chrome}{}}}
\subsection{Method \code{chrome()}}{
a chrome user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$chrome(
  version_from = 13,
  version_to = 63,
  build_from = 800,
  build_to = 899
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{version_from}}{(integer) minimum version}

\item{\code{version_to}}{(integer) maximum version}

\item{\code{build_from}}{(integer) minimum build}

\item{\code{build_to}}{(integer) maximum build}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-firefox"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-firefox}{}}}
\subsection{Method \code{firefox()}}{
a firefox user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$firefox()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-safari"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-safari}{}}}
\subsection{Method \code{safari()}}{
a safari user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$safari()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-opera"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-opera}{}}}
\subsection{Method \code{opera()}}{
an opera user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$opera()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-internet_explorer"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-internet_explorer}{}}}
\subsection{Method \code{internet_explorer()}}{
an internet explorer user agent string
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$internet_explorer()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-windows_platform_token"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-windows_platform_token}{}}}
\subsection{Method \code{windows_platform_token()}}{
a windows platform token
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$windows_platform_token()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-linux_platform_token"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-linux_platform_token}{}}}
\subsection{Method \code{linux_platform_token()}}{
a linux platform token
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$linux_platform_token()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-mac_platform_token"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-mac_platform_token}{}}}
\subsection{Method \code{mac_platform_token()}}{
a mac platform token
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$mac_platform_token()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserAgentProvider-clone"></a>}}
\if{latex}{\out{\hypertarget{method-UserAgentProvider-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserAgentProvider$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
