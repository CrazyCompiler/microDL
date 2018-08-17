# Generated via
#  `rails generate hyrax:work GenericWork`
class GenericWork < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = GenericWorkIndexer

  validates :title, presence: { message: 'Your work must have a title.' }


  property :related_works, predicate: ::RDF::URI.new("http://lib.my.edu/related_works"), multiple: true do |index|
    index.as :stored_searchable, :facetable
  end


  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
