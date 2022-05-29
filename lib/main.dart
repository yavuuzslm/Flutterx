import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.red,
    );
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        secondary: Colors.red,
      )),
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createRow(),
            Expanded(
              child: createColumn(),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.safety_check),
        ),
      ),
    );
  }

  Row createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerCreator(1, Colors.red.shade50),
        ContainerCreator(2, Colors.red.shade100),
        ContainerCreator(3, Colors.red.shade200),
        ContainerCreator(4, Colors.red.shade300),
        ContainerCreator(5, Colors.red.shade400),
      ],
    );
  }

  Column createColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: ContainerCreator(2, Colors.red.shade500, 10)),
        Expanded(child: ContainerCreator(3, Colors.red.shade600, 10)),
        Expanded(child: ContainerCreator(4, Colors.red.shade700, 10)),
        Expanded(child: ContainerCreator(5, Colors.red.shade800, 10)),
        Expanded(child: ContainerCreator(6, Colors.red.shade900, 10)),
        Expanded(child: ContainerCreator(7, Colors.red.shade900, 10)),
        Expanded(child: ContainerCreator(8, Colors.red.shade900, 10)),
        Expanded(child: ContainerCreator(9, Colors.red.shade900, 10)),
        Expanded(child: ContainerCreator(10, Colors.red.shade900, 10)),
      ],
    );
  }

  Container ContainerCreator(int columnNumber, Color containerColor,
      [double marginValue = 0]) {
    return Container(
      margin: EdgeInsets.only(top: marginValue),
      color: containerColor,
      width: 75,
      height: 75,
      child: Text(
        "$columnNumber",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  List<Widget> get overFlowProblem {
    return [
      Expanded(
        flex: 3,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        child: Container(color: Colors.black, width: 100, height: 100),
      ),
    ];
  }

  List<Widget> get containerWithExpanded {
    return [
      Expanded(
        flex: 3,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
      ),
      Expanded(
        child: Container(color: Colors.black, width: 100, height: 100),
      ),
    ];
  }

  List<Widget> get containerWithFlexible {
    return [
      Flexible(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
      Flexible(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    ];
  }

  SizedBox SizedBoxLessons() {
    return SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: const Center(
                child: Image(
                    image: NetworkImage(
                        "https://apod.nasa.gov/apod/image/2110/LucyLaunchB_Kraus_2048.jpg"))),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            child: const Center(
              child: Text(
                "This is a text",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: const Center(
              child: Text(
                "This is not a text",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget containerLessons() {
    return Center(
      child: Container(
        //color: Colors.blueGrey,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80"),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, -10),
            ),
          ],
        ),
      ),
    );
  }
}
