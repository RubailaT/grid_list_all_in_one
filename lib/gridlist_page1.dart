 import 'package:flutter/material.dart';
import 'package:grid_list_all_in_one/mode_page.dart';
import 'package:grid_list_all_in_one/model_page2.dart';

class GridListPage extends StatefulWidget {
  const GridListPage  ({Key? key}) : super(key: key);

  @override
  State<GridListPage> createState() => _GridListPageState();
}

class _GridListPageState extends State<GridListPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    List listitems=[
      Modellist(
          col: Color(0xcfF3BD47),
          img: "images/folder.png",
          title: "File Manager",
          subtitle: "Theme 1 Screens",
          ico: Icons.chevron_right, col1: Color(0xcfF3BD47)),
      Modellist(
          col:Color(0xcf3BBBAC),
          img: "images/weightlifting.png",
          title: "Excercise Tips",
          subtitle: "Theme 2 Screens",
          ico: Icons.chevron_right, col1: Color(0xcf3BBBAC)),
      Modellist(
          col:Color(0xcfAB90C5),
          img: "images/dish.png",
          title: "Food Recipe",
          subtitle: "Theme 3 Screens",
          ico: Icons.chevron_right, col1: Color(0xcfAB90C5)),
      Modellist(
          col: Colors.cyan,
          img: "images/briefcase.png",
          title: "Gym",
          subtitle: "Theme 4 Screens",
          ico:Icons.chevron_right, col1:Colors.cyan),
      Modellist(
          col: Color(0xcfF3BD47),
          img: "images/tools.png",
          title: "E-wallet",
          subtitle: "Theme 5 Screens",
          ico: Icons.chevron_right, col1: Color(0xcfF3BD47)),
    ];

    List GridItems=[
        Modelgrid(
            col: Colors.cyan,
            image: "images/smartphone.png",
            text: "Default Theme"),

      Modelgrid(
          col: Color(0xcfAB90C5),
          image: "images/app.png",
          text: "Full Apps"),

      Modelgrid(
          col: Color(0xcf3BBBAC),
          image: "images/productivity.png",
          text: "Integration"),
      Modelgrid(
          col:Color(0xcfF3BD47),
          image: "images/dashboard.png",
          text: "Dashboard")
];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("AllInOne UI Kit",style:
        TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
        Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;

          });
        },
        ),],
      ),

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(

                shrinkWrap: true,
                itemCount: GridItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,

                    childAspectRatio: 3/2,

                  ), itemBuilder: (context,index){
                    return Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),

                      color: GridItems[index].col,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                              width: 50,
                              child: Image(image: AssetImage(GridItems[index].image),)
                          ),
                          SizedBox(height: 10,),
                          Text(GridItems[index].text,style:
                          TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w700),),
                        ],
                      ),

                    );
              }
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Themes",style: TextStyle(color:
              Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listitems.length,
                itemBuilder:(context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                    decoration: BoxDecoration(
                      color: listitems[index].col,
                      borderRadius: BorderRadius.circular(5),
                    ),

                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width:50,
                                height: 50,

                              decoration: BoxDecoration(

                                  image: DecorationImage(image:AssetImage(listitems[index].img),
                                  ),
                                  ),


                            ),
                          ],
                        ),
                      ),

                      Stack(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 75,
                              width: 260,
                              child: Card(
                                elevation: 5,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(listitems[index].title,style: TextStyle(color:
                                      Colors.black,fontWeight: FontWeight.w700),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(listitems[index].subtitle,
                                          style: TextStyle(color:
                                      Colors.grey,fontWeight: FontWeight.w700),),
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left:242),
                            child: CircleAvatar(radius: 18,
                                  backgroundColor:listitems[index].col1,
                                  child: Icon(listitems[index].ico),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                },
                ),
          ],
        ),
      ),



    );
  }
}
