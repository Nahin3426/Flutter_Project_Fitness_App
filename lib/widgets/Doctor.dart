import 'package:flutter/material.dart';
import 'dart:math';

class Doctor {
  String name;
  String qualifications;
  String specialization;
  String organization;
  String chamber;
  String phone_number;

  Doctor({
    required this.name,
    required this.qualifications,
    required this.specialization,
    required this.organization,
    required this.chamber,
    required this.phone_number,
  });

  static final _random = Random();

  static Doctor getDoctorByIndex(int index) {
    return doctors[index];
  }

  static Doctor getRandomDoctor() {
    final randomIndex = _random.nextInt(doctors.length);
    return doctors[randomIndex];
  }
}

List<Doctor> doctors = [
  // ... Your list of doctors remains the same
  Doctor(
    name: 'Prof. Brig. Gen. Dr. Kumrul Hasan',
    qualifications:
    'MBBS, MCPS, MPHIL (Psychiatry), MMEd, Fellow Child Psychiatry (Pakistan), MACP (USA), FRCP (UK)',
    specialization:
    'Psychiatry, Brain, Drug Addiction, Sex Specialist & Neuro Psychiatrist',
    organization: 'Combined Military Hospital, Dhaka',
    chamber: 'Adviser Specialist, Psychiatry',
    phone_number: "01666666",
  ),
  Doctor(
    name: 'Dr. Md. Mahbub Hasan Bappi',
    qualifications: 'MBBS, MD (PSYCHIATRY)',
    specialization:
    'Psychiatry (Brain, Mental Diseases, Drug Addiction) Specialist',
    organization: 'National Institute of Mental Health & Hospital',
    chamber: 'Consultant, Psychiatry',
    phone_number: "01918155555",
  ),
  Doctor(
    name: 'Prof. Dr. Anwara Begum',
    qualifications: 'MBBS, FCPS, MRCPsych (London)',
    specialization: 'Psychiatry',
    organization:
    'BIRDEM General Hospital and Ibrahim Medical College, Dhaka, Bangladesh',
    chamber: 'Professor of Psychiatry and Chief Consultant',
    phone_number: "019181835",
  ),
  Doctor(
    name: 'Professor Dr. M S I Mullick',
    qualifications: 'MBBS, Phd, FCPS, MRC Psyc ( London ) , DCAP',
    specialization: 'Psychiatry',
    organization:
    'Bangabandhu Sheikh Mujib Medical University (BSMMU), Shahbagh, Dhaka',
    chamber: 'Professor & Chairman, Department of Psychiatric',
    phone_number: "01918183",
  ),
  Doctor(
    name: 'Prof. Brig. Gen. Dr. Md. Sajjadur Rahman',
    qualifications: 'MBBS, FCPS ( Psychiatry )',
    specialization: 'Psychiatry',
    organization: 'Armed Forces Medical College & Hospital',
    chamber: 'Professor & Head, Department of Psychiatry',
    phone_number: "0191818",
  ),
  Doctor(
    name: 'Prof. Brig. Gen. Dr. Md. Azizul Islam',
    qualifications: 'MBBS, FCPS, FRCP (UK), FACP (USA)',
    specialization: 'Psychiatry',
    organization: 'SQUARE Hospitals Ltd.',
    chamber: 'Professor & Head, Department of Psychiatry',
    phone_number: "019181",
  ),
  Doctor(
    name: 'Prof. Dr. Jhunu Shamsun Nahar',
    qualifications: 'MBBS, FCPS ( Psych )',
    specialization: 'Psychiatry',
    organization: 'Bangabandhu Sheikh Mujib Medical University ( BSMMU )',
    chamber: 'Ibn Sina Diagnostic & Imaging Center',
    phone_number: "019181",
  ),
  Doctor(
    name: 'Prof. Dr. Md. Waziul Alam Chowdhury',
    qualifications: 'MBBS, FCPS ( Psychiatry ), Who Fellowship (NIMHANS)',
    specialization: 'Psychiatry',
    organization: 'SQUARE Hospitals Ltd Dhaka, Bangladesh',
    chamber: 'SQUARE Hospitals Ltd.',
    phone_number: "01918",
  ),
  Doctor(
    name: 'Dr. M A Mohit Kamal',
    qualifications: 'M Phil (Psyc) PhD (Psyc), FWPA (USA), FWHO',
    specialization: 'Psychiatry',
    organization:
    'National Institute of Mental Health and Neuro Sciences (NIMHANS)',
    chamber: 'Labaid Specialized Hospital.',
    phone_number: "019",
  ),
  Doctor(
    name: 'Dr. Shahida Chowdhury',
    qualifications: 'M.B.B.S, D.P.M',
    specialization: 'Psychiatry',
    organization: 'National Institute of Mental Health',
    chamber: 'Sher-e Bangla Nagar, Dhaka, Bangladesh.',
    phone_number: "0191",
  ),
  Doctor(
    name: 'Dr. Khaleda Begum',
    qualifications: 'M.Sc, M.Phil (Psychiatry)',
    specialization: 'Specialist Psychologist',
    organization: 'Dhaka Medical College',
    chamber: 'Monojagot Center.',
    phone_number: "01",
  ),
  Doctor(
    name: 'Dr. Umme Salma',
    qualifications: 'MBBS, MCPS (Psychiatry), FCPS (Psychitry)',
    specialization: 'Psychiatrist & Psychotherapist',
    organization: 'Enam Medical College & Hospital, Savar.',
    chamber: 'Ibn Sina D.Lab & Consultation Center, Uttara.',
    phone_number: "0169",
  ),
  Doctor(
    name: 'Dr. Md. Mahbub Hasan Bappi',
    qualifications: 'MBBS, MD (PSYCHIATRY)',
    specialization:
    'Psychiatry (Brain, Mental Diseases, Drug Addiction) Specialist',
    organization: 'National Institute of Mental Health & Hospital.',
    chamber: 'Bangladesh Psychiatric Care.',
    phone_number: "0166",
  ),
];

class DoctorScreen extends StatelessWidget {
  final Doctor doctor;

  DoctorScreen({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${doctor.name}'),
            Text('Qualifications: ${doctor.qualifications}'),
            Text('Specialization: ${doctor.specialization}'),
            Text('Organization: ${doctor.organization}'),
            Text('Chamber: ${doctor.chamber}'),

          ],
        ),
      ),
    );
  }
}


