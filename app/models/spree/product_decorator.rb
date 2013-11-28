Spree::Product.class_eval do
  delegate_belongs_to :master, :sale_price
  def on_sale?
    variants_including_master.any?{ |v| v.on_sale? }
  end
end
