 import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/customer_supplier_home_screens/supplier_home_screen.dart';

import '../cart_screen_vc/cart_screen.dart';

final List<Color> colorsList = [
 Colors.yellowAccent,
 Colors.red,
 Colors.blueAccent,
 Colors.green,
 Colors.purple,
 Colors.teal
 ];

TextStyle WelcomeTextStyle(){
  return const TextStyle(
      fontSize: 45,
      fontFamily: 'Acme',
      fontWeight: FontWeight.bold);
}

Widget ProfileAnimatedText(){
  return  AnimatedTextKit(
    animatedTexts: [
      ColorizeAnimatedText('Welcome',
          textStyle: WelcomeTextStyle(),
          colors: colorsList),
      ColorizeAnimatedText('Online Store',
          textStyle: WelcomeTextStyle(),
          colors: colorsList)
    ],
    isRepeatingAnimation: true,
    repeatForever: true,
  );
}

Widget WelcomeLogo(){
  return  const SizedBox(
    height: 120,
    width: 200,
    child: Image(image: AssetImage('images/inapp/logo.jpg')),
  );
}

Widget BuyShopOnlineStore(){
  return   SizedBox(
    height: 80,
    child: DefaultTextStyle(
      style: const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent,
          fontFamily: 'Acme'),
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('Buy'),
          RotateAnimatedText('Shop'),
          RotateAnimatedText('Online Store'),
        ],
        repeatForever: true,
      ),
    ),
  );
}

 class SupplierWidgetRow extends StatelessWidget {
   const SupplierWidgetRow({
     Key? key,
     required AnimationController animationController,
   }) : _animationController = animationController, super(key: key);

   final AnimationController _animationController;

   @override
   Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Container(
               decoration: const BoxDecoration(
                   color: Colors.white38,
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(50),
                       bottomLeft: Radius.circular(50))),
               child: const Padding(
                 padding: EdgeInsets.all(12.0),
                 child: Text(
                   'Suppliers only',
                   style: TextStyle(
                       color: Colors.yellowAccent,
                       fontSize: 26,
                       fontWeight: FontWeight.w600),
                 ),
               ),
             ),
             const SizedBox(height: 6),
             Container(
               height: 60,
               width: MediaQuery.of(context).size.width * 0.9,
               decoration: const BoxDecoration(
                   color: Colors.white38,
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(50),
                       bottomLeft: Radius.circular(50))),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   AnimatedLogo(
                       animationController: _animationController),
                   YellowButton(
                     label: 'Log In',
                     onPressed: () {
                       Navigator.pushReplacementNamed(context, '/supplier_home');
                     //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SupplierHomeScreen()));
                     },
                     width: MediaQuery.of(context).size.width * 0.25,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 8),
                     child: YellowButton(
                       label: 'Sign Up',
                       onPressed: () {},
                       width: MediaQuery.of(context).size.width * 0.25,
                     ),
                   )
                 ],
               ),
             ),
           ],
         ),
       ],
     );
   }
 }

 class CustomerWidgetRow extends StatelessWidget {
   const CustomerWidgetRow({
     Key? key,
     required AnimationController animationController,
   }) : _animationController = animationController, super(key: key);

   final AnimationController _animationController;

   @override
   Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Container(
           height: 60,
           width: MediaQuery.of(context).size.width * 0.9,
           decoration: const BoxDecoration(
               color: Colors.white38,
               borderRadius: BorderRadius.only(
                   topRight: Radius.circular(50),
                   bottomRight: Radius.circular(50))),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 8),
                 child: YellowButton(
                   label: 'Log In',
                   onPressed: () {
                     Navigator.pushReplacementNamed(context, '/customer_home');
                   },
                   width: MediaQuery.of(context).size.width * 0.25,
                 ),
               ),
               YellowButton(
                 label: 'Sign Up',
                 onPressed: () {},
                 width: MediaQuery.of(context).size.width * 0.25,
               ),
               AnimatedLogo(animationController: _animationController),
             ],
           ),
         ),
       ],
     );
   }
 }

 class GoogleFBGuestWidget extends StatelessWidget {
   const GoogleFBGuestWidget({
     Key? key,
   }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: 25),
       child: Container(
         decoration:
         BoxDecoration(color: Colors.white38.withOpacity(0.3)),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             GoogleFacebookLogin(
               label: 'Google',
               onPressed: () {},
               child: const Image(
                   image: AssetImage('images/inapp/google.jpg')),
             ),
             GoogleFacebookLogin(
               label: 'Facebook',
               onPressed: () {},
               child: const Image(
                   image: AssetImage('images/inapp/facebook.jpg')),
             ),
             GoogleFacebookLogin(
               label: 'Guest',
               onPressed: () {},
               child: const Icon(
                 Icons.person,
                 size: 55,
                 color: Colors.lightBlueAccent,
               ),
             )
           ],
         ),
       ),
     );
   }
 }


 class AnimatedLogo extends StatelessWidget {
   const AnimatedLogo({
     Key? key,
     required AnimationController animationController,
   })  : _animationController = animationController,
         super(key: key);

   final AnimationController _animationController;

   @override
   Widget build(BuildContext context) {
     return AnimatedBuilder(
       animation: _animationController.view,
       builder: (context, child) {
         return Transform.rotate(
           angle: _animationController.value * 2 * pi,
           child: child,
         );
       },
       child: const Image(image: AssetImage('images/inapp/logo.jpg')),
     );
   }
 }

 class GoogleFacebookLogin extends StatelessWidget {
   final String label;
   final Function() onPressed;
   final Widget child;

   const GoogleFacebookLogin(
       {Key? key,
         required this.label,
         required this.onPressed,
         required this.child})
       : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: 8),
       child: InkWell(
         onTap: onPressed,
         child: Column(
           children: [
             SizedBox(height: 50, width: 50, child: child),
             Text(
               label,
               style: const TextStyle(color: Colors.white),
             )
           ],
         ),
       ),
     );
   }
 }