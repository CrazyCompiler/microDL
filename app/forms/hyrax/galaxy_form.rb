# Generated via
#  `rails generate hyrax:work Galaxy`
module Hyrax
  # Generated form for Galaxy
  class GalaxyForm < Hyrax::Forms::WorkForm
    self.model_class = ::Galaxy
    self.terms += [:resource_type]
  end
end
