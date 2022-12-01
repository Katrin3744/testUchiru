class ParentsStudent <  ActiveRecord::Base
  belongs_to :parent, class_name: "Parent"
  belongs_to :student, class_name: "Student"
end
