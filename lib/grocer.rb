require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |each_item|
    each_item.each do |key, value|
      if value == name
        return each_item
      end
    end
  end
  return nil
end

def consolidate_cart(cart)
  index = 0
  new_cart = []
  
  while index < cart.length do
    temp_item = cart[index][:item]
    found_item = find_item_by_name_in_collection(temp_item, new_cart)
    
    if found_item
      new_cart_index = 0
      while new_cart_index < new_cart.length do
  
        
        if new_cart[new_cart_index][:item] == found_item[:item]
          new_cart[new_cart_index][:count] += 1
        end
        new_cart_index += 1
      end
    else
      
      cart[index][:count] = 1
      
      new_cart << cart[index]
    end
    
    index += 1
  end
  
  new_cart
end

# def consolidate_cart(cart)
#   cart.each do |each_item|
#     if !each_item[:count]
#       each_item[:count] = 1
#     end
#   end
#   index = 0
#   while index < cart.length do
    
#     if cart[index]
#   end
    





