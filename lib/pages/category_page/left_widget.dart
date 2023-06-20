part of pages;

class LeftWidgetItem extends StatelessWidget {
  final Category item;
  final bool? isCurrent;

  const LeftWidgetItem({required this.item, this.isCurrent, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCurrent! ? null : context.colorScheme.background),
      child: Text(
        item.cname,
        style: TextStyle(color: isCurrent! ? context.primaryColor : null),
      ),
    );
  }
}
