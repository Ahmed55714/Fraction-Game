import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'permissions_helper.dart';

class MediaHelper {
  /// Fetches the latest images from the device's gallery.
  /// [requestType] determines the type of media to request (e.g., images, videos).
  /// [limit] specifies the maximum number of images to fetch, default is 20.
  static Future<List<AssetEntity>> getLatestImages(RequestType requestType,
      {int limit = 20}) async {
    List<AssetEntity> assetList = [];
    List<AssetPathEntity> albumList =
        await _checkPermissionAndGetAlbums(requestType);

    if (albumList.isEmpty) return assetList;

    int count = await albumList.first.assetCountAsync;
    int end = count < limit ? count : limit;
    return await albumList.first.getAssetListRange(start: 0, end: end);
  }

  /// Checks for the necessary permissions and retrieves the list of albums.
  static Future<List<AssetPathEntity>> _checkPermissionAndGetAlbums(
      RequestType requestType) async {
    List<AssetPathEntity> albumList = [];
    var permission = await PhotoManager.requestPermissionExtend();
    if (permission.isAuth) {
      albumList = await PhotoManager.getAssetPathList(type: requestType);
    } else {
      await PermissionsHelper.showPermissionRationaleDialog('Gallery');
      PhotoManager.openSetting();
    }

    return albumList;
  }

  /// Picks an image from the specified [source] (gallery or camera).
  static Future<XFile?> pickImage(ImageSource source) async {
    bool result = false;
    if (source == ImageSource.gallery) {
      result = await PermissionsHelper.requestGalleryPermissionIfNeeded();
    }
    if (result || source == ImageSource.camera) {
      try {
        final ImagePicker picker = ImagePicker();
        return await picker.pickImage(source: source);
      } catch (e) {
        print('Error picking image: $e');
        return null;
      }
    }
    return null;
  }

  /// Picks multiple images from the gallery.
  static Future<List<XFile>> pickMultipleImages() async {
    bool result = await PermissionsHelper.requestGalleryPermissionIfNeeded();
    if (result) {
      try {
        final ImagePicker picker = ImagePicker();
        final List<XFile>? pickedFiles = await picker.pickMultiImage();
        return pickedFiles ?? [];
      } catch (e) {
        print('Error picking multiple images: $e');
        return [];
      }
    }
    return [];
  }
}
