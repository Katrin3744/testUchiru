class Parent <  ActiveRecord::Base
  has_many :parents_students, class_name: "ParentsStudent"
  has_many :students, through: :parents_students, class_name: "Student"

  validates_presence_of :name
end
