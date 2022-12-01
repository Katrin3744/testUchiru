require_relative '../app/models/student.rb'
require_relative '../app/models/parent.rb'
require_relative '../app/models/parents_student.rb'

student1 = Student.create(name: "Иван") # с именем Иван и родителем Мариной 1
student2 = Student.create(name: "student2") # с родителем Мариной 1
student3 = Student.create(name: "student3") # с родителем Мариной 2
Student.create(name: "student4") # без родителей
parent1 = Parent.create(name: "Марина")
parent2 = Parent.create(name: "parent2")
parent3 = Parent.create(name: "Марина")
ParentsStudent.create([{ parent: parent1, student: student1},
                       {parent: parent1, student: student2},
                       {parent: parent3, student: student3},
                       {parent: parent2, student: student3}])