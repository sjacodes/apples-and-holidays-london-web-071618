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
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

# Question 4
  # Write a method that adds a new holiday and its associated supplies to any season
  describe "#add_new_holiday_with_supplies" do
    it "modifies the original hash by adding supplies of a new holiday to a season" do
      expect(holiday_supplies[:fall].keys).not_to include(:columbus_day)

      columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

      add_new_holiday_with_supplies(holiday_supplies, :fall, :columbus_day, columbus_day_supplies)

      expect(holiday_supplies[:fall].keys).to include(:columbus_day)
      expect(holiday_supplies[:fall][:columbus_day]).to match_array(columbus_day_supplies)

      expect(holiday_supplies[:winter].keys).not_to include(:valentines_day)

      valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
      add_new_holiday_with_supplies(holiday_supplies, :winter, :valentines_day, valentines_day_supplies)

      expect(holiday_supplies[:winter].keys).to include(:valentines_day)
      expect(holiday_supplies[:winter][:valentines_day]).to match_array(valentines_day_supplies)
    end
  end
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

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







