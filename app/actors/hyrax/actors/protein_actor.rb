# Generated via
#  `rails generate hyrax:work Protein`
module Hyrax
  module Actors
    class ProteinActor < Hyrax::Actors::BaseActor
      def create(env)
        apply_creation_data_to_curation_concern(env)
        apply_save_data_to_curation_concern(env)
        save(env) && next_actor.create(env) && run_callbacks(:after_create_concern, env) && update_related_works(env)
      end

      def update(env)
        remove_non_related_works(env)
        apply_update_data_to_curation_concern(env)
        apply_save_data_to_curation_concern(env)
        next_actor.update(env) && save(env) && run_callbacks(:after_update_metadata, env) && update_related_works(env)
      end

      def remove_non_related_works(env)
        current_work_ID = env.curation_concern.id
        current_work = ::ActiveFedora::Base.find(current_work_ID)
        current_related_urls = current_work.attributes().values_at("related_url")
        current_related_urls = current_related_urls.to_a[0].to_a
        related_work_diff = current_related_urls - env.attributes["related_url"]

        for work_ID in related_work_diff
          related_work = ::ActiveFedora::Base.find(work_ID)
          related_urls = related_work.attributes().values_at("related_url")
          related_urls = related_urls.to_a[0].to_a
          related_urls.delete(current_work_ID)
          related_work.update({"related_url" => related_urls})
          related_work.save!
        end

      end

      def update_related_works(env)
        current_work_ID = env.curation_concern.id
        related_work_ids = env.attributes["related_url"]
        for work_ID in related_work_ids
          work = ::ActiveFedora::Base.find(work_ID)
          related_urls = work.attributes().values_at("related_url")
          related_urls = related_urls.to_a[0].to_a
          unless related_urls.include? current_work_ID
            related_urls << current_work_ID
            work.update({"related_url" => related_urls})
            work.save!
          end

        end
      end
    end
  end
end
