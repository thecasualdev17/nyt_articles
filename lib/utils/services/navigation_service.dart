import 'package:flutter/material.dart';

class NavigationService {

  to(context, String routeName, {args}){
    Navigator.of(context).pushNamed(routeName, arguments: args);
  }

  back(context) {
    if(Navigator.of(context).canPop()){
      Navigator.of(context).pop();
    }
  }

  off(context, String routeName, String predicate, {args}) {
    Navigator.of(context).pushNamedAndRemoveUntil(routeName, ModalRoute.withName(predicate), arguments: args);
  }

  replace(context, String routeName, {args}) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: args);
  }

  resetTo(context, String routeName, {args, Function? preload}){
    if(preload != null){
      preload();
    }
    Navigator.of(context).pushNamedAndRemoveUntil(routeName, (r) => false, arguments: args);
  }
}