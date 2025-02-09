import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
            //Padding to Give Default Equal Space on all side in all screenss
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Image
                    Image(
                      image:
                          const AssetImage(TImages.deliveredEmailIllustration),
                      width: THelperFunctions.screenWidth() * 0.6,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Title and Subtitle
                    Text(
                      TTexts.confirmEmailTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      'support@ecommerce.com',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.confirmEmailSubtitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Buttons
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => SuccessScreen(
                              image: TImages.staticSuccessIllustration,
                              title: TTexts.yourAccountCreatedTitle,
                              subtitle: TTexts.yourAccountCreatedSubtitle,
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                            )),
                        child: const Text(TTexts.tContinue),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(TTexts.resendEmail),
                      ),
                    ),
                  ],
                ))));
  }
}
