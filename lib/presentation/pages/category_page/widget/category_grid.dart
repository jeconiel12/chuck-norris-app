part of '../category_page.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    required this.categories,
    super.key,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryCard(
        category: categories[index],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    super.key,
  });
  final String category;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ThemeColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () => Navigator.pop(context, category),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/$category.svg'),
              const SizedBox(height: 10),
              Text(
                '${category.substring(0, 1).toUpperCase()}${category.substring(1)}', // ignore: lines_longer_than_80_chars
                style: ThemeText.body1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
