void main(){
  final stream = Stream.error("Erro");
  final sub = stream.listen((event){
    print(event);
  });

  sub.onDone(() {
    print("Finalizado");
  });
  sub.onError((e){
    print(e);
  });

  sub.cancel();
}