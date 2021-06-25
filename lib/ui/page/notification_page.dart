import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';
import '../../import_package.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'Notification',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: Container());
  }
}
