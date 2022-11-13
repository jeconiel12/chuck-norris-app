part of '../category_page.dart';

class CategoryLoading extends StatelessWidget {
  const CategoryLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 100),
      child: Center(
        child: SpinKitPulse(
          color: ThemeColor.text,
        ),
      ),
    );
  }
}
