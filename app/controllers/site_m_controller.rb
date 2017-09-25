class SiteMController < ApplicationController
  def index
   require 'rubygems'
   require 'roo'
   #require 'rubyXL'
   #require 'roo-xls'

 #  doca= Roo::Spreadsheet.open('/home/developer/Рабочий стол/ТЗ.xlsx')
  @doca1=[]
  doca = Roo::Excelx.new("/home/developer/Рабочий стол/ТЗ.xlsx")

   1.upto(3) do |row|

    1.upto(1) do |col|

   @doca1.push(doca.cell(row,col))


     end
   end





  end

  def workpage
  end

  def mapp

  end

end
