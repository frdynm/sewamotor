import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewamotor/app/routes/app_pages.dart';
import 'package:sewamotor/warna.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.2,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color(warna.mainColor),
                      ),
                    ),
                  ),
                  Text(
                    "Buat akun Sekarang",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(warna.mainColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Get.width,
            height: Get.height * 0.75,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(warna.mainColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        // focusedborder == ketika di klik nanti mau di apain si outline nya
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(warna.mainColor), width: 1.0)),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        // focusedborder == ketika di klik nanti mau di apain si outline nya
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(warna.mainColor), width: 1.0)),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "Nama Lengkap",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        // focusedborder == ketika di klik nanti mau di apain si outline nya
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(warna.mainColor), width: 1.0)),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "No Telepon",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        // focusedborder == ketika di klik nanti mau di apain si outline nya
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(warna.mainColor), width: 1.0)),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "Kota",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        // focusedborder == ketika di klik nanti mau di apain si outline nya
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(warna.mainColor), width: 1.0)),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //ini untuk button
                  Container(
                    width: Get.width,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () => print("Tombol Sign Up"),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(warna.mainColor)),
                    ),
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sudah punya akun?",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                        TextButton(
                          onPressed: () {
                            Get.offAndToNamed(Routes.LOGIN);
                            print("Tombol Login di klik");
                          },
                          child: Text("Log in Sekarang",
                              style: TextStyle(
                                  fontSize: 15, color: Color(warna.mainColor))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
