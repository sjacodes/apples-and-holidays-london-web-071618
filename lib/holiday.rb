require 'pry'


def holiday_supplies_hash
  holiday_supplies = {
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
end

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, supplies|
    if season == :winter
      supplies.each do |holiday_name, array|
          array.push(supply)
      end
    end
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
  returnn holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = holiday_hash[:fall].push(:columbus_day)


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_hash = {holiday_name => supply_array}
  holiday_hash[season] = new_hash
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter]

end



  # Question 5
  # Write a method to collect all Winter supplies from all the winter holidays
  describe "#all_winter_holiday_supplies" do
    it "has all the winter supplies" do
      ["Lights", "Wreath", "Party Hats"].each do |supply|
        expect(all_winter_holiday_supplies(holiday_supplies)).to include(supply)
      end
    end
  end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







