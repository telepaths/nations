import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'mini Nations',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(title: const Text('mini Nations')),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/asean-icon.png"), // No matter how big it is, it won't overflow
              ),
              title: Text('ASEAN'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AseanRoute()),
                )
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/saarc-icon.png"), // No matter how big it is, it won't overflow
              ),
              title: Text('SAARC'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SaarcRoute()),
                )
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ASEAN
class AseanRoute extends StatelessWidget {
  const AseanRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASEAN'),
      ),
      body: ListView(
        children: <Widget>[
          // Card(child: ListTile(title: Text('One-line ListTile'))),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/brunei.png"),
              ),
              title: Text('Brunei'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/cambodia.png"),
              ),
              title: Text('Cambodia'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/indonesia.png"),
              ),
              title: Text('Indonesia'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/laos.png"),
              ),
              title: Text('Laos'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/malaysia.png"),
              ),
              title: Text('Malaysia'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myanmar.png"),
              ),
              title: Text('Myanmar'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/singapore.png"),
              ),
              title: Text('Singapore'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/thailand.png"),
              ),
              title: Text('Thailand'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/the-philippines.png"),
              ),
              title: Text('The Philippines'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/vietnam.png"),
              ),
              title: Text('Vietnam'),
            ),
          ),
          Card(
            child: ListTile(
              title: Column(
                children: <Widget>[
                  ElevatedButton(child: Text('Comparison'), onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CompareAseanRoute()),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CompareAseanRoute extends StatelessWidget{
  const CompareAseanRoute({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compare ASEAN'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('GDP'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AseanGDPRoute()),
                )
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Land Area'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Popultaion'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AseanPopulationRoute()),
                )
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Sea Area'),
            ),
          ),
        ],
      ),
    );
  }
}

class AseanGDPRoute extends StatelessWidget {
  const AseanGDPRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASEAN GDP'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'Country',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Value',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine')),
              DataCell(Text('43')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

class AseanPopulationRoute extends StatelessWidget {
  const AseanPopulationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASEAN Population'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Country',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Value (in million)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              numeric: true
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Brunei')),
                DataCell(Text('0.452')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Cambodia')),
                DataCell(Text('17.121')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Indonesia')),
                DataCell(Text('279.118')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// SAARC
class SaarcRoute extends StatelessWidget {
  const SaarcRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SAARC'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/afghanistan.png"),
              ),
              title: Text('Afghanistan'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/bangladesh.png"),
              ),
              title: Text('Bangladesh'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/bhutan.png"),
              ),
              title: Text('Bhutan'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/india.png"),
              ),
              title: Text('India'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/the-maldives.png"),
              ),
              title: Text('The Maldives'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/nepal.png"),
              ),
              title: Text('Nepal'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pakistan.png"),
              ),
              title: Text('Pakistan'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sri-lanka.png"),
              ),
              title: Text('Sri Lanka'),
            ),
          ),
        ],
      ),
    );
  }
}