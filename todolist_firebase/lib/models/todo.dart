import 'package:cloud_firestore/cloud_firestore.dart';

class Todo{
  late int? id;
  late String title;
  late String description;
  late DocumentReference? reference; // firestore에서 문서를 처리하기 위한 객체  > 해당 객체를 통해서 문서에 접근,수정,삭제등의 작업을 수행할 수 있음

  Todo({
    this.id,
    required this.title,
    required this.description,
    this.reference,

  });

  // 외부로 보내기 위해서 양식을 맞춘다.
  Map<String, dynamic> toMap(){
    return{
      'id' : id,
      'title' : title,
      'description' : description,
    };
  }

  // 네트워크 호출등을 통해서 받아오는 데이터를 Todo 모델로 변환하는 기능을 수행한다.
  Todo.fromMap(Map<dynamic,dynamic>? map){
    id = map?['id'];
    title = map?['title'];
    description = map?['description'];
  }

  /// fromMap과 비슷한 기능. fireStore 에서는 DocumentSnapshot이라는 형태로 데이터를 제공,
  /// 이를 처리하기위해서 DocumentSnapshot 을 인자로 받아 ->  이를 Map<String, dynamic>으로 변환, -> 다시 Todo 로 변환해서 저장한다.
  Todo.fromSnapshot(DocumentSnapshot document){
    Map<String, dynamic> map = document.data() as Map<String, dynamic>;
    id = map['id'];
    title = map['title'];
    description = map['description'];
    reference = document.reference;
  }
 // TODO Firebase에서 get으로 가져오면? 일회성이다?
}