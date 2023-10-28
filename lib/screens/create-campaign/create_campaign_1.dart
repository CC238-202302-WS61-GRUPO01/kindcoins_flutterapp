import 'dart:io'; // Import the 'dart:io' package

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'create_campaign_2.dart';

class CampaignCreationPage extends StatefulWidget {
  const CampaignCreationPage({super.key});

  @override
  _CampaignCreationPageState createState() => _CampaignCreationPageState();
}

class _CampaignCreationPageState extends State<CampaignCreationPage> {
  // File to store the chosen image
  File? _chosenImage; // Add a question mark to make it nullable
  // Image picker
  final _imagePicker = ImagePicker();
  // Maximum image size
  final double _imageMaxSize = 500 * 1024; // Change the type to double
  // Pick an image from the gallery
  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: _imageMaxSize,
      maxWidth: _imageMaxSize,
    );
    if (pickedFile != null) {
      setState(() {
        _chosenImage = File(pickedFile.path);
      });
    }
  }

  void _goToPage2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CampaignCreationPage2(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBFFFD),
        appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text("Paso 1 de 5"),
      centerTitle: true,
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Crear campaña',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Step 1 of 5
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Paso 1 de 5',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              // Name of the campaign
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre de la campaña',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      maxLength: 20,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        hintText: 'Ingrese el nombre de la campaña',
                      ),
                    ),
                  ],
                ),
              ),
              // Slogan
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eslogan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      maxLength: 50,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        hintText: 'Ingrese el eslogan de la campaña',
                      ),
                    ),
                  ],
                ),
              ),
              // Campaign photo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Foto de la campaña',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Default image
                    _chosenImage != null
                        ? Image.file(_chosenImage!)
                        : Image.asset('assets/images/create_campaign/default_campaign_image.png'),
                    // Edit button
                    TextButton(
                      onPressed: () {
                        _pickImage();
                      },
                      child: Text(
                        'Editar',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Chosen photo name and Edit button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Foto elegida: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      _chosenImage != null ? _chosenImage!.path : '(Sin nombre)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        _pickImage();
                      },
                      child: Text(
                        'Editar',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Next button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                    onPressed: () {
                      _goToPage2();
                    },
                    child: Text('Siguiente'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFDE59),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}