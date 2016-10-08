
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_hash| 
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end 
  end 
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"].downcase == occupation.downcase
        return contestant_hash["name"]
      end
    end 
  end 

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |seaon, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"].downcase == hometown.downcase
         count += 1
      end
    end
  end 
  count 
end

def get_occupation(data, hometown)
  # code here
  data.each do |seaon, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"].downcase == hometown.downcase
        return contestant_hash["occupation"]
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  # code here
age = 0
count = 0
data[season].each {|contestant_hash| 
    age += contestant_hash["age"].to_f
    count += 1
    }

(age/count).round(0)

end
