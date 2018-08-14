# Generated via
#  `rails generate hyrax:work Galaxy`
module Hyrax
  # Generated controller for Galaxy
  class GalaxiesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Galaxy

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::GalaxyPresenter
  end
end
