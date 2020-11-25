import 'package:flutter/material.dart';
import 'package:profileeducator/Widgets/buildButton.dart';
import '../Models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  FilePickerResult selectedfile,selectedDocument,selectedCert,selectedGST,selectedEstablish;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Edit Profile Details'),
            centerTitle: true,
            backgroundColor: Colors.grey.shade900,
          ),
          backgroundColor: Colors.black,
          body: ListView(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
             children: [
             Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)
                /*boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],*/
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Basic Information",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter your first name ",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "First name",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter your last name ",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Last name",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(08.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter your email id",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter phone number ",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: Row(
                            children: <Widget>[
                              DropdownButton<String>(
                                hint: Text("Date"),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                items: date.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    dateSelect = newValueSelected;
                                  });
                                },
                                value: dateSelect,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                                child: DropdownButton<String>(
                                  hint: Text("Month"),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  items: month.map((String dropDownStringItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Text(dropDownStringItem),
                                    );
                                  }).toList(),
                                  onChanged: (String newValueSelected) {
                                    setState(() {
                                      monthSelect = newValueSelected;
                                    });
                                  },
                                  value: monthSelect,
                                ),
                              ),
                              DropdownButton<String>(
                                hint: Text("Year"),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                items: year.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    yearSelect = newValueSelected;
                                  });
                                },
                                value: yearSelect,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: DropdownButton<String>(
                            hint: Text("Select gender"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: gender.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                genderSelect = newValueSelected;
                              });
                            },
                            value: genderSelect,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 57,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white38,
                              ),
                              ),
                          child: selectedfile==null ? buildRow("Attach Profile Image",
                          () async {
                                    selectedfile = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['jpg','jpeg','png'],
                                    );
                                    setState(() {
                                    });
                                  },
                          )
                          : buildContainer(selectedfile,
                          () {
                            setState(() {
                              selectedfile=null;
                            });
                          },
                          ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: DropdownButton<String>(
                            hint: Text("Select Language"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: language.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                languageSelect = newValueSelected;
                              });
                            },
                            value: languageSelect,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter linkedin profile url ",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "LinkedIn Profile",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 57,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white38,
                              )),
                          child: selectedCert==null ? buildRow(" Certification",
                          () async {
                                    selectedCert = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf'],
                                    );
                                    setState(() {
                                    });
                                  },
                          )
                          : buildContainer(selectedCert,
                          () {
                            setState(() {
                              selectedCert=null;
                            });
                          },
                        ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: DropdownButton<String>(
                            hint: Text("Pen and Tablet"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: ptSelect.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                penTablet = newValueSelected;
                              });
                            },
                            value: penTablet,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "******324L",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "PAN Card Number",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: DropdownButton<String>(
                            hint: Text("Verification Document"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: verificationDocument
                                .map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                documentSelect = newValueSelected;
                              });
                            },
                            value: documentSelect,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 57,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white38,
                              )),
                          child: selectedDocument==null ? buildRow("Verification Document",
                          () async {
                                    selectedDocument = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf'],
                                    );
                                    setState(() {
                                    });
                                  },
                          )
                          : buildContainer(selectedDocument,
                          () {
                            setState(() {
                              selectedDocument=null;
                            });
                          },
                            ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 8,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Write your bio",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "About yourself",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: FlatButton(
                        onPressed: () {
                          debugPrint("");
                        },
                        child: Center(
                          child: Text(
                            "Save Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Address Information",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "State",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "State",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 2.0, bottom: 2.0),
                          child: buildDropDown("Select City", city,
                          (String newValueSelected) {
                              setState(() {
                                citySelect = newValueSelected;
                              });
                          },
                          citySelect,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter your address",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Address",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter pincode",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Pincode",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: FlatButton(
                        onPressed: () {
                          debugPrint("");
                        },
                        child: Center(
                          child: Text(
                            "Save Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Education Qualification And Experience",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                          child: buildDropDown("Select Qualification", qualification,
                          (String newValueSelected) {
                              setState(() {
                                qualificationSelect = newValueSelected;
                              });
                          },
                          qualificationSelect
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 12.0, top: 2.0, bottom: 2.0),
                          child: buildDropDown("Select no of years", experience,
                          (String newValueSelected) {
                              setState(() {
                                experienceSelect = newValueSelected;
                              });
                          },
                          experienceSelect
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(3),
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white38)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.grey.shade900),
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                          child: DropdownButton<String>(
                            hint: Text("Online Teching Experience"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: online.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                onlineExperienceSelect = newValueSelected;
                              });
                            },
                            value: onlineExperienceSelect,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Other Relevant Experience",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Other Relevant Experience",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: FlatButton(
                        onPressed: () {
                          debugPrint("");
                        },
                        child: Center(
                          child: Text(
                            "Save Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
             margin: EdgeInsets.only(top: 30),
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.white)
              ),
             child: Column(
             children: [
               Padding(
               padding: const EdgeInsets.all(8.0),
                 child: Text("Other Details",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                 ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("For Coaching Institutes",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 16),),
                ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white38),
      borderRadius: BorderRadius.circular(10)),
      hintText: "Enter name of coaching institute",
      hintStyle: TextStyle(color: Colors.white),
      labelText: "Name of the coaching institute",
      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Colors.white)),
      ),
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white38),
      borderRadius: BorderRadius.circular(10)),
      hintText: "Enter your GSTIN Number",
      hintStyle: TextStyle(color: Colors.white),
      labelText: "GST Certificate",
      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Colors.white)),
      ),
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
      height: 57,
      width: 400,
      decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
      color: Colors.white38,
      )),
      child: selectedGST==null ? buildRow("GST Certificate",
                          () async {
                                    selectedGST = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf'],
                                    );
                                    setState(() {
                                    });
                                  },
                          )
      : buildContainer(selectedGST,
      () {
                            setState(() {
                              selectedGST=null;
                            });
                          },
      ),
      ),
      ),
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(3),
      width: 400,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
      style: BorderStyle.solid, color: Colors.white38)),
      child: Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.grey.shade900),
      child: Padding(
      padding:
      const EdgeInsets.only(left: 12.0, top: 2.0, bottom: 2.0),
      child: DropdownButton<String>(
      hint: Text("Online Teching Experience"),
      style: TextStyle(
      color: Colors.white,
      ),
      items: experience.map((String dropDownStringItem) {
      return DropdownMenuItem<String>(
      value: dropDownStringItem,
      child: Text(dropDownStringItem),
      );
      }).toList(),
      onChanged: (String newValueSelected) {
      setState(() {
      experienceSelect = newValueSelected;
      });
      },
      value: experienceSelect,
      ),
      ),
      ),
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
      height: 57,
      width: 400,
      decoration: BoxDecoration(
      color: Colors.grey.shade900,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
      color: Colors.white38,
      )),
      child: selectedEstablish==null ? buildRow("Establishment Certificate",
                          () async {
                                    selectedEstablish = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf'],
                                    );
                                    setState(() {
                                    });
                                  },
                          )
      : buildContainer(selectedEstablish,
      () {
                            setState(() {
                              selectedEstablish=null;
                            });
                          },
      ),
      ),
      ),
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: FlatButton(
      onPressed: () {
      debugPrint("");
      },
      child: Center(
      child: Text(
      "Save Details",
      style: TextStyle(
      color: Colors.white,
      fontSize: 17.0,
      ),
      textAlign: TextAlign.center,
      ),
      ),
      ),
      ),
      ),

             ],
             ),

            ),
          Container(
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bank Details",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter bank name",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Bank Name",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Account Holder Name",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Account Holder Name",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter Account Number",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Account Number",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter IFSC Code",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "IFSC Code",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: FlatButton(
                      onPressed: () {
                        debugPrint("");
                      },
                      child: Center(
                        child: Text(
                          "Save Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )],
      ),
    );
  }
}