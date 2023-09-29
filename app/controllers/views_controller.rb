class ViewsController < ApplicationController
  before_action :set_link

  def show
    @link.views.create!(
      ip: request.ip,
      user_agent: request.user_agent,
    )
    # Because we're using the `allow_other_host` option, we can redirect to any URL (external)
    redirect_to @link.url, allow_other_host: true
  end

end