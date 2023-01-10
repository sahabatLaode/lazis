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
          namaProfil(),
          emailProfil(),
          hpProfil(),
          ttl(),
          nik(),
          alamat(),
          golDarah(),
          ranting(),
          tombol(),
        ],
      ),
    );
  }

  Widget namaProfil() {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Nama Lengkap',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget emailProfil() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Email',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget hpProfil() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Nomor HP',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget ttl() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Tanggal Lahir',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget nik() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'NIK',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget alamat() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Alamat',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget golDarah() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Golongan Darah',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget ranting() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(18),
          labelText: 'Ranting',
          labelStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget tombol() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kCrayolaColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
        ),
        child: Text(
          'Simpan',
          style: TextStyle(
            color: kCulturedColor,
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
