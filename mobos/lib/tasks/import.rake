require 'roo'  
namespace :import do
require 'roo'  
        
  desc "Mein erster Task"
  task :fehlerliste => :environment do
    require 'roo'  	
    puts "start"
        
  
    oo = Roo::Excel.new("Fehlercodes_Smart_Roadster.xls")
    oo.default_sheet = oo.sheets.first
    1.upto(oo.last_row) do |line|
        obd_id          = oo.cell(line,'A')
        obd_content     = oo.cell(line,'B')
        brand           = oo.cell(line,'C')
     
        error = Error.find_or_create_by_obd_id(obd_id)
        #Datenbank          #Spalte
        error.obd_id    =   obd_id
        error.obd_content    =   obd_content
        error.brand_id    =   Brand.find_by_name(brand.to_s).id
        error.save
        puts "Fehler #{obd_id} eingelesen"
    end

puts "Datei eingelesen"

  end
  
  desc "Task2"
  task :task2 => :environment do
	puts "mega"
  end
  
  
end