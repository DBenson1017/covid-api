class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.references :user
      t.string :name
      t.string :state
      t.string :dataQualityGrade
      t.date :date
      t.integer :death
      t.integer :deathIncrease
      t.integer :deathProbable
      t.integer :hospitalizedCumulative
      t.integer :hospitalizedCurrently
      t.integer :inIcuCurrently
      t.integer :onVentilatorCurrently
      t.integer :negative
      t.integer :positive
      t.integer :positiveCasesViral
      t.integer :recovered
      t.integer :totalTestResult
      t.integer :totalTestsAntiboby
      t.integer :positiveTestsAntibody
      t.timestamps
    end
  end
end



