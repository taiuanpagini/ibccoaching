class Pinterest < ApplicationRecord
    def self.language(title)
        return 'Ruby'   if title =~ /.*ruby.*/
        return 'Python' if title =~ /.*python.*/
    end
    validates :title, :image, :description, presence: true
    has_attached_file :image, :styles => { :big => "300x300", :thumb => "200x>", :mini => "100x>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
    
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
