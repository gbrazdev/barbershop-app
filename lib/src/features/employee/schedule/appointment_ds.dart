
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'package:barbershop/src/core/constants/constants.dart';
import 'package:barbershop/src/model/schedule_model.dart';

class AppointmentDS extends CalendarDataSource {
  final List<ScheduleModel> schedules;
  AppointmentDS({
    required this.schedules,
  });
  @override
  List<dynamic>? get appointments {
    return schedules.map((e) {
      final ScheduleModel(date: DateTime(:year, :month, :day), :hour, :clientName) = e;

      final startTime = DateTime(year, month, day, hour, 0, 0);
      final endTime = DateTime(year, month, day, hour + 1, 0, 0);

      return Appointment(
        color: ColorsConstants.brow,
        startTime: startTime,
        endTime: endTime,
        subject: clientName,
      );
    }).toList();
  }
  
/*   [
        Appointment(
            color: ColorsConstants.brown,
            startTime: DateTime.now(),
            endTime: DateTime.now().add(
              const Duration(hours: 1),
            ),
            subject: 'Eduardo Mendonça'),
        Appointment(
            color: ColorsConstants.brown,
            startTime: DateTime.now().add(
              const Duration(hours: 2),
            ),
            endTime: DateTime.now().add(
              const Duration(hours: 3),
            ),
            subject: 'Eduardo Mendonça teste'),
      ]; */
}
