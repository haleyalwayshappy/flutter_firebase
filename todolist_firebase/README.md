# todolist_firebase

A new Flutter project.

## Getting Started



Screens 폴더 안에 있는 파일들 - Ui 화면 
Models  모델을 정의하는 폴더  (todo model , news model )
providers  데이터 관련 기능을 제공해주는 모듈 작성 예정 

공부한 기능 

sharedPreferences 
저장해야하는 데이터의 양이 적거나 아주 간단한 경우 사용하는 기법
안드로이드 shared_prefs / ios - NSUserDefaults

특징
1. 키 -값 방식으로 데이터를 저장
2. 파일에 데이터를 쓰는 방식이라서 앱을 껐다 켜도 데이터가 유지된다.
3. 자동로그인, 도움말 스킵 여부등 간단한 형태의 데이터를 다루는 도구로 사용 

----
MissingPluginException(No implementation found for method getAll on channel plugins.flutter.io/shared_preferences) > 빌드했을때 해당 오류가 나면 앱을 완전히 멈추고 다시실행 해보기

What About 'Future'
Flutter에서 Future는 비동기 작업의 결과를 나타내는 객체입니다. 비동기 작업은 시간이 오래 걸리거나 외부 리소스에 의존하는 작업으로, 이 작업이 완료되기를 기다리는 동안 애플리케이션의 다른 작업을 수행할 수 있게 해줍니다.

Future 객체는 비동기 작업의 결과나 오류를 나타내며, 해당 결과가 준비되면 Future 객체가 완료됩니다. Future는 세 가지 상태를 가질 수 있습니다:

미결 상태(Pending): 비동기 작업이 진행 중이며 결과가 아직 준비되지 않았습니다.
완료 상태(Completed): 비동기 작업이 성공적으로 완료되었습니다. 결과나 값은 Future 객체에 저장되어 있습니다.
오류 상태(Error): 비동기 작업이 오류로 인해 실패하였습니다. 오류 정보는 Future 객체에 저장되어 있습니다.
Future 객체는 then(), catchError(), whenComplete() 등의 메서드를 제공하여 비동기 작업이 완료되거나 오류가 발생했을 때 처리할 수 있습니다. 또한, async 및 await 키워드와 함께 사용하여 비동기 코드를 보다 간결하고 직관적으로 작성할 수 있습니다.





Firebase 
Collection, Document단위로 데이터 처리를 진행한다.
RDBMS 랑 비교했을때 
Collection == 테이블 , Document == Row 

- 설치하는데 