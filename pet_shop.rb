require ('pry-byebug')

def pet_shop_name(user)
return user[:name]
end

def total_cash(user)
return user[:admin][:total_cash]
end

def add_or_remove_cash(user, amount)
  return user[:admin][:total_cash] += amount
end

# def add_or_remove_cash(user, amount)
#   return user[:admin][:total_cash] += amount
# end

def pets_sold(user)
  return user[:admin][:pets_sold]
end

def increase_pets_sold(user, number)
  return user[:admin][:pets_sold] += number
end

def stock_count(user)
  return user[:pets].length
end

def pets_by_breed(user, breed)
    result = []
      for attribute in user[:pets]

      result << attribute if attribute[:breed] == breed
      end
    return result
end

def pets_by_breed(user, breed)
      result = []
        for attribute in user[:pets]

        result << attribute if attribute[:breed] == breed
        end
      return result
end


def find_pet_by_name(user, name)

  for pet in user[:pets]
    return pet if pet[:name] == name
  end
    return nil
end

def remove_pet_by_name(user, name)

pet = user[:pets]

    for attribute in pet
      for key, value in attribute
      pet.delete(attribute) if value == name
      end
    end
    return find_pet_by_name(user, name)
   
end

def add_pet_to_stock(user, new_pet)

 user[:pets] << new_pet
 puts user[:pets].length

end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer_pet_count(customer)
end






