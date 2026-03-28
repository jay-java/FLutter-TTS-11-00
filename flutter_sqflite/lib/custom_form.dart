
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? selectedState;
  String? selectedCity;
  String? gender;

  List<String> hobbies = [];
  List<String> hobbyList = ["Reading", "Traveling", "Gaming"];

  Map<String, List<String>> stateCityMap = {
    "Gujarat": ["Ahmedabad", "Surat", "Vadodara"],
    "Maharashtra": ["Mumbai", "Pune", "Nagpur"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Form")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // Name
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name"),
                validator: (value) =>
                value!.isEmpty ? "Enter name" : null,
              ),

              // Contact
              TextFormField(
                controller: contactController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: "Contact"),
                validator: (value) {
                  if (value!.isEmpty) return "Enter contact";
                  if (value.length != 10) return "Enter valid 10-digit number";
                  return null;
                },
              ),

              // Address Line 1
              TextFormField(
                controller: address1Controller,
                decoration: InputDecoration(
                    labelText: "Flat/House No. & Society"),
                validator: (value) =>
                value!.isEmpty ? "Enter address" : null,
              ),

              // Landmark
              TextFormField(
                controller: landmarkController,
                decoration: InputDecoration(labelText: "Landmark"),
                validator: (value) =>
                value!.isEmpty ? "Enter landmark" : null,
              ),

              // State Dropdown
              DropdownButtonFormField<String>(
                hint: Text("Select State"),
                value: selectedState,
                items: stateCityMap.keys
                    .map((state) => DropdownMenuItem(
                  value: state,
                  child: Text(state),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedState = value;
                    selectedCity = null;
                  });
                },
                validator: (value) =>
                value == null ? "Select state" : null,
              ),

              // City Dropdown
              DropdownButtonFormField<String>(
                hint: Text("Select City"),
                value: selectedCity,
                items: selectedState == null
                    ? []
                    : stateCityMap[selectedState]!
                    .map((city) => DropdownMenuItem(
                  value: city,
                  child: Text(city),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                validator: (value) =>
                value == null ? "Select city" : null,
              ),

              // Pincode
              TextFormField(
                controller: pinCodeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Pincode"),
                validator: (value) {
                  if (value!.isEmpty) return "Enter pincode";
                  if (value.length != 6) return "Enter valid pincode";
                  return null;
                },
              ),

              SizedBox(height: 10),

              // Gender Radio Buttons
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gender"),
                  Row(
                    children: ["Male", "Female", "Other"].map((g) {
                      return Row(
                        children: [
                          Radio(
                            value: g,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          Text(g),
                        ],
                      );
                    }).toList(),
                  ),
                  if (gender == null)
                    Text("Select gender",
                        style: TextStyle(color: Colors.red)),
                ],
              ),

              // Hobbies Checkboxes
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hobbies"),
                  ...hobbyList.map((hobby) {
                    return CheckboxListTile(
                      title: Text(hobby),
                      value: hobbies.contains(hobby),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            hobbies.add(hobby);
                          } else {
                            hobbies.remove(hobby);
                          }
                        });
                      },
                    );
                  }).toList(),
                  if (hobbies.isEmpty)
                    Text("Select at least one hobby",
                        style: TextStyle(color: Colors.red)),
                ],
              ),

              // Email
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value!.isEmpty) return "Enter email";
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value))
                    return "Enter valid email";
                  return null;
                },
              ),

              // Password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value!.isEmpty) return "Enter password";
                  if (value.length < 6)
                    return "Password must be 6+ chars";
                  return null;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      gender != null &&
                      hobbies.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Form Submitted")),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}