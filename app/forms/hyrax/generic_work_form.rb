# Generated via
#  `rails generate hyrax:work GenericWork`
module Hyrax
  # Generated form for GenericWork
  class GenericWorkForm < Hyrax::Forms::WorkForm
    self.model_class = ::GenericWork
    self.required_fields = [:title, :related_works,:creator, :keyword, :resource_type]

    self.terms += [:resource_type]
  end
end
