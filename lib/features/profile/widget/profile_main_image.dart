import 'package:atwoz_app/core/widgets/image/app_image.dart';
import 'package:flutter/material.dart';

class ProfileMainImage extends StatelessWidget {
  const ProfileMainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImage(
      imageURL:
          'https://s3-alpha-sig.figma.com/img/73e0/0fbd/3b153b4ecebfbf05bb51fb36ba2b4642?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A-89mW7rZrZwQIPSTfmNP91jUMhyjH1uO94wiwSqKemu3LfUh-P-I0fMGsY7p89052mSakoquG~u~8c5TugtWw9q95G92V0UcSn7oMDMe84aMzm2ZRBqcNwSx6wrFJw1LHKuQcXxHKbjFFGAbPpSpLyiLu-LvcAIjVbDWU07dzrp2dRH26J~1QL4-76mUn8wIBTp46icZbrKUE0QV4Vm9nWYYLq3BjsabBT2gCSXW8hBSqf~OP5FG-k5zpFjBOKusNhJFdCUUUJxZsm9I6kAB5lhxlBIkuMW9wRGdUUlA2jebXXXJ1yPpgLMxNN2lHEGchiA4KtpNqNe-HHJgjyI6A__',
    );
  }
}
