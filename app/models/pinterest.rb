class Pinterest < ApplicationRecord
    enum status: [ :ativo, :inativo ]
    validates_presence_of :description, :status
    
    def ativo
        self.update(status: :ativo)
    end
    
    include PgSearch

    pg_search_scope :search, against: [:title, :description],
    :using => {
        :tsearch => {:prefix => true}
    }

    def self.text_search(query)
        if query.present?
            search(query)
        else
            search(query)
        end
    end
end