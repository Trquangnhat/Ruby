class Human
      @name_243;
      @hair_243;
      @age_243;
      @height_243;
      @weight_243;
      @email_243;
      @phone_243;
      @nation_243;
   
      def initialize(name_243, hair_243, age_243, height_243, weight_243, email_243, phone_243,nation_243)
         @name_243 = name_243;
         @hair_243 = hair_243;
         @age_243 = age_243;
         @height_243 = height_243;
         @weight_243 = weight_243;
         @email_243 = email_243;
         @phone_243 = phone_243;
         @nation_243 = nation_243;
      end
   
      attr_accessor :name_243, :hair_243, :age_243, :height_243, :weight_243, :email_243, :phone_243, :nation_243;
   
      def showInformation
         puts "\nName : #{name_243}||Hair: #{hair_243}||Age: #{age_243}||Height: #{height_243}||Weight: #{weight_243}||Email: #{email_243}||Phone: #{phone_243}||Nation: #{nation_243};"
       end
   end
   
   class Student < Human
      $code_243;
      $grade_1_243;
      $grade_2_243;
      $grade_3_243;
   
      def initialize(name_243, hair_243, age_243, height_243, weight_243, email_243, phone_243,nation_243, code_243, grade_1_243, grade_2_243, grade_3_243)
         super(name_243, hair_243, age_243, height_243, weight_243, email_243, phone_243,nation_243)
         @code_243 = code_243;
         @grade_1_243 = grade_1_243;
         @grade_2_243 = grade_2_243;
         @grade_3_243 = grade_3_243;
      end
   
      def code_243
         @code_243
      end
      def grade_1_243
         @grade_1_243
      end
      def grade_2_243
         @grade_2_243
      end
      def grade_3_243
         @grade_3_243
      end
      
      def code_243=(code_243)
         @code_243 = code_243
      end
      def grade_1_243=(grade_1_243)
         @grade_1_243 = grade_1_243
      end
      def grade_2_243=(grade_2_243)
         @grade_2_243 = grade_2_243
      end
      def grade_3_243=(grade_3_243)
         @grade_3_243 = grade_3_243
      end
      
      def average_243
         (@grade_1_243 + @grade_2_243 + @grade_3_243 )*1.0/3
      end
   
      def showInformation
         super
         puts "Code : #{code_243}\nAverage score: #{average_243};
          "
      end
   end
   
   # name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
   listStudent_243 = Array.new
   student_1_243 = Student.new("Nhat1","Black",21,170, 70, "quangnhat1@gmail.com","0905123456","VN",1911505310243, 10,10,9)
   student_2_243 = Student.new("Nhat2","Yellow",22,180, 80, "quangnhat2@gmail.com","0905456789","VN",1911505310244, 9,10,9)
   student_3_243 = Student.new("Nhat3","Blue",23,190, 90, "quangnhat3@gmail.com","0905987654","VN",1911505310245, 9,9,9)
   
   listStudent_243.push(student_1_243, student_2_243,student_3_243)
   puts 'Show student list :'
   for i in 0..(listStudent_243.length-1)
       puts "- Student #{i+1}"
       puts listStudent_243[i].showInformation
    end
   
    puts 'Sorted student list :'
   
    studentSort_243 = listStudent_243.sort_by{|student| [student.average_243]}.reverse
    for i in 0..(studentSort_243.length-1)
       puts "- Student #{i+1} :"
       puts studentSort_243[i].showInformation
    end