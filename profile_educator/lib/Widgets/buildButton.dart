import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
Widget buildDropDown(String name,List<String> list,Function function,String string)
{
  return DropdownButton<String>(
                            hint: Text(name),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: list.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: function,
                            value: string,
                          );
}
Widget buildContainer(FilePickerResult selected,Function change)
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                          Container(
                                    width: 150,
                                    padding: EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                                    child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(basename(selected.paths.toString()),
                                      style: TextStyle(backgroundColor: Colors.blueAccent),
                                    ),
                            ),
                          ),
                          Container(
                            child: IconButton(icon: Icon(Icons.close,color: Colors.redAccent.shade400,),
                             onPressed: change,
                             ),
                          ),
                                ],
                            );
}
Widget buildRow(String name,Function change)
{
  return Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: RaisedButton(
                                  onPressed: change,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "Browse",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                      child: FittedBox(
                                             child: Text(
                                          name,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.attach_file,
                                      color: Colors.white,
                                    ),
                                    onPressed: change,
                                  )
                                ],
                              )
                            ],
                          );
}
