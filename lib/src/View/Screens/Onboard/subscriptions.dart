import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionPlans extends StatefulWidget {
  const SubscriptionPlans({super.key});

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
             backgroundColor: Color(0xff1D1D1D),
             centerTitle: true,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Subscription Plans',style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}