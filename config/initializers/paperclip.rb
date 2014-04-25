if Rails.env == "production"
  Paperclip.options[:command_path]="/usr/local/bin/identify"
end