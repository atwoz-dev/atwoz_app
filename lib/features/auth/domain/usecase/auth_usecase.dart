import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';
import 'package:image_picker/image_picker.dart';

abstract class AuthUseCase {
  Future<UserData> signIn(UserSignInRequest user);
  Future<bool> signOut();
  Future<String?> getAccessToken();
  void setAccessToken(String accessToken);
  Future<String?> getRefreshToken();
  Future<void> rescreenProfile();
  Future<void> uploadProfilePhotos(List<XFile?> photos);
  Future<void> deleteProfilePhoto(int index);
  Future<void> uploadProfile(ProfileUploadRequest profileData);
  Future<ProfileImageResponse?> fetchProfileImages();
  Future<void> sendSmsVerificationCode(String phoneNumber);
  Future<void> activateAccount(String phoneNumber);
}
