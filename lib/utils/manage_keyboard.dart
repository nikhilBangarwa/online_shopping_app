import 'package:flutter/cupertino.dart';

class KeyBoardUtil{

  static  void hideKeyBoardUtil(BuildContext context){
    FocusScopeNode focusScopeNode=FocusScope.of(context);

    if(!focusScopeNode.hasPrimaryFocus){
      focusScopeNode.unfocus();
    }
  }
}