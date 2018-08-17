# Generated via
#  `rails generate hyrax:work Galaxy`
module Hyrax
  # Generated form for Galaxy
  class GalaxyForm < Hyrax::Forms::WorkForm
    self.model_class = ::Galaxy
    self.terms += [:resource_type, :related_works, :index, :run, :rerun, :camcol, :field, :mjd, :ra, :dec,
                   :node, :incl, :xbore, :mu_start, :mu_end, :nu_start, :nu_end, :xbin, :ybin, :ifindx, :nbalkan]
  end
end
