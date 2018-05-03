require 'date'
class User
    attr_accessor :firstname, :lastname, :date
    def initialize (fname,lname,datee)
    @firstname=fname
    @lastname=lname
    @date=datee
    #user_info
    end
    def user_info
        begin  
        d=Date.parse(date) 
        y=eval("#{Date.today.year.to_i}-#{d.year.to_i}")
        m=eval("#{Date.today.month.to_i}-#{d.month.to_i}")
        da=eval("#{Date.today.day.to_i}-#{d.day.to_i}")
        puts("Years: " + "#{y} " + "Months: " + "#{m} " + "Days: " + "#{da} ")
        puts("Full Name: " +  firstname + " " + lastname)  
        rescue  
        puts 'Invalid date type'  
        end   
    end
end
#User.new "dena","ahmed","1-"


#class Test < User
#    def full
#        puts(@firstname)
#    end
#end
#b = Test.new "deena","dod","1-1-1"
#b.full






