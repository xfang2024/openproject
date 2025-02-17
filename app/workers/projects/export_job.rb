require "active_storage/filename"

module Projects
  class ExportJob < ::Exports::ExportJob
    self.model = Project

    private

    def prepare!
      self.query = ::ProjectQuery.from_hash(query)
    end
  end
end
