class StaticPagesController < ApplicationController
  def home
    if view_context.signed_in?
      @micropost  = view_context.current_user.microposts.build
      @feed_items = view_context.current_user.feed.paginate(page: params[:page])
    end
  end
  

  def help
  end

  def about
  end

  def contact
  end
end
