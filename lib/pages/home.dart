import 'package:flutter/material.dart';
import 'package:i_band_name/models/band.dart';


class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<Band> bands = [
        Band(id: '1', name: 'Linkking Park', votes: 2),
        Band(id: '1', name: 'Queen', votes: 2),
        Band(id: '1', name: 'Metalica', votes: 2),
        Band(id: '1', name: 'Enanitos verdes', votes: 2),
        Band(id: '1', name: 'Mago de oz', votes: 2),

    ];

    @override
    Widget build(BuildContext context) {
        return  Scaffold(
            appBar: AppBar(
                title: const Text('Band Names', style: TextStyle(color: Colors.black87),),
                backgroundColor: Colors.white,
                elevation: 1,
            ),
            body: ListView.builder(
                itemCount: bands.length,
                itemBuilder: (BuildContext context, int index){
                    return bandTile(bands[index]);
                },
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: (){},
                elevation: 1,
                child: const Icon(Icons.add),
            ),
        );
    }

    ListTile bandTile(Band band) {
        return ListTile(
            leading: CircleAvatar(
                child: Text(band.name!.substring(0,2)),
                backgroundColor: Colors.blue[100],
            ),
            title: Text(band.name),
            trailing: Text('${band.votes}', style: TextStyle(fontSize: 20),),
            onTap: () => {
                print(band.name)
            },
        );
    }

    addNewBand(){
        
    }
}