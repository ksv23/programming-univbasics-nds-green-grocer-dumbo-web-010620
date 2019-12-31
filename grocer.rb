require 'pry'

def find_item_by_name_in_collection(name, collection) #array of hashes
  # Implement me first!
  #
  # Consult README for inputs and outputs

    #1. iterate array of hashes
    #2. check each item if
  counter = 0

  while counter < collection.length do
    if collection[counter][:item] == name
      return collection[counter]          #return will exit the method and will return collection[row_index] return the item IF true
    end
    counter += 1
  end

  nil
end

    #1. return array of hashes
def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  counter = 0

  while counter < cart.length
      new_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      if new_item != nil
          new_item[counter] += 1
      else
        new_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
        }
        new_cart << new_item #shoving the new hash into new array
      end
      counter += 1
  end
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter  = 0
  while row_index < coupons.length
      cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
      couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
      cart_item_w_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
      if cart_item && cart_item[:count] >= coupons[counter][:num]
        if cart_item_w_coupon
          cart_item_w_coupon[:count] += coupons[counter][:num]
          cart_item[:count] -= coupons[counter][:num]
        else
          cart_item_w_coupon = {
            :item => couponed_item_name,
            :price => coupons[counter][:cost] / coupons[counter][:num],
            :count => coupons[counter][:num],
            :clearance => cart_item[:clearance]
          }
          cart << cart_item_w_coupon
          cart_item[:count] -= coupons[counter][:num]
        end
      end
    counter += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
