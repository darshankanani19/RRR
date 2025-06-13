import 'package:project_management/consts/const.dart';
Widget simpleProfileField({required String value,controller}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    decoration: BoxDecoration(
      color: const Color(0xFFFAF8FB),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xFFE6E2E7)),
    ),
    child: TextFormField(


      style: const TextStyle(
        fontSize: 16,

        color: Colors.black87,
      ),
      decoration: InputDecoration(
        hintText: value,
        border: InputBorder.none,
      ),
      controller: controller,
    ),
  ).marginOnly(bottom: 10);
}
