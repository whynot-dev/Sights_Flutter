import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/localization/app_localizations.dart';

class CalendarBottomSheet extends StatefulWidget {
  const CalendarBottomSheet({
    this.initialDate,
    this.title,
  });

  final String? title;
  final DateTime? initialDate;

  @override
  _CalendarBottomSheetState createState() => _CalendarBottomSheetState();
}

class _CalendarBottomSheetState extends State<CalendarBottomSheet> {
  DateTime? _selectedDate;

  DateRangePickerController _controller = DateRangePickerController();

  @override
  void initState() {
    _selectedDate = widget.initialDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - 30,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ScrollConfiguration(
            behavior: DisableGrowEffectScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:8),
                  _buildIcon(),
                  SizedBox(height:12),
                  _buildTitle(context),
                  SizedBox(height:16),
                  _buildCalendar(context),
                  SizedBox(height: 16),
                  _buildApplyButton(context),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildIcon() => Center(
    child: Container(
      height: 4,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: AppColors.gray2,
      ),
    ),
  );

  Widget _buildTitle(context) => Text(
    widget.title ?? AppLocalizations.of(context).dateOfBirth,
    style: TextStyle(
      color: AppColors.onAccent,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 28/20,
    ),
  );

  Widget _buildCalendar(context) => SizedBox(
    height: 390,
    child: SfDateRangePicker(
          controller: _controller,
          monthFormat: 'MMMM',
          selectionMode: DateRangePickerSelectionMode.single,
          onSelectionChanged: (date) {
            _selectedDate = date.value;
          },
          headerHeight:60,
          selectionShape: DateRangePickerSelectionShape.rectangle,
          initialSelectedDate: widget.initialDate,
          showNavigationArrow: true,
          selectionTextStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: AppColors.onAccent,height: 24/17),
          selectionColor: AppColors.accent,
          monthCellStyle: DateRangePickerMonthCellStyle(

            textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.onAccent,height: 24/17),
            disabledDatesTextStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.gray2,height: 24/17),
            weekendTextStyle:  const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.gray3,height: 24/17),
            todayTextStyle:  const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.onAccent,height: 24/17),
            trailingDatesTextStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.gray3,height: 24/17),
            leadingDatesTextStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.gray3,height: 24/17),
            //todayCellDecoration: BoxDecoration()
            //todayTextStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.green1),
          ),

          monthViewSettings: DateRangePickerMonthViewSettings(
            //showTrailingAndLeadingDates:true,

            firstDayOfWeek: 1,
            viewHeaderStyle: DateRangePickerViewHeaderStyle(
              textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.onAccent,height: 18/13),
            ),
          ),
          headerStyle: DateRangePickerHeaderStyle(
            textAlign: TextAlign.center,
            textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: AppColors.onAccent,height: 24/17),
          ),
        ),
  );

  Widget _buildApplyButton(context) => DefaultButton(
    text: AppLocalizations.of(context).ready,
      onPressed: (){
        Navigator.pop(context,_selectedDate);
      }
  );

}


