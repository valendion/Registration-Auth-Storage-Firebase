import 'package:image_picker/image_picker.dart';

class CameraHelper {
  static final ImagePicker _picker = ImagePicker();

  static Future<XFile?> getPicture() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    return photo;
  }
}
