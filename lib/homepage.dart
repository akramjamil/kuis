import 'package:flutter/material.dart';
import 'dummydata.dart';
import 'loginpage.dart'; 

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang, $username'),
        
        backgroundColor: const Color.fromARGB(255, 41, 195, 242), 
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: supermarketItemList.length,
        itemBuilder: (context, index) {
          final SupermarketItem = supermarketItemList[index];
          return Card(
            child: ListTile(
              leading: Image.network(SupermarketItem.imageUrls[0], width: 200,),
              title: Text(SupermarketItem.name),
              subtitle: Text('${SupermarketItem.price}'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(SupermarketItem.name),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(SupermarketItem.imageUrls[0]),
                          SizedBox(height: 20),
                          Text(SupermarketItem.name),
                          Text('stok: ${SupermarketItem.stock}'),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Icon(Icons.logout),
        backgroundColor: const Color.fromARGB(255, 41, 195, 242), 
      ),
    );
  }
}
