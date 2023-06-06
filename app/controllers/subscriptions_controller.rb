class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subscriptions = Subscription.all
  end
end
