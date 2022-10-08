import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('버튼'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  // MaterialState : 앱 뿐만아니라, 플러터에서 전체적으로 사용되는 상태
                  // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                  // focused - 포커스된 상태 (텍스트 필드)
                  // pressed - 눌렸을 때 (o)
                  // dragged -  드래그 되었을 때
                  // selected - 선택되었을 때 (체크박스, 라디오 버튼)
                  // scrolledUnder - 다른 컴포넌트 밑으로 스크롤 되었을 때
                  // disabled - 비활성화 상태 ( onPressed 가 null ) (o)
                  // error - 에러 상태
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                  foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white;
                      }

                      return null;
                    },
                  ),
                  padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return EdgeInsets.all(100.0);
                      }

                      return EdgeInsets.all(20.0);
                    },
                  ),
                ),
                child: Text(
                  'ButtonStyle',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // 메인 칼라 : 버튼 배경 색
                  primary: Colors.red,
                  // 글자 및 애니메이션 칼라
                  onPrimary: Colors.black,
                  // 버튼 그림자 칼라
                  shadowColor: Colors.green,
                  // 3D 입체감을 (z 방향 : 앞으로) 더 높게 줄 때 사용되는 옵션
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                  // 글자에 적용 되는 패딩
                  padding: EdgeInsets.all(32.0),
                  // 테두리
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  ),
                ),
                child: Text('ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  // 메인 칼라 : 글자와 애니메이션(오버레이) 색
                  primary: Colors.green,
                  // backgroundColor: Colors.yellow,
                  // elevation: 10.0,
                ),
                child: Text('OutlinedButton'),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  // 메인 칼라 : 글자와 애니메이션 색
                  primary: Colors.brown,
                  // backgroundColor: Colors.blue,
                ),
                child: Text('TextButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
