require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
   }
  
  
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, value|
      if attribute == :fourth_of_july
        return holiday[attribute][1]
      end
    end
  end
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] = supply  # << / = 
  holiday_hash[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  list_of_supplies = holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end
  list_of_supplies.flatten
  #why dont we return this method?
end

def all_supplies_in_holidays(holiday_hash)
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"  #season first 
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect {|name| name.capitalize}.join(" ")}: #{supplies.join(", ")}" 
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  with_BBQ = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include?("BBQ")
        with_BBQ << holiday
        with_BBQ.flatten
      end
    end
  end
  return with_BBQ
end
  







