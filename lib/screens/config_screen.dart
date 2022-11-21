

import 'package:flutter/material.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  final imgController = TextEditingController(text:Preferences.img);
  final nombreController = TextEditingController(text:Preferences.nombre);
  final profesionController = TextEditingController(text:Preferences.profesion);
  final emailController = TextEditingController(text:Preferences.email);
  final mobileController = TextEditingController(text:Preferences.mobile);

  

  guardar(){
    Preferences.img = imgController.text;
    Preferences.nombre = nombreController.text;
    Preferences.profesion = profesionController.text;
    Preferences.email = emailController.text;
    Preferences.mobile = mobileController.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: (Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
        title: const Text('Configuracion'),
        centerTitle: true,
      ),
      drawer: const CustomWidgetHome(),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              CustomTextField(
                //initialvalue: Preferences.img,
                controller:imgController,
                keyboardType: TextInputType.text,
                hintText: 'Imagen',
                prefixIcon: const Icon(Icons.photo),
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                //initialvalue: Preferences.nombre,
                controller:nombreController,
                keyboardType: TextInputType.name,
                hintText: 'Nombre Completo',
                prefixIcon: const Icon(Icons.person),
                
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller:profesionController,
                keyboardType: TextInputType.name,
                hintText: 'Profesion',
                prefixIcon: const Icon(Icons.work),
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller:emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email',
                prefixIcon: const Icon(Icons.mail),
                
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller:mobileController,
                keyboardType: TextInputType.number,
                hintText: 'Telefono',
                prefixIcon: const Icon(Icons.phone_android),
                
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                initialvalue: Preferences.twitter,
                keyboardType: TextInputType.name,
                hintText: 'twitter',
                prefixIcon: const FaIcon(FontAwesomeIcons.twitter),
                onChange: (value) {
                  Preferences.twitter = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                initialvalue: Preferences.facebook,
                keyboardType: TextInputType.name,
                hintText: 'facebook',
                prefixIcon: const FaIcon(FontAwesomeIcons.facebook),
                onChange: (value) {
                  Preferences.facebook = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                initialvalue: Preferences.linkedin,
                keyboardType: TextInputType.name,
                hintText: 'linkedin',
                prefixIcon: const Icon(Icons.link),
                onChange: (value) {
                  Preferences.linkedin = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(
                height: 30,
                width: 156,
                child: RadioListTile(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  activeColor: Colors.green,
                  value: 1,
                  groupValue: Preferences.genero,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    Preferences.genero = value ?? 1;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 30,
                width: 155,
                child:RadioListTile(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                activeColor: Colors.green,
                value: 2,
                groupValue: Preferences.genero,
                title: const Text('Femenino'),
                onChanged: (value) {
                  Preferences.genero = value ?? 2;
                  setState(() {});
                },
              ),
              )
                ],
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.amber,
                child: const Text('Guardar', style: TextStyle(color: Colors.white, fontSize: 25),),
                onPressed: (){
                  guardar();
                })
            ],
          ),
        ),
      ),
    );
  }
}
