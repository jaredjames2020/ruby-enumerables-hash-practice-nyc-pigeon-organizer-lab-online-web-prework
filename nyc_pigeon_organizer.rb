require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |keys, values|
      values.each do |item|
          pigeon_list[item] = {} unless pigeon_list[item]
          if !pigeon_list[item][key]
          pigeon_list[item][key] = [keys.to_s] 
          else 
          pigeon_list[item][key].push(keys.to_s)
          end
      end
    end
  end
  pigeon_list
end