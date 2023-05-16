class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Sabah egzersizleri', isDone: false ),
      ToDo(id: '02', todoText: 'Gunluk alinmasi gereken su miktari', isDone: false ),
      ToDo(id: '03', todoText: 'Market alisverisi', isDone: false ),
      ToDo(id: '04', todoText: 'Email kontrolu', isDone: false),
      ToDo(id: '05', todoText: 'Ingilizce calis',isDone: false ),
      ToDo(id: '06', todoText: 'Ders calis', isDone: false),
    ];
  }
}