class Contact

  include ActiveModel::Validations
  include ActiveModel::Naming
  include ActiveModel::Conversion

  validates_presence_of :name, :email, :subject, :message

  attr_accessor :name, :email, :subject, :message

  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=",value)
    end
  end

  def persisted?
    false
  end


end