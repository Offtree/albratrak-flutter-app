import 'package:albatrak/providers/course_provider/course_provider.dart';
import 'package:albatrak/widgets/organisms/address_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This Widget depends on the following providers
/// `CourseProvider` for course information.
class CourseDescriptionPage extends StatefulWidget {
  @override
  _CourseDescriptionPageState createState() => _CourseDescriptionPageState();
}

class _CourseDescriptionPageState extends State<CourseDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    final course = courseProvider.course.data;
    return Scaffold(
      appBar: AppBar(
        title: Text(course?.name ?? ""),
      ),
      body: course == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Course Info",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("Practice Range"),
                        subtitle: Text("Available"),
                        trailing: Icon(Icons.map),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("Type"),
                        subtitle: Text("No membership required"),
                        trailing: Text("Public"),
                      ),
                      ListTile(
                        title: Text("Par"),
                        subtitle: Text("Total par for the course"),
                        trailing: Text("36"),
                      ),
                      ListTile(
                        title: Text("Length"),
                        subtitle: Text("Total yards for the course"),
                        trailing: Text("3113"),
                      ),
                      ListTile(
                        title: Text("Slope"),
                        subtitle: Text("Average slope of the course"),
                        trailing: Text("115"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Contact Info",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: AddressCard(
                    address: course.address,
                    title: course.name,
                    phonenumber: course.phonenumber,
                  ),
                )
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: "Starts a new round on ${course?.name}",
        icon: Icon(Icons.golf_course),
        label: Text("Play The Course"),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(),
            IconButton(
              icon: Icon(Icons.feedback),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
