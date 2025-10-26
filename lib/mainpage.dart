import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  //variable
  TextEditingController targetAmountController = TextEditingController();
  TextEditingController startingAmountController = TextEditingController();
  TextEditingController savingPerWeekController = TextEditingController();
  double totalWeeks = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Saving Goal Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total Weeks : $totalWeeks', style: TextStyle(fontSize: 30)),
              TextField(
                controller: targetAmountController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  labelText: 'Your Target Amount',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: startingAmountController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  labelText: 'Starting Amount',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: savingPerWeekController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  labelText: 'Saving Per Week',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  calculate(); // call the calculate method
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculate() {
    //get the string from the text controller and parse into double
    double? targetAmount = double.tryParse(targetAmountController.text);
    double? startingBalance = double.tryParse(startingAmountController.text);
    double? savingPerWeek = double.tryParse(savingPerWeekController.text);

    //check the invalid data
    if (targetAmount == null ||
        startingBalance == null ||
        savingPerWeek == null) {
    //pop a message 
      SnackBar snackBar = const SnackBar(
        content: Text('Please fill all fields with valid values'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }else{
      //calculate the week 
    totalWeeks = (targetAmount - startingBalance) / savingPerWeek;
    totalWeeks = double.parse(totalWeeks.toStringAsFixed(2));
    }
    setState(() {});
  }
}
