# Generated via
#  `rails generate hyrax:work Galaxy`
class Galaxy < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = GalaxyIndexer

  validates :title, presence: {message: 'Your work must have a title.'}

  property :index, predicate: ::RDF::Vocab::DC11.relation, multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :run, predicate: ::RDF::URI.new("http://lib.my.edu/run"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :rerun, predicate: ::RDF::URI.new("http://lib.my.edu/rerun"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :camcol, predicate: ::RDF::URI.new("http://lib.my.edu/camcol"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :field, predicate: ::RDF::URI.new("http://lib.my.edu/field"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :mjd, predicate: ::RDF::URI.new("http://lib.my.edu/mjd"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :ra, predicate: ::RDF::URI.new("http://lib.my.edu/ra"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :dec, predicate: ::RDF::URI.new("http://lib.my.edu/dec"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :node, predicate: ::RDF::URI.new("http://lib.my.edu/node"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :incl, predicate: ::RDF::URI.new("http://lib.my.edu/incl"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :xbore, predicate: ::RDF::URI.new("http://lib.my.edu/xbore"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :mu_start, predicate: ::RDF::URI.new("http://lib.my.edu/mu_start"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :mu_end, predicate: ::RDF::URI.new("http://lib.my.edu/mu_end"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :nu_start, predicate: ::RDF::URI.new("http://lib.my.edu/nu_start"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :nu_end, predicate: ::RDF::URI.new("http://lib.my.edu/nu_end"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :xbin, predicate: ::RDF::URI.new("http://lib.my.edu/xbin"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :ybin, predicate: ::RDF::URI.new("http://lib.my.edu/ybin"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :ifindx, predicate: ::RDF::URI.new("http://lib.my.edu/ifindx"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  property :nbalkan, predicate: ::RDF::URI.new("http://lib.my.edu/nbalkan"), multiple: false do |index|
    index.as :stored_searchable, :facetable
  end

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
