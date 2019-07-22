import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class StepperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'SnackBar',
      text: _text,
      code: _code,
      example: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stepper(
            type: StepperType.vertical,
            currentStep: 1,
            onStepContinue: (){},
            onStepCancel: (){},
            steps: [
              Step(
                title: Text('步骤1'),
                subtitle: Text('步骤1'),
                content: Text('步骤1'),
                state: StepState.indexed
              ),
              Step(
                title: Text('步骤2'),
                subtitle: Text('步骤2'),
                content: Text('步骤2'),
                isActive: true,
              ),
            ],
          
          )
        ],
      ),
    );
  }
}

final _text = '''
一个Material Design 步骤指示器，显示一系列步骤的过程
[steps]、[type]和[currentStep]参数必须不为空。
''';

final _code = '''
Stepper({
  Key key,
  @required this.steps,//每一个步骤
  this.physics,//步骤指示器的滚动视图应该如何响应用户输入
  this.type = StepperType.vertical,//如何布局步骤指示器，垂直还是水平
  this.currentStep = 0,//将其内容显示为当前步骤的[steps]的索引
  this.onStepTapped,//[step]项点击回调
  this.onStepContinue,//点击“继续”按钮的回调
  this.onStepCancel,//点击“取消”按钮的回调
  this.controlsBuilder,//用于创建自定义控件的回调
}) 

Step({
  @required this.title,//通常描述它的步骤的标题
  this.subtitle,//副标题，显示在[title]下面
  @required this.content,//出现在[title]和[subtitle]下面的步骤的内容。
  this.state = StepState.indexed,//步骤的状态，改变最左边圆里的图标与颜色
  this.isActive = false,//表示当前步骤是否处于活动状态，只改边左边图标的颜色样式 
})
''';
