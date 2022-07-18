import 'package:flutter/foundation.dart';

import '../servicies/data_services.dart';
import '../models/course_model.dart';

class CourseProvider with ChangeNotifier {
  List<Course> _courses = [];
  bool isLoading = true;

  List<Course> get getCourses {
    // Getting a copy of the my_courses List by using the spread operator [...]
    return [..._courses];
  }

  Course findById(String id) {
    return _courses.firstWhere((course) => course.id == id);
  }

  void fetchRecomCourses() async {
    _courses = await DataServicesies.GetCourses();
    isLoading = false;
    notifyListeners();
  }
}
