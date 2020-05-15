import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzler/models/category.dart';
import 'package:quizzler/routes.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Categories(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose your categories"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Consumer<Categories>(
          builder: (context, categories, child) => Column(
            children: [
              Expanded(
                flex: 10,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                  ),
                  itemCount: categories.items.length,
                  itemBuilder: (context, i) => Card(
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          categories.items[i].name,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      RaisedButton(child: Text("GO"), onPressed: (){
                        // 
                        // Navigator.of(context).pushNamed(Routes.quizzList)
                      },),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
