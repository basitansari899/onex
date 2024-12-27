import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/carousel_and_indicators.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/delivery_days_buttons.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/gig_and_freelancer_info.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';
import '../controllers/freelancer_detail_controller.dart';

class FreelancerDetailView extends GetView<FreelancerDetailController> {
  const FreelancerDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
            top: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSliderAndIndicators(
                      size: size, controller: controller),
                  Column(
                    children: [
                      GigAndFreelancerInfo(
                        text: text,
                        service:
                            "Do mobile app UI UX design, website or dashboard UI UX design",
                        serviceDesc:
                            "Lorem ipsum dolor sit amet consectetur. risque volutpat tortor viverra ac vulputate urna. Venenatis augue fames tincidunt.",
                        name: "Ayan Khan",
                        level: "Level 2 Seller",
                        rating: "4.9",
                        totalOrders: "130",
                        location: "Pakistan",
                      ),
                      gapH12,
                      freelancerTable(),
                      gapH12,
                      DeliveryDaysButton(
                        option1: "Option 1",
                        option2: "Option 2",
                        option3: "Option 3",
                      ),
                      gapH12,
                      CustomButton(
                          textColor: AppColors.white,
                          width: Get.width,
                          title: "Confirm",
                          onPress: () {
                            Get.toNamed(Routes.PAYMENT_OPTIONS);
                          }),
                    ],
                  ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding)
                ],
              ),
            )));
  }

  Container freelancerTable() {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.grey[200], // Background color for the table
        borderRadius:
            BorderRadius.circular(16), // Rounded corners for the table
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Table(
          border: TableBorder(
            horizontalInside: BorderSide(color: Colors.grey[400]!, width: 1),
            verticalInside: BorderSide(color: Colors.grey[400]!, width: 1),
          ),
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            // Title Row
            TableRow(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              children: const [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Basic',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Standard',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Premium',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Name your package Row
            TableRow(
              children: [
                _buildTextFieldCell('Name your package'),
                _buildTextFieldCell('Name your package'),
                _buildTextFieldCell('Name your package'),
              ],
            ),
            // Describe details Row
            TableRow(
              children: [
                _buildTextFieldCell('Describe details of the offer...'),
                _buildTextFieldCell('Describe details of the offer...'),
                _buildTextFieldCell('Describe details of the offer...'),
              ],
            ),
            // Enter price Row
            TableRow(
              children: [
                _buildTextFieldCell('Enter price here...'),
                _buildTextFieldCell('Enter price here...'),
                _buildTextFieldCell('Enter price here...'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldCell(String hintText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Get.textTheme.bodySmall?.copyWith(
              color: AppColors.placeholderTextColor,
              fontWeight: FontWeight.w400,
              fontSize: 8,
            ),
            border: InputBorder.none),
        maxLines: null,
      ),
    );
  }
}
