module Archive
  module Archivable
    def archive!
      self.archive = 1
      self.deleted_at = Time.now
      self.save
    end
  end
end
