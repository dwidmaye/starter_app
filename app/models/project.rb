class Project < ActiveRecord::Base
   validates_uniqueness_of :name

   has_many :stories #, dependent: :destroy -TODO
end
