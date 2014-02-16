class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def set_blog
    @blog = Blog.where(subdomain: request.subdomains.first).first!

    search_paths = [request.subdomains.first, 'public'].compact.join(',')
    ActiveRecord::Base.connection.schema_search_path = search_paths

    Rails.logger.info "Multitenancy: search_path was set to: #{search_paths}"
  end
end
