import 'package:barber_saloon_app/views/your_appointment/components/row_container_data.dart';
import 'package:barber_saloon_app/views/your_appointment/components/service_list_data.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 327,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Card(
        elevation: 0.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RowContainerData(
                hideText: '',
                blackText: 'Service List',
              ),
              ServiceListData(
                serviceName: "Man's Shirt Hair Cut",
                servicePrice: '\$30',
                serviceTime: '20 min     ',
              ),
              ServiceListData(
                serviceName: 'Hair Spa',
                servicePrice: '\$25',
                serviceTime: '15 min     ',
              ),
              ServiceListData(
                serviceName: 'Oil Treatment',
                servicePrice: '\$20',
                serviceTime: '',
              ),
              ServiceListData(
                serviceName: 'CGST',
                servicePrice: '\$5',
                serviceTime: '',
              ),
              ServiceListData(
                serviceName: 'SGST',
                servicePrice: '\$5',
                serviceTime: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
