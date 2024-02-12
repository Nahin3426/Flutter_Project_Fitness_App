import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CallScreen extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      'name': 'Prof. Brig. Gen. Dr. Kumrul Hasan',
      'qualifications':
      'MBBS, MCPS, MPHIL (Psychiatry), MMEd, Fellow Child Psychiatry (Pakistan), MACP (USA), FRCP (UK)',
      'specialization':
      'Psychiatry, Brain, Drug Addiction, Sex Specialist & Neuro Psychiatrist',
      'chamber': 'Bangladesh Specialized Hospital',
      'address': 'Address: 21, Mirpur Road, Shyamoli, Dhaka – 1207, Bangladesh',
      'phone_number': "+8809666700100",
    },
    {
      'name': 'Dr. Monirul Islam',
      'qualifications': 'MBBS, MD (PSYCHIATRY)',
      'specialization':
      'Psychiatry (Brain, Mental Diseases, Drug Addiction) Specialist',
      'chamber': 'Comfort Diagnostic Center, Dhanmondi',
      'address': 'Address: 167/B, Green Road, Dhanmondi, Dhaka - 1205',
      'phone_number': "+8801731956033",
    },
    {
      'name': 'Prof. Dr. Nurun Nahar Chowdhury',
      'qualifications': 'MBBS, MPhil (Psychiatry), MPH (NIPSOM)',
      'specialization': 'Psychiatry',
      'chamber':
      'Green Life Hospital, Dhaka',
      'address': 'Address: 32, Bir Uttam Shafiullah Sarak (Green Road), Dhanmondi, Dhaka',
      'phone_number': "+8801711907659",
    },
    {
      'name': 'Professor M A Mohit Kamal',
      'qualifications': 'MBBS, M.Phil. (Psyche), FCPS (Psychiatry) ',
      'specialization': 'Psychiatry',
      'chamber':
      'LABAID Cardiac Hospital  ',
      'address': 'House- 06, Road-04, Dhanmondi, Dhaka 1205, Bangladesh.',
      'phone_number': "+88 02 58610793-8",
    },
    {
      'name': 'Prof. Brig. Gen. Dr. Md. Sajjadur Rahman',
      'qualifications': 'MBBS, FCPS ( Psychiatry )',
      'specialization': 'Psychiatry',
      'chamber': 'Armed Forces Medical College & Hospital',
      'address': ' 74G/75, New Airport Road (Beside Mohakhali Flyover, Tejgaon Ind. Area, Dhaka, 1215, Bangladesh',
      'phone_number': "01740-486123",
      },
    {
      'name': 'Prof. Brig. Gen. Dr. Md. Azizul Islam',
      'qualifications': 'MBBS, FCPS, FRCP (UK), FACP (USA)',
      'specialization': 'Psychiatry',
      'chamber': 'SQUARE Hospitals Ltd.',
      'address': '18/F, Bir Uttam Sarak, West Panthapath,Dhaka',
      'phone_number': "+88028159457",
      },
    {
      'name': 'Prof. Dr. Jhunu Shamsun Nahar',
      'qualifications': 'MBBS, FCPS ( Psych )',
      'specialization': 'Psychiatry',
      'chamber': 'Ibn Sina Diagnostic & Imaging Center',
      'address': 'House 48, Rd:9/A Dhanmondi',
      'phone_number': "9126625-6",
    },
    {
      'name': 'Prof. Dr. Md. Waziul Alam Chowdhury',
      'qualifications': 'MBBS, FCPS ( Psychiatry ), Who Fellowship (NIMHANS)',
      'specialization': 'Psychiatry',
      'chamber': 'SQUARE Hospitals Ltd Dhaka, Bangladesh',
      'address': '18/F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath,Dhaka 1205',
      'phone_number': "10616",
    },
    {
      'name': 'Prof. Col. Dr. Julhash Uddin Ahmmad',
      'qualifications': 'MBBS (Dhaka), MPhil (Psychiatry), FCPS (Psychiatry)',
      'specialization': 'Psychiatry',
      'chamber':
      'Bangladesh Psychiatric Care',
      'address': 'Address: Suit # 6020, Shimanto Shambhar (6th Floor), Dhanmondi, Dhaka',
      'phone_number': "+8801872863002",
    },
    {
      'name': 'Dr. Shahida Chowdhury',
      'qualifications': 'M.B.B.S, D.P.M',
      'specialization': 'Psychiatry',
      'chamber': 'Dhaka Community Medical College',
      'address': '190/1, Baro Moghbazar, Wireless Railgate, Dhaka-1217.',
      'phone_number': "01819494530",
    },
    {
      'name': 'Dr. MAHMOOD HASAN',
      'qualifications': 'MBBS.FCPS.MRCP.PHYCH(London)',
      'specialization': 'Psychiatry medicine',
      'chamber': 'Ibn Sina Medical Imaging Center',
      'address': 'Zigatola House#58, Road#2/A, Dhaka-1209',
      'phone_number': "09610009625",
    },
    {
      'name': 'Dr. Mohammad Shamsul Ahsan Maksud',
      'qualifications': 'MBBS, MPhil (Psych), FCPS (Psych), ECPS, FECSM, ICAP-I',
      'specialization': 'Psychiatrist & Psychotherapist',
      'chamber': 'Padma Diagonostic Center',
      'address': '245/2 New Circular Road, Malibagh, Dhaka 1217',
      'phone_number': "0961-1113355",
    },
    {

      'name': 'Dr. Md. Mahbub Hasan Bappi',
      'qualifications': 'MBBS, MD (PSYCHIATRY)',
      'specialization':
      'Psychiatry (Brain, Mental Diseases, Drug Addiction) Specialist',
      'chamber': 'Bangladesh Psychiatric Care',
      'address': 'Address: Suit # 6020, Shimanto Shambhar (6th Floor), Dhanmondi, Dhaka',
      'phone_number': " +8801872863002",
    },
    {

      'name': 'Dr. Md. Asaduzzaman',
      'qualifications': 'MBBS, DTM (Dublin), DPP (Psychiatry)',
      'specialization':
      'Mental Diseases & Drug Addiction Specialist',
      'chamber': 'Al-Manar Hospital Limited',
      'address': 'Address: Plot # Umo, Block # Rossoi, Satmosjid Road, Dhaka',
      'phone_number': "+8801550020885",
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appoint a Doctor'),
        backgroundColor: Color(0xFFF2BEA1),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return ListTile(
            title: Text('Name: ${doctor['name']}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Qualifications: ${doctor['qualifications']}'),
                Text('Specialization: ${doctor['specialization']}'),
                Text('Chamber: ${doctor['chamber']}'),
                Text('Address: ${doctor['address']}'),
              ],
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF2BEA1), // Change background color to green
              ),
              onPressed: () {
                _makePhoneCall(doctor['phone_number']!);
              },
              child: Text('Call'),
            ),
          );
        },
      ),
    );
  }

  void _makePhoneCall(String phoneNumber) async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}