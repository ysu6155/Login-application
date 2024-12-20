import 'package:flutter/material.dart';

class chesterfield extends StatefulWidget {
  bool? Foergetpassword;
  String namebutton;
  String textchek;
  double width;
  int flex;
   chesterfield({super.key ,required this.Foergetpassword,required this.namebutton,required this.textchek,required this.flex,required this.width});

  @override
  State<chesterfield> createState() => _chesterfieldState();
}

class _chesterfieldState extends State<chesterfield> {

  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;

  bool isOption1Selected = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(
        
                labelText: "البريد الإلكتروني",
                hintText: "example@mail.com",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال البريد الإلكتروني";
                } else if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$")
                    .hasMatch(value)) {
                  return "البريد الإلكتروني غير صحيح";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              obscureText: !isPasswordVisible, // إخفاء كلمة المرور
              decoration: InputDecoration(
                labelText: "كلمة المرور",
                hintText: "أدخل كلمة المرور",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon:isPasswordVisible ?  Icon(Icons.visibility):Icon( Icons.visibility_off,),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال كلمة المرور";
                } else if (value.length < 8) {
                  return "يجب أن تكون كلمة المرور 8 أحرف على الأقل";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CheckboxListTile(
                    value: isOption1Selected,
                    onChanged: (bool? value) {
                      setState(() {
                        isOption1Selected = value ?? false;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: widget.flex,
                    child: Text(widget.textchek,style: TextStyle(color: Colors.black),)),
                SizedBox(
                  width: widget.width,
                ),
                if(widget.Foergetpassword!)

                  TextButton(onPressed: () {}, child: Text("Foerget password?"))
                ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)), // إلغاء الحواف
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("تم التحقق بنجاح!"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                child: Text(widget.namebutton,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
