import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  
  TextEditingController weight = new TextEditingController();
  TextEditingController height = new TextEditingController();
  
  double h=0.0;
  double w=0.0;
  double BMI=0.0;
  String res='';
  void bmi(){
    w=double.parse(weight.text.toString());
    h=double.parse(height.text.toString());
    setState(() {
      BMI = (w / (h * h));
      if(BMI<18.5)
        res='You are Underweight';
      if(BMI>=18.5 && BMI<=24)
        res='You are ideal';
      if(BMI>24 && BMI<30)
        res='You are overweight';
      if(BMI>30 && BMI<32.5)
        res='You are in Obesity class 1';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        leading: Icon(Icons.people_alt_rounded),
      ),
          body: DecoratedBox(
                decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/fitness.jpg'),
        fit: BoxFit.cover,
    ),
    ),
         child:Column(
           children: [
             SizedBox(height:200,width: 200,),
             TextField(controller: weight,decoration: InputDecoration(hintText:'Enter Your Weight',fillColor: Colors.blueAccent,),style:TextStyle(wordSpacing: 2,letterSpacing: 2,fontSize: 19,fontWeight: FontWeight.w500,color: Colors.green)),
             TextField(controller: height,decoration: InputDecoration(hintText:'Enter Your Height',fillColor: Colors.blueAccent,),style:TextStyle(wordSpacing: 2,letterSpacing: 2,fontSize: 19,fontWeight: FontWeight.w500,color:Colors.green)),

            ElevatedButton(onPressed: (){
                    bmi();
            },
                child: Text("Show Results")),
             SizedBox(height:10,),
             Text("BMI Recorded is $BMI\n\n$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.green)
             )
           ],
         )
    )
    );
  }
}
