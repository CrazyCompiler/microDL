# Generated via
#  `rails generate hyrax:work Protein`
module Hyrax
  # Generated controller for Protein
  class ProteinsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Protein

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::ProteinPresenter
  end
end
