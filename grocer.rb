require 'pry'

def find_item_by_name_in_collection(name, collection) #array of hashes
  # Implement me first!
  #
  # Consult README for inputs and outputs

    #1. iterate array of hashes
    #2. check each item if
  row_index = 0

  while row_index < collection.length do
    if collection[row_index][:item] == name
      return collection[row_index]          #return will exit the method and will return collection[row_index] return the item IF true
    end
    row_index += 1
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
  row_index = 0

  while row_index < cart.length do
      new_item = find_item_by_name_in_collection(cart[row_index][:item], new_cart)
      if new_item != nil
          new_item[row_index] += 1
      else
        new_item = {
          :item => cart[row_index][:item],
          :price => cart[row_index][:price],
          :clearance => cart[row_index][:clearance],
          :count => 1
        }
        new_cart << new_item #shoving the new hash into new array
      end
      row_index += 1
  end
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
