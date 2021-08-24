import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.only(top: 50, bottom: 50, left: 50, right: 50),
        child: Column(
          children: [
            SizedBox(height: 50),
            account(),
            SizedBox(height: 50),
            password(),
            ElevatedButton(
              onPressed: () {
                controller.save();
                controller.gotoHome();
              },
              child: Text('登入主页'),
            ),
          ],
        )
      ),
    );
  }

   Widget account(){
    return TextField(
      controller: controller.textcontroller,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.orangeAccent),
              borderRadius:
              const BorderRadius.all(Radius.circular(3))),
          labelText: "用户名",
          labelStyle: TextStyle(color: Colors.orangeAccent),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          helperText: "用户名的长度为3~6个汉字",
          helperStyle: TextStyle(color: Colors.grey),
          helperMaxLines: 1,
          hintText: "请输入用户名",
          hintStyle: TextStyle(color: Colors.grey),
          errorText: "用户名输入有误",
          errorStyle: TextStyle(color: Colors.redAccent),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent),
              borderRadius:
              const BorderRadius.all(Radius.circular(3))),
          //suffixIcon: Icon(Icons.favorite),
         // fillColor: Colors.black12,
          //filled: true,
          // icon: Icon(
          //   Icons.person,
          //   color: Colors.orangeAccent,
          // ),
          prefixIcon: Icon(
            Icons.edit,
            color: Colors.orangeAccent,
          ),
          focusColor: Colors.orangeAccent),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.none,
      toolbarOptions: ToolbarOptions(
          copy: true, cut: true, paste: true, selectAll: true),
      cursorWidth: 1,
      cursorColor: Colors.orangeAccent,
      cursorRadius: Radius.circular(5),
     // showCursor: true,
     // obscureText: true,
      inputFormatters: [
      ],
      onChanged: (value) {
        print(value);
      },
      onEditingComplete: () {
      },
      onTap: () {
        print("点击了");
      },
      maxLength: 10,
    );
   }

  Widget password(){
    return TextField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.orangeAccent),
              borderRadius:
              const BorderRadius.all(Radius.circular(3))),
          labelText: "密码",
          labelStyle: TextStyle(color: Colors.orangeAccent),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          helperText: "密码长度为3~6个汉字",
          helperStyle: TextStyle(color: Colors.grey),
          helperMaxLines: 1,
          hintText: "请输入密码",
          hintStyle: TextStyle(color: Colors.grey),
          errorText: "用户名输入有误",
          errorStyle: TextStyle(color: Colors.redAccent),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent),
              borderRadius:
              const BorderRadius.all(Radius.circular(3))),
          // suffixIcon: Icon(Icons.favorite),
          // fillColor: Colors.black12,
          // filled: true,
          // icon: Icon(
          //   Icons.person,
          //   color: Colors.orangeAccent,
          // ),
          // prefixIcon: Icon(
          //   Icons.edit,
          //   color: Colors.orangeAccent,
          // ),
          focusColor: Colors.orangeAccent),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.none,
      toolbarOptions: ToolbarOptions(
          copy: true, cut: true, paste: true, selectAll: true),
      cursorWidth: 1,
      cursorColor: Colors.orangeAccent,
      cursorRadius: Radius.circular(5),
      showCursor: true,
      obscureText: true,
      onChanged: (value) {
        print(value);
      },
      onEditingComplete: () {
        //点击done 后，触发
      },
      onTap: () {
        print("点击了");
      },
      maxLength: 10,
    );
  }
}


