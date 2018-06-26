class CombineItemsInCart < ActiveRecord::Migration[5.0]
  def change
  end
  def up
    #reemplaza muchos items por un solo producto en un carrito con un solo item
	Cart.all.each do |cart|
	  #cuenta el numero de cada producto en el carrito
	  sums=cart.line_items.group(:product_id).sum(:quantity)
	  
	  sums.each do |product_id, quantity|
	    if quantity > 1
		  #remueve items individuales
		  cart.line_items.where(product_id: product_id).delete_all
		  
		  #reemplaza con un solo item
		  item=cart.line_items.build(product_id: product_id)
		  item.quantity = quantity
		  item.save!
		end
      end
	end
  end
end
