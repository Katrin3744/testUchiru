class Student < ActiveRecord::Base
  has_many :parents_students, class_name: "ParentsStudent"
  has_many :parents, through: :parents_students, class_name: "Parent"

  validates_presence_of :name

  # запросы к БД с помощью интерфейса ActiveRecord
  scope :amount_ar, -> () { count }
  scope :amount_name_ivan_ar, -> () { where(name: 'Иван').count }
  scope :amount_created_ar, -> () { where("created_at > :date", date: '01.09.2020'.to_date).count }
  scope :amount_with_parents_ar, -> () { joins(:parents).distinct(:student_id).count }
  scope :amount_with_parent_marina_ar, -> () { joins(:parents).where('parents.name = :name', name: 'Марина').distinct(:student_id).count }
  scope :amount_no_parents_ar, -> () { includes(:parents).where(parents: {id: nil}).count }

  # чистые SQL запросы
  def self.amount_clear_sql
    connection.exec_query('SELECT COUNT(*) FROM students').rows.first.first
  end

  def self.amount_name_ivan_clear_sql
    connection.exec_query("SELECT COUNT(*) FROM students WHERE name = 'Иван'").rows.first.first
  end

  def self.amount_created_after_clear_sql
    connection.exec_query("SELECT COUNT(*) FROM students WHERE created_at > '2020-09-01'").rows.first.first
  end

  def self.amount_with_parents_clear_sql
    connection.exec_query("SELECT COUNT(DISTINCT students.id) FROM students
                           INNER JOIN parents_students ON students.id = parents_students.student_id").rows.first.first
  end

  def self.amount_with_parent_marina_clear_sql
    connection.exec_query("SELECT COUNT(DISTINCT students.id) FROM students
                            INNER JOIN parents_students ON students.id = parents_students.student_id
                            INNER JOIN parents ON parents_students.parent_id = parents.id
                            WHERE parents.name = 'Марина'").rows.first.first
  end

  def self.amount_no_parents_clear_sql
    connection.exec_query("SELECT COUNT(*) FROM students
                           LEFT JOIN parents_students ON students.id = parents_students.student_id
                           WHERE parents_students.parent_id IS NULL").rows.first.first
  end
end
