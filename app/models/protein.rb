# Generated via
#  `rails generate hyrax:work Protein`
class Protein < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = ProteinIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  property :entry, predicate: ::RDF::URI.new("http://lib.my.edu/entry"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :entry_name, predicate: ::RDF::URI.new("http://lib.my.edu/entry_name"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :protein_name, predicate: ::RDF::URI.new("http://lib.my.edu/protein_name"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :gene_name, predicate: ::RDF::URI.new("http://lib.my.edu/gene_name"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :organism, predicate: ::RDF::URI.new("http://lib.my.edu/organism"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :length, predicate: ::RDF::URI.new("http://lib.my.edu/length"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end


  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
