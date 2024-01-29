part of '../../index.dart';

/// 首頁輪播圖
class IndexTopicComponentCarousel extends ConsumerWidget {
  final ZheCarouselResult zheModel;

  const IndexTopicComponentCarousel(this.zheModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ZheCarouselResult(:content) = zheModel;
    return AspectRatio(
      aspectRatio: 2.53,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          final item = content[index];
          return ImageView(
              image: MyImage.network(
                  url: item.pic,
                  params: ImageParams(
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle)));
        },
        itemCount: content.length,
        pagination: const SwiperPagination(),
        onTap: (int index) async {
          final ZheCarousel(:getUrl, :name) = content[index];
          final zheAppKey = ref.zheAppKey;
          final url = getUrl.replaceAll("{替换appkey}", zheAppKey);
          context.navToWidget(
              to: ZheCarouselProductsPage(apiUrl: url, name: name));
        },
      ),
    );
  }
}
