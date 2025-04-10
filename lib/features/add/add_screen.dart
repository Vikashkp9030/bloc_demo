import 'package:flutter/material.dart';

class CreateTodoScreen extends StatefulWidget {
  final Function(String title, String description) onSubmit;

  const CreateTodoScreen({super.key, required this.onSubmit});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      widget.onSubmit(
        _titleController.text.trim(),
        _descriptionController.text.trim(),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter a title' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 4,
                validator: (value) => value == null || value.isEmpty
                    ? 'Enter a description'
                    : null,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Save Todo'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
