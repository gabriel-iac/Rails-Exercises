class CombineItemsInCart < ActiveRecord::Migration
  def up
    Cart.all.each do |cart|
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        #remove individual items
        if quantity > 1
          cart.line_items.where(product_id: product_id).delete_all

          #replace a single item
          item = cart.line_items.new(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    #split itemswith quantity > 1 into multiple items
    line_items.where("quantity>1").each do |line_item|
      #add individual items
      line_item.quantity.times. do 
        line_item.create cart_id: line_item.cart_id, product_id: line_item.product_id, quantity: 1
      end
      #remove original item
      line_item.destroy
    end
  end
end
