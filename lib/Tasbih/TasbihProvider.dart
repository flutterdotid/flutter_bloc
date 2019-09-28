class TasbihProvider{
  int nilai = 1;
  int penambahan(){
    if(nilai<33){
      nilai++;
    }else{
      nilai=1;
    }
    return nilai;
  }
}