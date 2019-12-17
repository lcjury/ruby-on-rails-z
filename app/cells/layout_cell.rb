class LayoutCell < Cell::ViewModel
    include ActionView::Helpers::CsrfHelper
    include ActionView::Helpers::CspHelper
    include Webpacker::Helper
    
    include ::Cell::Erb

    def content_security_policy?
        controller.send(:'content_security_policy?')
    end
end
  