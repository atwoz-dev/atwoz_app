enum SecureStorageItem {
  phoneNumber('phoneNumber'),
  kakaoId('kakaoId'),
  accessToken('AuthProvider.token'),
  refreshToken('AuthProvider.reToken');

  const SecureStorageItem(this.key);

  final String key;
}
