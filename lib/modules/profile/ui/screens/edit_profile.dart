import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:restora/modules/profile/widgets/user_image_picker.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../../../../shared/widgets/custom_textField.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    _saveImageToLocal(img);
    _image = img;
  }

  Future<void> _saveImageToLocal(Uint8List image) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/profile_image.png';
    final File file = File(filePath);
    await file.writeAsBytes(image);
    // You can now use the filePath to retrieve the image later if needed.
    print('Image saved to: $filePath');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: 'আপডেট',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          suffixIcon: Icons.update,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'প্রোফাইল',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 65,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : const CircleAvatar(
                            radius: 65,
                            backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/6596/6596121.png'),
                          ),
                    Positioned(
                      bottom: 0,
                      left: 80,
                      child: IconButton(
                          onPressed: selectImage,
                          icon: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.deepOrange,
                            ),
                          )),
                    )
                  ],
                ),
                CustomTextField(
                  labelText: 'নাম',
                  textFieldColor: Colors.grey.shade200,
                  borderColor: Colors.grey.shade200,
                  hintText: 'আপনার নাম দিন',
                ),
                CustomTextField(
                  labelText: 'ইমেইল',
                  textFieldColor: Colors.grey.shade200,
                  borderColor: Colors.grey.shade200,
                  hintText: 'আপনার ইমেইল দিন',
                ),
                CustomTextField(
                  labelText: 'মোবাইল',
                  textFieldColor: Colors.grey.shade200,
                  borderColor: Colors.grey.shade200,
                  hintText: 'আপনার মোবাইল নাম্বার দিন',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
