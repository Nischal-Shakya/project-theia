import 'package:flutter/material.dart';

class PortfolioModel {
  String name;
  String designation;
  String description;
  List<Map<String, String>> experiences;
  List<Map<String, String>> educations;
  List portfolios;
  String aboutMe;
  List<Map<String, String>> workedWtih;
  List contacts;

  PortfolioModel({
    @required this.name,
    @required this.designation,
    @required this.description,
    @required this.experiences,
    @required this.educations,
    @required this.portfolios,
    @required this.workedWtih,
    @required this.contacts,
  });
}

var dummyData = PortfolioModel(
  name: 'Nischal Shakya',
  designation: 'Flutter developer',
  description: "description",
  experiences: [
    {
      "experience":
          "Python — Instructor\nTaught basics of python programming to engineering students in a 5 days' workshop event.",
      "date": "Jun 14,2022 — Jun 18,2022"
    },
    {
      "experience":
          "eSatya — Blockchain Fellowship IV\nCompleted a 2-month long fellowship.Understood the fundamental concept of blockchain, and learnt how to create and deploy DApps on ethereum network.",
      "date": "Sept 6,2022 — Dec 12,2022"
    }
  ],
  educations: [
    {
      "education":
          "Omega Int’l College, Kumaripati, Lalitpur\nCompleted +2 in science studies.",
      "date": "2016—2018"
    },
    {
      "education":
          "Lalitpur Engineering College, Chakupat, Lalitpur\nStudying final semester of Bachelor’s in Computer Engineering.Senior executive member of college computer club (SOCE).",
      "date": "2019—Ongoing"
    },
  ],
  portfolios: [
    {
      'title': 'Parichaya 2',
      'description':
          '''An end-to-end encrypted file storage and sharing app.\nContributed in making the designs of app in Figma.\nContributed in making the mobile app portion on flutter with proper state management.\nMade the whole webapp on flutter for the shared file portion.'''
    },
    {
      'title': 'Parichaya',
      'description':
          '''An end-to-end encrypted file storage and sharing app.\nContributed in making the designs of app in Figma.\nContributed in making the mobile app portion on flutter with proper state management.\nMade the whole webapp on flutter for the shared file portion.'''
    },
    {
      'title': 'Pet Me',
      'description':
          '''An animal adoption website where users can view the 3d Augmented Reality models of the animals.\nMade the frontend portion for Devpost Hack with a Crew.'''
    },
  ],
  workedWtih: [
    {"workedWtih": "0"}
  ],
  contacts: ["contacts"],
);
