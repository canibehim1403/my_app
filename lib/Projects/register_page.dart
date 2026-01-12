import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  bool _obscure = true;
  String? _role;
  String? _level;
  final List<String> levels = ['Beginner', 'Intermediate', 'Expert'];
  bool _marketing = false;
  bool _terms = false;
  String? _req(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  String? _emailOk(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) { return 'Enter a valid email'; }
    return null; }
  String? _pwOk(String? value) {
    if (value == null || value.trim().isEmpty) { return 'Password is required'; }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null; }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.4),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 30,),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Register",
                  style: TextStyle(
                   color: Colors.black,
                   fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.next,
                validator: _req,
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: _emailOk,
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      !_obscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscure,
                validator: _pwOk,
              ),
              SizedBox(height: 20,),
              DropdownButtonFormField<String>(
                initialValue: _role, //        value: _role,
                decoration: const InputDecoration(
                  labelText: 'Role',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  'Student',
                  'Developer',
                  'Designer',
                ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (v) => setState(() => _role = v),
                validator: (v) => v == null ? 'Select a role' : null,
              ),
              SizedBox(height: 20,),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: RadioGroup(
                      groupValue: _level,
                      onChanged: (value) {
                        setState(() {
                          _level = value!;
                        });
                      },
                      child: Column(
                        children: levels.map((level) {
                          return RadioListTile<String>(
                            value: level,
                            title: Text(level),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Positioned(
                    left: 12,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        'Experience Level',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SwitchListTile(
                value: _marketing,
                onChanged: (v) => setState(() => _marketing = v),
                title: const Text('Receive product updates'),
              ),
              //SizedBox(height: 5,),
              CheckboxListTile(
                value: _terms,
                onChanged: (v) => setState(() => _terms = v ?? false),
                title: const Text('I agree to Terms'),
                subtitle: !_terms
                    ? const Text('Required', style: TextStyle(color: Colors.red))
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _terms) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserInfoPage(
                          name: _name.text,
                          email: _email.text,
                          role: _role ?? '',
                          level: _level ?? '',
                          marketing: _marketing,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please complete the form and agree to terms'),
                      ),
                    );
                  }
                },
                child: const Text("Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class UserInfoPage extends StatelessWidget {
  final String name;
  final String email;
  final String role;
  final String level;
  final bool marketing;
  const UserInfoPage({
    super.key,
    required this.name,
    required this.email,
    required this.role,
    required this.level,
    required this.marketing,
  });
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("User Info")),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name: $name"),
          Text("Email: $email"),
          Text("Role: $role"),
          Text("Experience Level: $level"),
          Text("Marketing Updates: ${marketing ? "Yes" : "No"}"),
        ],
      ),
    ),
  );
}
}
