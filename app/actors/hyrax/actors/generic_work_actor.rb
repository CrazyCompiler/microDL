# Generated via
#  `rails generate hyrax:work GenericWork`
module Hyrax
  module Actors
    class GenericWorkActor < Hyrax::Actors::BaseActor
      def create(env)
        apply_creation_data_to_curation_concern(env)
        apply_save_data_to_curation_concern(env)
        save(env) && next_actor.create(env) && run_callbacks(:after_create_concern, env) && update_related_works(env)
      end

      def update_related_works(env)
        current_work_ID = env.curation_concern.id
        related_work_ids = env.attributes["related_url"]
        for work_ID in related_work_ids
          work = ::ActiveFedora::Base.find(work_ID)
          related_urls = work.attributes().values_at("related_url")
          related_urls = related_urls.to_a[0].to_a
          related_urls << current_work_ID
          work.update({"related_url" => related_urls})
          work.save!
        end
      end
    end
  end
end
