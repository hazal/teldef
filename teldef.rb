require "green_shoes"
require "./cizim"

Shoes.app width: 800, height: 400 do
  stack width: 650, height: "100%" do
    background cadetblue
    flow do
      ("A".."Z").each do |harf|
        button harf, width: "5%", margin_left: 6 do
          alert(harf + " tıklandı")
        end
      end
    end
    
    flow do
      button "deneme"
      para "nw"
      @l = list_box :items => ["YES", "NO"] do
        alert @l.text
      end
      ciz
    end
  end
  
  stack left: 650, width: 150, height: "100%" do
    background cornsilk
    para "deneme"
  end
end