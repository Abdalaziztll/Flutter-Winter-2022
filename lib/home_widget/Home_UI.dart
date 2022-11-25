import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

import '../bloc/buying_bloc.dart';
import '../home_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuyingBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                SizedBox(
                  //defualt size
                  child: Text(
                    'BabySita',
                    style: TextStyle(fontSize: 60, color: Colors.red),
                    //Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
            actions: [
              IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 45,
                ),
                color: Colors.black,
              ),
              IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  size: 45,
                ),
                color: Colors.black,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 50,
            elevation: 60,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.blueGrey,
            //fixedColor: Colors.red[400]?.withOpacity(0.3),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  //color: Colors.blueGrey[800],
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  //color: Colors.blueGrey[800],
                ),
                label: "search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  //color: Colors.blueGrey[800],
                ),
                label: "cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  //color: Colors.blueGrey[800],
                ),
                label: "search",
              ),
            ],
            //Navigator.pushNamed(context, '/');
          ),
          //////////////////////body///////////////////
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          10,
                          (index) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: category_search(),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                          10,
                          (index) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: offers(),
                              )),

                      //offers2(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: elan2(),
                                  ),
                                ))

                        //IconButton(onPressed: () {}, icon: FlutterLogo()),

                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          5,
                          (index) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: cards_products(),
                              )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class elan extends StatelessWidget {
  const elan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: IconButton(onPressed: () {}, icon: FlutterLogo()),
    );
  }
}

class elan2 extends StatelessWidget {
  const elan2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: () {},
        icon: FlutterLogo(),
        iconSize: 40,
      ),
    );
  }
}

class offers extends StatelessWidget {
  const offers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //color: Colors.red,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2,
            )),
        child: IconButton(
          onPressed: () {},
          icon: FlutterLogo(),
          iconSize: 50,
        ),
      ),
    );
  }
}

class offers2 extends StatelessWidget {
  const offers2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange[200],
            border: Border.all(
              color: Colors.black,
              width: 2,
            )),
        child: IconButton(onPressed: () {}, icon: FlutterLogo()));
  }
}

class category_search extends StatelessWidget {
  const category_search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: Color.fromARGB(255, 84, 99, 107),
        ),
        onPressed: () {},
        child: Text(
          "trend",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ));
  }
}

class cards_products extends StatelessWidget {
  const cards_products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FlutterLogo(),
              const SizedBox(
                height: 25,
              ),
              Text("woman shoes"),
              Text("marka"),
              Row(
                //mainAxisAlignment:mai,
                children: [
                  Text("price: 5000"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<BuyingBloc>().add(Buythisproduct());
                    showDialog(
                      context: context,
                      builder: (context) {
                        return BlocBuilder<BuyingBloc, BuyingState>(
                          bloc: BuyingBloc(),
                          builder: (context, state) {
                            if (state is Success) {
                              return AlertDialog(
                                  content:
                                      Text("Your Order has been Accepted"));
                            } else {
                              return AlertDialog(
                                content: Text(
                                    "Re-Order please , Your order has been rejacted"),
                              );
                            }
                          },
                        );
                      },
                    );
                  },
                  child: Text("buy now"))
            ],
          ),
        ));
  }
}
/*InkWell(
            //context.read<HomeBlocBloc>()
            onTap: () {
              context.read<HomeBlocBloc>();
            },

            child:*/
