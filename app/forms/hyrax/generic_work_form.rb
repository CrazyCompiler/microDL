# Generated via
#  `rails generate hyrax:work GenericWork`
module Hyrax
  # Generated form for GenericWork
  class GenericWorkForm < Hyrax::Forms::WorkForm
    self.model_class = ::GenericWork
    self.terms = [:title, :creator, :contributor, :description,
                  :keyword, :license, :date_created,
                  :subject,  :identifier, :related_url,
                  :representative_id, :thumbnail_id, :rendering_ids, :files]

    self.required_fields = [:title, :creator, :keyword, :subject]
  end
end
