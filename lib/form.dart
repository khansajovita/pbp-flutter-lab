import 'package:counter_7/main.dart';
import 'package:counter_7/budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyBudgetForm extends StatefulWidget {
  const MyBudgetForm({super.key});

  @override
  State<MyBudgetForm> createState() => _MyFormPageState();
}

class Budget {
  String judul;
  int nominal;
  String jenis;

  Budget({required this.jenis, required this.judul, required this.nominal});
}

List<Budget> budgets = <Budget>[];

class _MyFormPageState extends State<MyBudgetForm> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int nominal = 0;
  String? jenisbudget;
  List<String> listtype = ['Pengeluaran', 'Pemasukan'];

  void addData(Budget budget) {
    setState(() {
      budgets.add(budget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('Counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetForm()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Contoh: Membayar Hutang",
                  labelText: "Judul",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _judul = value!;
                  });
                },
                // Menambahkan behavior saat data disimpan
                onSaved: (String? value) {
                  setState(() {
                    _judul = value!;
                  });
                },
                // Validator sebagai validasi form
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama lengkap tidak boleh kosong!';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  hintText: "Contoh: 10.000",
                  labelText: "Nominal",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    nominal = int.parse(value!);
                  });
                },
                // Menambahkan behavior saat data disimpan
                onSaved: (String? value) {
                  setState(() {
                    nominal = int.parse(value!);
                  });
                },
                // Validator sebagai validasi form
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Nominal item tidak boleh kosong!';
                  }
                  return null;
                },
              ),
            ),
            DropdownButtonFormField(
              value: jenisbudget,
              items: listtype.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  jenisbudget = newValue!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Nominal budget tidak boleh kosong!';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child:
                    const Text("Simpan", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      budgets.add(Budget(
                        jenis: jenisbudget!,
                        judul: _judul,
                        nominal: nominal,
                      ));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 15,
                              child: ListView(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                shrinkWrap: true,
                                children: <Widget>[
                                  Center(
                                      child:
                                          const Text("Data telah disimpan!")),
                                  SizedBox(height: 20),
                                  Text('Judul: $_judul'),
                                  Text('Nominal: $nominal'),
                                  Text('Tipe: $jenisbudget'),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Kembali'),
                                  ),
                                ],
                              ),
                            );
                          });
                    });
                  }
                },
              ),
            )
          ]),
        )),
      ),
    );
  }
}
