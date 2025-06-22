ActiveSupport.on_load(:active_storage_blob) do
  ActiveStorage::Current.url_options ||= { host: "http://localhost:3000" }
end
