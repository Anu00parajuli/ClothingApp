import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import '../Constants/global_variables.dart';

class ProceedPayment extends StatefulWidget {

   ProceedPayment({super.key });

  @override
  State<ProceedPayment> createState() => _ProceedPaymentState();
}


class _ProceedPaymentState extends State<ProceedPayment> {
   final _formKey = GlobalKey<FormState>();
   TextEditingController numberController = TextEditingController();
      String number='';
   
  //  late final config;
   final config = PaymentConfig(
  amount: 10000, // Amount should be in paisa
  productIdentity: 'dell-g5-g5510-2021',
  productName: 'Dell G5 G5510 2021',
  productUrl: 'https://www.khalti.com/#/bazaar',
  additionalData: { // Not mandatory; can be used for reporting purpose
    'vendor': 'Khalti Bazaar',
  },
  mobile: '9800000001', // Not mandatory; can be used to fill mobile number field
  mobileReadOnly: true, // Not mandatory; makes the mobile field not editable
);


  


  @override
  Widget build(BuildContext context) {
     return KhaltiScope(
  publicKey: "test_public_key_6488743825354ebf9c6da88a00516920",

  builder: (context, navigatorKey) {
    return MaterialApp(
     // routerDelegate: routerDelegate,
       navigatorKey: navigatorKey,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ne', 'NP'),
      ],
      localizationsDelegates: const [
        KhaltiLocalizations.delegate,
      
      ],
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          
          child: Icon(Icons.arrow_back,
          color: GlobalVariables.primarycolor,)),
        ),
       body: Center(
       
       child: Card(
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
        children: [
          SizedBox(height: 30,),
          RichText(text: TextSpan(
                text: 'Proceed To Pay',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 1,
                  fontSize: 30)
              )),
          SizedBox(height: 30,),
          TextFormField(
            // controller: numberController,
                      
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.contact_phone),
                        hintText: 'Contact No.',
                        
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     number =value;
                      //   });
                      // },
                      
                      validator: (value) {
                        if (value!.length != 10){
                        return 'Mobile Number must be of 10 digit';
                        }
                        else {
                        return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            
            if (_formKey.currentState!.validate()) {
                        // Navigator.pushNamed(context, 'login');
                        
              }

          }, child: Text('Pay')),
          KhaltiButton(
            // if (_formKey.currentState!.validate()) {
               config: PaymentConfig(
  amount: 10000, // Amount should be in paisa
  productIdentity: 'dell-g5-g5510-2021',
  productName: 'Dell G5 G5510 2021',
  productUrl: 'https://www.khalti.com/#/bazaar',
  additionalData: { // Not mandatory; can be used for reporting purpose
    'vendor': 'Khalti Bazaar',
  },
  mobile: '9814123080', // Not mandatory; can be used to fill mobile number field
  mobileReadOnly: true, // Not mandatory; makes the mobile field not editable
),
                  preferences:
                    [PaymentPreference.khalti,
                    PaymentPreference.eBanking,],
              
                
                
                 onSuccess: (PaymentSuccessModel ) {
                  // payPressed(address);
                  // AddressServices().placeOrder(context: context, address: 'pokhara', totalSum: 20);
                   }, onFailure: (PaymentFailureModel ) {},
            // }
               ),
        ],
       ),
       )
    )
       )
       )
      )
    )
    
    );
  }
    );
  }
} 