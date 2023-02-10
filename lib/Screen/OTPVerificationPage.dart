import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rajpath_test_series/Screen/LoginPage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const FractionallySizedBox(widthFactor: 1, child: PinputExample()),
      ),
    );
  }
}


/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  Constants constants = Constants();
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    //const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
    var borderColor = constants.yellowOne;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    return Form(
      key: formKey,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Text("VERIFY MOBILE NUMBER" , style: TextStyle(color: Colors.black, fontSize: 16), ),),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/lock.png', height: 200, color: constants.yellowOne),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("OTP has been sent to you on your mobile number. please enter it below.", textAlign: TextAlign.center,
                style: TextStyle(color: Colors.purple),)),
              ),
              SizedBox(height: 24),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  validator: (value) {
                    return value == '2222' ? null : 'Pin is incorrect';
                  },

                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),



              SizedBox(height: 64),
              Row(

                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Resend'),
                    ),
                      style:  ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: constants.yellowOne)
                      )),),
                  ),
                  SizedBox(width: 12),

                  Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Verify '),
                  ))),

                ],
              ),
              SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
    /// Optionally you can use form to validate the Pinput
  /*  return Form(
      key: formKey,
      child: Stack(
        children: [
         *//* Container(
            height: 50,
            margin: EdgeInsets.only(left:50,top: 50),
            child: Text('Code is sent to  8945651234',style: TextStyle(fontSize: 20),),
          ),*//*
          // addVerticalSpace(8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            *//*  Image.asset('assets/images/lock.png', height: 200, color: Colors.purple),
              SizedBox(height: 50),*//*
              Directionality(
                // Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  validator: (value) {
                    return value == '2222' ? null : 'Pin is incorrect';
                  },
                  // onClipboardFound: (value) {
                  //   debugPrint('onClipboardFound: $value');
                  //   pinController.setText(value);
                  // },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),
             *//* SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't recieve code?"),
                  Text(' Resend Again', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),*//*


            ],
          ),
         *//* Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle:
                    TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8)),
                    backgroundColor: Colors.yellow,
                    minimumSize: Size.fromHeight(50),
                  ),
                  child: const Text("Verify OTP")),
            ),
          ),*//*
        ],
      ),
    );*/
  }
}