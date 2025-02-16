import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/personalization/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        const TPrimaryHeaderContainer(
          child: Column(
            children: [
              /// Appbar
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwSections),

              /// SearchBar
              TSearchContainer(
                text: 'Search in store',
              ),
              SizedBox(height: TSizes.spaceBtwSections / 2),

              /// Categories
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Heading
                    TSectionHeading(
                      showActionButton: false,
                      title: 'Popular Categories',
                      textColor: Colors.white,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Categories
                    THomeCategories()
                  ],
                ),
              )
            ],
          ),
        ),

        /// Body
        Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
          child: const Image(image: AssetImage(TImages.promoBanner1)),
        )
      ],
    )));
  }
}
