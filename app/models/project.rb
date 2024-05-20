class Project < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :image, presence: true
    validates :github_link, presence: true
    validates :project_link, presence: true
  
    # Custom validation for dates
    validate :end_date_is_after_start_date
  
    private
    def end_date_is_after_start_date
      if end_date < start_date
        errors.add(:end_date, "must be after the start date")
      end
    end    
end
  