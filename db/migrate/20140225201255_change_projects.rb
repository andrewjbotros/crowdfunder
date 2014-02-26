class ChangeProjects < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
  		t.remove :funding_period
  		t.datetime :start_date
  		t.datetime :end_date
  	end
  end
end
