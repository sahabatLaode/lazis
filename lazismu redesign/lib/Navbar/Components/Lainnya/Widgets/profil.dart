import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kCulturedColor,
        centerTitle: true,
        title: Text(
          'Sunting Profil',
          style: TextStyle(
            color: kYankeesColor,
            fontWeight: medium,
          ),
        ),
        iconTheme: IconThemeData(
          color: kYankeesColor,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        children: [
          fotoProfil(),
          namaProfil(),
          emailProfil(),
        ],
      ),
    );
  }

  Widget fotoProfil() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Foto Profil',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        InkWell(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 12,
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: kYankeesColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    'LM',
                    style: TextStyle(
                      color: kCulturedColor,
                      fontSize: 32,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Tambahkan foto',
                style: TextStyle(
                  color: kBlueColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget namaProfil() {
    return Container(
      margin: const EdgeInsets.only(
        top: 32,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Nama Lengkap',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            )),
      ),
    );
  }

  Widget emailProfil() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Email',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            )),
      ),
    );
  }
}
