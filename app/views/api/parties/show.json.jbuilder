json.extract! @party, :name

json.guests do
  json.array! @party.guests do |guest|
    json.name guest.name
    json.age guest.age
    json.gifts do
      json.array! guest.gifts do |gift|
        json.title gift.title
      end
    end
  end
end
