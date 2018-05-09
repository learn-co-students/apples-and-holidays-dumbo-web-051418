require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday_hash[season].each do |holiday, ornament|
      puts "  #{holiday.to_s.split('_').map{|letter| letter.capitalize}.join(' ')}: #{ornament.join(", ")}"
    end
  end
end

#
def all_holidays_with_bbq(holiday_hash)
  bbq_list = holiday_hash.collect do |season, holidays|
    holidays.collect  do |holiday, supplies| holiday if supplies.include?('BBQ')
      end
    end
  bbq_list.flatten.compact
end
