require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |holiday, items|
    items << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, items|
    items << supply
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  season = season.to_sym
  holiday_name = holiday_name.to_sym
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, items|
    winter_supplies << items
  end 
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
    # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
 holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
 
=begin 
  #collected seasons in an array 
  seasons_array = []
  holiday_hash.each do |season, holiday|
    seasons_array << season
  end 
  #capitalizes the season names in the array 
   i=0
  while i<seasons_array.length do 
    seasons_array[i] = seasons_array[i].capitalize
    i+=1
  end 
  #winter holidays
  winter_holidays = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[0].downcase
      holiday.each do |h, supply|
        winter_holidays << h
      end 
    end 
  end 
  #capitalizes the winter holiday names in the array 
   i=0
  while i<winter_holidays.length do 
    winter_holidays[i] = winter_holidays[i].capitalize
    i+=1
  end 
  #winter supplies 
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[0].downcase
      holiday.each do |h, s|
        winter_supplies << s
      end 
    end 
  end 
  #summer holidays
  summer_holidays = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[1].downcase
      holiday.each do |h, supply|
        summer_holidays << h
      end 
    end 
  end 
  #capitalizes the summer holiday names in the array 
   i=0
  while i<summer_holidays.length do 
    summer_holidays[i] = summer_holidays[i].capitalize
    i+=1
  end 
  #summer supplies 
  summer_supplies = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[1].downcase
      holiday.each do |h, s|
        summer_supplies << s
      end 
    end 
  end 
  #fall holidays
  fall_holidays = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[2].downcase
      holiday.each do |h, supply|
        fall_holidays << h
      end 
    end 
  end 
  #capitalizes the fall holiday names in the array 
   i=0
  while i<fall_holidays.length do 
    fall_holidays[i] = fall_holidays[i].capitalize
    i+=1
  end 
  #fall supplies 
  fall_supplies = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[2].downcase
      holiday.each do |h, s|
        fall_supplies << s
      end 
    end 
  end 
   #spring holidays
  spring_holidays = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[3].downcase
      holiday.each do |h, supply|
        spring_holidays << h
      end 
    end 
  end 
  #capitalizes the spring holiday names in the array 
   i=0
  while i<spring_holidays.length do 
    spring_holidays[i] = spring_holidays[i].capitalize
    i+=1
  end 
  #spring supplies 
  spring_supplies = []
  holiday_hash.each do |season, holiday|
    if season == seasons_array[3].downcase
      holiday.each do |h, s|
        spring_supplies << s
      end 
    end 
  end 
  xmas_supplies = winter_supplies[0].to_s
  puts xmas_supplies.gsub!(/\W/," ")
  puts "#{seasons_array[0]}:"
  puts "  #{winter_holidays[0]}: #{winter_supplies[0]}"
  puts winter_holidays[1]
  puts winter_supplies[1]
  puts seasons_array[1]
  puts summer_holidays
  puts summer_supplies
  puts seasons_array[2]
  puts fall_holidays
  puts fall_supplies
  puts seasons_array[3]
  puts spring_holidays
  puts spring_supplies
=end 
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |h, s|
      s.each do |v|
        if v == "BBQ"
          bbq_holidays<< h
        end 
      end 
    end 
  end 
  bbq_holidays
end

