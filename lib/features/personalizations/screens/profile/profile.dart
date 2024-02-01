import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalizations/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      ///--body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(

            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(

                  children: [
                    const TCircularImage(image: TImages.user,width: 80,height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              ///-- Details

              const SizedBox(height: TSizes.spaceBtwItems /2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),


              /// Heading Profile Info
              const TSectionHeading(title: 'Profile Information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

               TProfileMenu(onPressed: () {}, title: 'Name', value: 'Mehboob Alam'),
               TProfileMenu(onPressed: () {}, title: 'Username', value: 'mehboob_alam'),

              const SizedBox(height: TSizes.spaceBtwItems /2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(title: 'Profile Information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: () {}, title: 'User ID', value: '423231',icon: Iconsax.copy),
              TProfileMenu(onPressed: () {}, title: 'E-mail', value: 'mehboobcodes@gmail.com'),
              TProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+92-317-1981460'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '5 April 2005'),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account ',style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


