class Card
  attr_reader :suits , :number
  def initialize
   @number=1+rand(13) # <<==en caso de ser un integer se ocupa el rand pero ojo(te da un numero desde el 0 con una cantidad de (n))
   @suits =[:diamond ,:spade , :hearts ,:clubs].sample #<<==el punto sample saca uno al azar esto en caso de ser un array
  end
end
# >>>>----------------------------------------------------------------------
class Player
  attr_reader :hand
  def initialize
  play
  end
  def play
    @hand=[]
    5.times{hand << Card.new}
  end
  def show_hand
   @hand.each do |card|
     puts "#{card.number} de #{card.suits}"
   end
   return nil #<<==esto obliga a retornar un nil
  end
end
#>>>------------------------------------------------------------------------
#manu
option =""
while option !="salir"
  player1=Player.new
  puts "ingrese una opcion : "
  puts "escriba jugar "
  puts "escriba mostar "
  puts "escriba salir "
  puts "---------------------------------------------------------------"
  option=gets.chomp.downcase
  case option
  when "jugar"
   player1.play
   puts "se te ah dado 5 cartas"
  when "mostrar"
   player1.show_hand
  when "salir"
       puts"saliendo"
  else
     puts "opcion no valida"
  end
end
