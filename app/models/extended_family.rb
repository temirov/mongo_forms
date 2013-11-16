class ExtendedFamily
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :relative
  field :alive, type: Mongoid::Boolean, default: true, pre_processed: true
end
