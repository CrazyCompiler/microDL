# Generated via
#  `rails generate hyrax:work Research`
module Hyrax
  # Generated controller for Research
  class ResearchesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Research

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::ResearchPresenter
  end
end
