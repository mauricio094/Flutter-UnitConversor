import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final IconData categoryIcon;
  final ColorSwatch categoryColor;
  final String categoryName;

  const Category(this.categoryName, this.categoryColor, this.categoryIcon,);

  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          highlightColor: categoryColor,
          splashColor: categoryColor,
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(
                      categoryIcon,
                      size: 60.0,
                    )),
                Center(
                  child: Text(
                    categoryName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
