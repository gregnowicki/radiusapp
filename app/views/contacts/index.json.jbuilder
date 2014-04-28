json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :title, :company, :email, :notes
  json.url contact_url(contact, format: :json)
end
