class ViewsController < ApplicationController
  before_action :set_link

  def show
    # Because we're using the `allow_other_host` option, we can redirect to any URL (external)
    redirect_to @link.url, allow_other_host: true
  end

end