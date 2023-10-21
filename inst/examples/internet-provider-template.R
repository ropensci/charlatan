#' @title InternetProvider template
#' @description internet methods, e.g., email addresses, domain names for locale (template)
#' @export
#' @keywords internal
InternetProvider_template <- R6::R6Class(
    inherit = InternetProviderBase,
    'InternetProvider_template',
    lock_objects = FALSE,
    public= list(
        # add data here like
        # safe_email_tlds, 
        #   defaults to org, com, net
        # free_email_domains, 
        #   defaults to 'gmail.com', 'yahoo.com', 'hotmail.com'
        # tlds, 
        #   this one you definetly want to change. 
        # uri_pages, 
        #   
        # uri_paths,
        #
        # replacements
        # 
        # 
        # user_name_formats, 
        # 
        # email_formats, 
        # 
        # url_formats, 
        # 
        # uri_formats, 
        # 
        # image_place_holder_services, 
        # 
        # Function
        # fn email, fn safe_email, fn company_email, fn user_name, fn domain_word
        
        
        # add extra functions here, if you want
    )
)
