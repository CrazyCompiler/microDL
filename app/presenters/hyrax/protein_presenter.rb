# Generated via
#  `rails generate hyrax:work Protein`
module Hyrax
  class ProteinPresenter < Hyrax::WorkShowPresenter
    delegate :related_works, :entry, :entry_name, :protein_name, :gene_name, :organism, :length, to: :solr_document
  end
end
