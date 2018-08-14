# Generated via
#  `rails generate hyrax:work Protein`
module Hyrax
  # Generated form for Protein
  class ProteinForm < Hyrax::Forms::WorkForm
    self.model_class = ::Protein
    self.terms += [:resource_type]
  end
end
