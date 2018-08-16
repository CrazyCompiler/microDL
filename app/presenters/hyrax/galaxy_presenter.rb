# Generated via
#  `rails generate hyrax:work Galaxy`
module Hyrax
  class GalaxyPresenter < Hyrax::WorkShowPresenter
    delegate :related_works, :index, :run, :rerun, :camcol, :field, :mjd, :ra, :dec, :node, :incl, :xbore, :mu_start, :mu_end, :nu_start, :nu_end, :xbin, :ybin, :ifindx, :nbalkan, to: :solr_document
  end
end
