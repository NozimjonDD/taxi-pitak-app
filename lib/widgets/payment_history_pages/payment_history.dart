import 'package:flutter/material.dart';

import '../../common/static_datas.dart';

class PaymentHistoryBar extends StatelessWidget {
  // const PaymentHistoryBar({Key? key}) : super(key: key);
  List<PaymentHistory> historyList=List.empty(growable: true)..addAll([
    for(var i=0;i<=20;i++) PaymentHistory(id: 'p$i', time: DateTime.now(), title: 'Tulov $i')
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Tulovlar tarixi",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: historyList.length,
          itemBuilder: (context,index){
            final PaymentHistory user=historyList.elementAt(index);
            return Card(
              child: ListTile(
                onTap: (){
                  debugPrint(user.id);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return HistoryDetailPage(user: user);
                  }));
                },
                leading: FlutterLogo(),
                trailing: Text(user.id??'id'),
                title: Text(user.title??'user'),
                subtitle: Text('${user.time??DateTime.now()}'),
              ),
            );
          }
      ),
    );
  }
}

class HistoryDetailPage extends StatelessWidget {
  final PaymentHistory user;
  HistoryDetailPage({super.key,required this.user});
  final TextEditingController controller=TextEditingController();
  void pritData(){
    debugPrint(controller.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title??'user'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            onChanged: (newValue){
              debugPrint(newValue);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pritData,
      ),
    );
  }
}

