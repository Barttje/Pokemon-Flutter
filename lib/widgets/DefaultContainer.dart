import 'package:flutter/material.dart';

class DefaultContainer extends StatefulWidget {
  final String title;
  final Widget child;
  final Function(String) searchCallback;

  DefaultContainer({
    @required this.title,
    @required this.child,
    @required this.searchCallback,
  });

  @override
  _DefaultContainerState createState() => _DefaultContainerState();
}

class _DefaultContainerState extends State<DefaultContainer> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(110, 149, 253, 1),
            Color.fromRGBO(81, 232, 94, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                this.widget.title,
                style: TextStyle(fontSize: 20),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (text) {
                      this.widget.searchCallback(text);
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none),
                      ),
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Color.fromRGBO(93, 93, 93, 0.2),
                    ),
                  ),
                ),
              ),
              Expanded(child: this.widget.child),
            ],
          ),
        ),
      ),
    );
  }
}
