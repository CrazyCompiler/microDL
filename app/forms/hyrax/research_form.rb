# Generated via
#  `rails generate hyrax:work Research`
module Hyrax
  # Generated form for Research
  class ResearchForm < Hyrax::Forms::WorkForm
    self.model_class = ::Research
    self.terms += [:resource_type]
  end
end
