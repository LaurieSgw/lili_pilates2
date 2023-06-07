class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subscriptions = Subscription.all
  end

  def courses_number
    @courses_number = 0
    @subscription = Subscription.find(params[:id])
    if @courses_number <= @subscription.sub_type
      @courses_number += 1
    else
      puts "Vous êtes arrivé.e au terme de votre abonnement.
      Veuillez le renouveler afin de pouvoir réserver de nouveaux cours."
    end
  end
end
