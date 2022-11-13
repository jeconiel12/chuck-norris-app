part of '../category_page.dart';

class CategoryGrid extends StatelessWidget {
  final List<CategoryModel> categories;
  const CategoryGrid({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryCard(category: categories[index]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              SvgPicture.asset('assets/icons/${category.value}.svg'),
              const SizedBox(height: 10),
              Text(
                '${category.value.substring(0, 1).toUpperCase()}${category.value.substring(1)}',
                style: ThemeText.body1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
