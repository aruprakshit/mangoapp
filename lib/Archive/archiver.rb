module Archive
  module Archiver
    def destroy
      self.archive = 1
      self.deleted_at = Time.now
      archive_models!
      self.save
      freeze
    end

    private

    def archive_models!
      archivable_models.each do |model|
        model_name = model.name.pluralize.downcase.to_s
        self.send(model_name).each { |m| m.archive! }
      end
    end

    def archivable_models
      ActiveRecord::Base.send(:subclasses).select { |m| m.method_defined?(:archive!)}
    end
  end
end
