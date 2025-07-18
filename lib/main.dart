import 'package:flutter/material.dart';
import 'chat.dart';
void main() {
  runApp(Nav());
}

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.white),label: 'Menu',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.white),label: 'chat',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.white),label: 'call',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.adjust_rounded,color: Colors.white),label: 'Status',backgroundColor: Colors.black),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.green),),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 20,),
          CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1752689527733-d9cf5e2e0cac?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDN8RnpvM3p1T0hONnd8fGVufDB8fHx8fA%3D%3D'),
            radius: 15,
            backgroundColor: Colors.green,
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("All",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 12,),
                    Text("Unread",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("Contact",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("Groups",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1751320805634-87f40045bced?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text("Mukil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓you:hii daa",style: TextStyle(fontSize: 15),),
                trailing: Text('10.08',style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1751320805634-87f40045bced?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text("RMK engineering college",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓Register NPTEL course",style: TextStyle(fontSize: 15),),
                trailing: Text('10.10',style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1749308887577-bde830c7dd4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text("Flutter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓Complete calculator",style: TextStyle(fontSize: 15),),
                trailing: Text('10.20',style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1749308887577-bde830c7dd4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text("IT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓placement training class ",style: TextStyle(fontSize: 15),),
                trailing: Text('10.30',style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1751601727553-8bd4ad69f6b4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDd8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
                ),
                title: Text("UI/UX designer ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓App developer ",style: TextStyle(fontSize: 15),),
                trailing: Text('10.35',style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1751601727553-8bd4ad69f6b4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDd8Ym84alFLVGFFMFl8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                  backgroundColor: Colors.green,
          
                ),
                title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text("✓✓you:welcome!",style: TextStyle(fontSize: 15),),
                trailing: Text('10.50',style: TextStyle(fontSize: 14),),
              ),
            ],
          
          ),
        ),
      ),
    );
  }
}
