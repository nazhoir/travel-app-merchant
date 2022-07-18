import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ClientFormAdd extends StatefulWidget {
  const ClientFormAdd({Key? key}) : super(key: key);

  @override
  State<ClientFormAdd> createState() => _ClientFormAddState();
}

class _ClientFormAddState extends State<ClientFormAdd> {
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final _formKey = GlobalKey<FormBuilderState>();

  bool _genderHasError = false;
  bool _paketHasError = false;
  bool _pernikahanHasError = false;

  var opsiPaket = ['12 Hari', '16 Hari', '18 Hari'];
  var opsiGender = ['Perempuan', 'Laki-Laki'];
  var opsiPernikahan = ['Menikah', 'Belum Menikah'];

  void _onChanged(dynamic val) => debugPrint(val.toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Ionicons.arrow_back_outline, size: 20),
                  ),
                  Text(
                    "Tambah Jama'ah",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Container
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Column(
                                  children: [
                                    ListTile(
                                      onTap: () {},
                                      leading:
                                          const Icon(Ionicons.pencil_outline),
                                      title: const Text(
                                        "Perbaharui Data Jama'ah",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      trailing: const Icon(
                                        Ionicons.chevron_forward_outline,
                                        size: 16,
                                      ),
                                    ),
                                    ListTile(
                                      onTap: () {},
                                      leading:
                                          const Icon(Ionicons.trash_outline),
                                      title: const Text(
                                        "Hapus Data Jama'ah",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      trailing: const Icon(
                                        Ionicons.chevron_forward_outline,
                                        size: 16,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[100],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(13),
                                          ),
                                        ),
                                        child: Center(child: Text("Batalkan")),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Ionicons.ellipsis_vertical_outline,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilder(
                    key: _formKey,
                    // enabled: false,
                    onChanged: () {
                      _formKey.currentState!.save();
                      debugPrint(_formKey.currentState!.value.toString());
                    },
                    autovalidateMode: AutovalidateMode.disabled,

                    skipDisabled: true,
                    child: Column(
                      children: [
                        FormBuilderDateTimePicker(
                          name: 'date',
                          initialEntryMode: DatePickerEntryMode.calendar,
                          initialValue: DateTime.now(),
                          inputType: InputType.both,
                          decoration: InputDecoration(
                            labelText: 'Waktu Transaksi',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                _formKey.currentState!.fields['date']
                                    ?.didChange(null);
                              },
                            ),
                          ),
                          initialTime: const TimeOfDay(hour: 8, minute: 0),
                          // locale: const Locale.fromSubtags(languageCode: 'fr'),
                        ),

                        // Nama
                        FormBuilderTextField(
                          name: "nama",
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Nama Jam'ah",
                          ),
                        ),

                        // Email
                        FormBuilderTextField(
                          name: "email",
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Email",
                          ),
                        ),

                        // Paket
                        FormBuilderDropdown<String>(
                          // autovalidate: true,
                          name: 'paket',
                          decoration: InputDecoration(
                            labelText: 'Paket',
                            suffix: _paketHasError
                                ? const Icon(Icons.error)
                                : const Icon(Icons.check),
                          ),
                          // initialValue: 'Male',
                          allowClear: true,
                          hint: const Text('Pilih Paket'),
                          validator: FormBuilderValidators.compose(
                              [FormBuilderValidators.required()]),
                          items: opsiPaket
                              .map((paket) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: paket,
                                    child: Text(paket),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _paketHasError = !(_formKey
                                      .currentState?.fields['gender']
                                      ?.validate() ??
                                  false);
                            });
                          },
                          valueTransformer: (val) => val?.toString(),
                        ),

                        // NO KK
                        FormBuilderTextField(
                          name: "noKK",
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            label: Text("Nomor Kartu Keluarga"),
                          ),
                        ),

                        // NO NIK
                        FormBuilderTextField(
                          name: "noNIK",
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            label: Text("Nomor Induk Keluarga"),
                          ),
                        ),

                        // Gender
                        FormBuilderDropdown<String>(
                          // autovalidate: true,
                          name: 'gender',
                          decoration: InputDecoration(
                            labelText: 'Jenis Kelamin',
                            suffix: _genderHasError
                                ? const Icon(Icons.error)
                                : const Icon(Icons.check),
                          ),
                          // initialValue: 'Male',
                          allowClear: true,
                          hint: const Text('Pilih Jenis Kelamin'),
                          validator: FormBuilderValidators.compose(
                              [FormBuilderValidators.required()]),
                          items: opsiGender
                              .map((gender) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _genderHasError = !(_formKey
                                      .currentState?.fields['gender']
                                      ?.validate() ??
                                  false);
                            });
                          },
                          valueTransformer: (val) => val?.toString(),
                        ),

                        // Marital Status
                        FormBuilderDropdown<String>(
                          // autovalidate: true,
                          name: 'pernikahan',
                          decoration: InputDecoration(
                            labelText: 'pernikahan',
                            suffix: _pernikahanHasError
                                ? const Icon(Icons.error)
                                : const Icon(Icons.check),
                          ),
                          // initialValue: 'Male',
                          allowClear: true,
                          hint: const Text('Pilih Status Penikahan'),
                          validator: FormBuilderValidators.compose(
                              [FormBuilderValidators.required()]),
                          items: opsiPernikahan
                              .map((pernikahan) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: pernikahan,
                                    child: Text(pernikahan),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _pernikahanHasError = !(_formKey
                                      .currentState?.fields['pernikahan']
                                      ?.validate() ??
                                  false);
                            });
                          },
                          valueTransformer: (val) => val?.toString(),
                        ),

                        // Tempat Lahir
                        FormBuilderTextField(
                          name: "tempat lahir",
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Tempat Lahir",
                          ),
                        ),

                        // Nomor Telepon
                        FormBuilderTextField(
                          name: "nomor telepon",
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Nomor Telepon",
                          ),
                        ),

                        // Nomor Pasport
                        FormBuilderTextField(
                          name: "nomor pasport",
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Nomor Pasport",
                          ),
                        ),

                        // Tempat Terbit Pasport
                        FormBuilderTextField(
                          name: "tempat terbit pasport",
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Tempat Terbit Pasport",
                          ),
                        ),

                        // Tanggal Terbit Pasport

                        FormBuilderTextField(
                          name: "tanggal terbit pasport",
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            labelText: "Tanggal Terbit Pasport",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
