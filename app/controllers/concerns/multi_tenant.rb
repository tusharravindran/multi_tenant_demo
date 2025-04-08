module MultiTenant
    extend ActiveSupport::Concern
  
    included do
      set_current_tenant_through_filter
      before_action :set_current_account
    end
  
    def set_current_account
      if request.subdomain.present?
        account = Account.find_by(subdomain: request.subdomain)
        if account
            set_current_tenant(account)
          else
            render file: "#{Rails.root}/public/404.html", status: :not_found
          end
      end
    end
  end
  