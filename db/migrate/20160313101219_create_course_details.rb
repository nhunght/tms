class CreateCourseDetails < ActiveRecord::Migration
  def change
    create_table :course_details do |t|
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
