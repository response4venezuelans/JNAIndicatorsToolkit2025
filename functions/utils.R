##-- Boxes ----
box_JNA <- function(text, color){
  HTML(paste('<div class = "box_JNA" style = "border:1px solid', 
             color, '; background-color: ', 
             
             color, ';">', 
             h3(text), '</div>'))
}

tab_sector <- function(text, color, icon, id){
  HTML(paste0('<a id="', id,'" href="#" class="action-button">
                  <div class = "indicator-block" style = "background-color:', color, ';"> 
                  <span class = "name">', text,'</span>
                  <div class="img_block">
                    <div class="img_block_conteiner">
                      <img src="img/',icon,'">
                    </div>
                  </div>
              </div></a>'))
}