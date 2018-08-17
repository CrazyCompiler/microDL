# Generated via
#  `rails generate hyrax:work Galaxy`
module Hyrax
  module Actors
    class GalaxyActor < Hyrax::Actors::BaseActor
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
        current_related_work = current_work.attributes().values_at("related_works")
        current_related_work = current_related_work.to_a[0].to_a
        related_work_diff = current_related_work - env.attributes["related_works"]

        for work_ID in related_work_diff
          related_works = ::ActiveFedora::Base.find(work_ID)
          related_works = related_works.attributes().values_at("related_works")
          related_works = related_works.to_a[0].to_a
          related_works.delete(current_work_ID)
          related_works.update({"related_works" => related_works})
          related_works.save!
        end

      end

      def update_related_works(env)
        current_work_ID = env.curation_concern.id
        related_work_ids = env.attributes["related_works"]
        for work_ID in related_work_ids
          work = ::ActiveFedora::Base.find(work_ID)
          related_works = work.attributes().values_at("related_works")
          related_works = related_works.to_a[0].to_a
          unless related_works.include? current_work_ID
            related_works << current_work_ID
            work.update({"related_works" => related_works})
            work.save!
          end

        end
      end
    end
  end
end
