# Generated via
#  `rails generate hyrax:work Protein`
module Hyrax
  # Generated form for Protein
  class ProteinForm < Hyrax::Forms::WorkForm
    self.model_class = ::Protein
    self.terms += [:resource_type,:related_works, :entry, :entry_name, :protein_name, :gene_name, :organism, :length]
  end
end
