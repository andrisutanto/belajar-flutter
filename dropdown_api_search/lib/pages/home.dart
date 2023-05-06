import 'dart:convert';

import 'package:dropdown_api_search/models/province.dart';
import 'package:dropdown_api_search/models/city.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  HomePage({super.key});
  //HomePage({Key? key}) : super(key: key);

  final String apiKey =
      "ea2fda543f517993856c0da64a3afc47cf972860dd60de19c6dd8e89d603e388";

  String? idProv;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wilayah Indonesia"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
            mode: Mode.MENU,
            showSearchBox: true,
            //onChanged: (value) => print(value?.toJson()),
            onChanged: (value) => idProv = value?.id,
            dropdownBuilder: (context, selectedItem) =>
                Text(selectedItem?.name ?? "Belum memilih Provinsi"),
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item.name),
            ),
            onFind: (text) async {
              var response = await http.get(Uri.parse(
                  "https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"));

              if (response.statusCode != 200) {
                return [];
              }

              List allProvince =
                  (json.decode(response.body) as Map<String, dynamic>)["value"];
              List<Province> allModelProvince = [];

              // karena tidak bisa langsung return allprovince, sehingga ditampung / looping dan simpan ke list allNameProvince
              allProvince.forEach((element) {
                allModelProvince.add(
                  Province(
                    id: element["id"],
                    name: element["name"],
                  ),
                );
              });

              return allModelProvince;
            },
          ),
          SizedBox(height: 20),
          DropdownSearch<City>(
            mode: Mode.MENU,
            showSearchBox: true,
            onChanged: (value) => print(value?.toJson()),
            dropdownBuilder: (context, selectedItem) =>
                Text(selectedItem?.name ?? "Belum memilih City"),
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item.name),
            ),
            onFind: (text) async {
              var response = await http.get(Uri.parse(
                  "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProv"));

              if (response.statusCode != 200) {
                return [];
              }

              List allCity =
                  (json.decode(response.body) as Map<String, dynamic>)["value"];
              List<City> allModelCity = [];

              // karena tidak bisa langsung return allprovince, sehingga ditampung / looping dan simpan ke list allNameProvince
              allCity.forEach((element) {
                allModelCity.add(City(
                    id: element["id"],
                    idProvinsi: element["id_provinsi"],
                    name: element["name"]));
              });

              return allModelCity;
            },
          ),
        ],
      ),
    );
  }
}
