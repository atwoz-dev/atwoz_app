import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

abstract class AuthUseCase {
  Future<UserResponse> signIn(UserSignInRequest user);
  Future<void> signOut();
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  UserResponse? get user;
  Listenable userRefresh();
  Future<void> uploadProfilePhotos(List<XFile?> photos);
  Future<void> deleteProfilePhoto(int index);
  Future<void> uploadProfile(ProfileUploadRequest profileData);
  Future<ProfileImageResponse?> fetchProfileImages();
  Future<String> requestBizgoToken();
  Future<void> sendVerificationCode(
      String phoneNumber, String token, String message);
}
