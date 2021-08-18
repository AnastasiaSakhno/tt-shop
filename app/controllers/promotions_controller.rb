class PromotionsController < Spree::BaseController
  layout 'spree/layouts/spree_application'

  def index
    @promotions = Spree::Promotion.all
  end
end
