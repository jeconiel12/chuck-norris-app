part of '../category_page.dart';

class CategoryLoading extends StatelessWidget {
  const CategoryLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: SpinKitPulse(color: ThemeColor.text));
  }
}
