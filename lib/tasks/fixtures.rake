namespace :db do
  namespace :fixtures do
    desc "Load seeds then paperclip_files "
    task :load => :environment do
#      Rake::Task['db:seed'].invoke :RAILS_ENV => Rails.env
      Rake::Task['db:fixtures:load_paperclip_files'].invoke :RAILS_ENV => Rails.env
      Rake::Task['db:fixtures:post_process'].invoke :RAILS_ENV => Rails.env
    end

    desc "Load paperclip files from fixtures"
    task :load_paperclip_files => :environment do
      Dir.glob(Rails.root.to_s + '/app/models/*').collect do |path|
        path.match(/\w+\.rb\Z/i).to_s.gsub(/\.rb\Z/i,'').camelize.constantize
      end.each do |klass|
        if klass.instance_variable_names.include?("@inheritable_attributes") and klass.read_inheritable_attribute(:attachment_definitions)
          klass.attachment_definitions.keys.each do |key|
            klass.where("#{key}_file_name IS NOT NULL").each do |instance|
              instance.send "#{key}=", File.new(File.join(Rails.root, "test/fixtures/files/", instance.send("#{key}_file_name")))
              instance.send(key).reprocess!
              instance.save(:validate => false)
            end
          end
        end
      end
    end

    desc "Post process fixtures in order to prepare data"
    task :post_process => :environment do
      Store.all.map(&:save)
    end

  end
end
