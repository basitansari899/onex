import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/controllers/register_controller.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';
import 'package:onex/app/widgets/success_popup.dart';

class PackagePricingTable extends GetView<RegisterController> {
  const PackagePricingTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            gapH24,
                BackButtonWidget(),
                
                gapH24,
                Center(
                  child: Text('Set your packages and Prices',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.black)),
                ),
                gapH32,
            Container(
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
                    horizontalInside:
                        BorderSide(color: Colors.grey[400]!, width: 1),
                    verticalInside:
                        BorderSide(color: Colors.grey[400]!, width: 1),
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
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 36,
                    child: CustomTextField(
                      hintTextStyle: Get.textTheme.bodySmall?.copyWith(
                        color: AppColors.placeholderTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                      ),
                      contentPadding:  EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      hint: "Enter Delivery Days",
                      fieldData: controller.seriviceTitle,
                    ),
                  ),
                ),
                gapW6,
                Expanded(
                  child: SizedBox(
                    height: 36,
                    child: CustomTextField(
                      hintTextStyle: Get.textTheme.bodySmall?.copyWith(
                        color: AppColors.placeholderTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                      ),
                      contentPadding:  EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      hint: "Enter Delivery Days",
                      fieldData: controller.seriviceTitle,
                    ),
                  ),
                ),
                gapW6,
                Expanded(
                  child: SizedBox(
                    height: 36,
                    child: CustomTextField(
                      hintTextStyle: Get.textTheme.bodySmall?.copyWith(
                        color: AppColors.placeholderTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                      ),
                      contentPadding:  EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      hint: "Enter Delivery Days",
                      fieldData: controller.seriviceTitle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 136),
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.confirm,
                  onPress: (){
                     showCustomPopup(
      context: context,
      imagePath: ImageAsset.tickCircleIcon, // Path to your asset image
      title: 'Successful!',
      description: 'Congratulations your service is live now!',
      buttonText: StringConstant.ok,
      onButtonPressed: () => Get.offAllNamed(Routes.LOGIN),
    );
                  }),
          ],
        ).paddingSymmetric(horizontal: 16),
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
