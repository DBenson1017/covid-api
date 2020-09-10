class ReportsController < ApplicationController

    def index
        reports = Report.all
        render json: reports
    end 

    def create
        report = Report.create!(report_params)
        render json: report
    end 

    def show
        report=Report.find(params[:id])
        render json: report 
    end 


    private 

    def report_params
        params.require(:report).permit(:user_id, :name, :state, :dataQualityGrade, :date, :death, :deathIncrease, :deathProbable, :hospitalizedCumulative, :hospitalizedCurrently, :inIcuCurrently, :onVentilatorCurrently, :negative, :positive, :positiveCasesViral, :recovered, :totalTestResult, :totalTestsAntiboby, :positiveTestsAntibody)
    end 

end
