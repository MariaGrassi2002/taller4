class Boton {
  String estado; 
  float tipo;
  float posXBoton;
  float tamBoton;
  float posYBoton;
  
  Boton(float posX_, float posY_, float tam_, String estado_, float tipo_) {
    posXBoton = posX_;
    posYBoton = posY_;
    tamBoton = tam_;
    estado = estado_;
    tipo=tipo_;
  }
  
  void dibujar() {
    imageMode(CORNER);
    if(tipo==0){
    image(menuV,posXBoton, posYBoton, tamBoton, tamBoton);
} else    if(tipo==1){
    image(menuR,posXBoton, posYBoton, tamBoton, tamBoton);
} else    if(tipo==2){
    image(menuN,posXBoton, posYBoton, tamBoton, tamBoton);
} else    if(tipo==4){
    image(menuBoton,posXBoton, posYBoton, tamBoton, tamBoton);
} 
    push();
    fill(255);
    textSize(35);
    textAlign(CENTER, CENTER);
    
    text(estado, posXBoton + tamBoton / 2, posYBoton + tamBoton / 2);
    pop();
  }

  boolean isMouseOver() {
    return mouseX > posXBoton && mouseX < posXBoton + tamBoton && mouseY > posYBoton && mouseY < posYBoton + tamBoton;
  }

  String getEstado() {
    return estado;
  }
}
