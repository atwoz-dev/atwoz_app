// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderAdapter extends TypeAdapter<Gender> {
  @override
  final typeId = 7;

  @override
  Gender read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Gender.male;
      case 1:
        return Gender.female;
      default:
        return Gender.male;
    }
  }

  @override
  void write(BinaryWriter writer, Gender obj) {
    switch (obj) {
      case Gender.male:
        writer.writeByte(0);
      case Gender.female:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EducationAdapter extends TypeAdapter<Education> {
  @override
  final typeId = 8;

  @override
  Education read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Education.highSchool;
      case 1:
        return Education.associate;
      case 2:
        return Education.bachelorsLocal;
      case 3:
        return Education.bachelorsSeoul;
      case 4:
        return Education.bachelorsOverseas;
      case 5:
        return Education.lawSchool;
      case 6:
        return Education.masters;
      case 7:
        return Education.doctorate;
      case 8:
        return Education.other;
      default:
        return Education.highSchool;
    }
  }

  @override
  void write(BinaryWriter writer, Education obj) {
    switch (obj) {
      case Education.highSchool:
        writer.writeByte(0);
      case Education.associate:
        writer.writeByte(1);
      case Education.bachelorsLocal:
        writer.writeByte(2);
      case Education.bachelorsSeoul:
        writer.writeByte(3);
      case Education.bachelorsOverseas:
        writer.writeByte(4);
      case Education.lawSchool:
        writer.writeByte(5);
      case Education.masters:
        writer.writeByte(6);
      case Education.doctorate:
        writer.writeByte(7);
      case Education.other:
        writer.writeByte(8);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EducationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HobbyAdapter extends TypeAdapter<Hobby> {
  @override
  final typeId = 9;

  @override
  Hobby read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Hobby.travel;
      case 1:
        return Hobby.performanceAndExhibition;
      case 2:
        return Hobby.webtoonAndComics;
      case 3:
        return Hobby.dramaAndEntertainment;
      case 4:
        return Hobby.pcAndMobileGames;
      case 5:
        return Hobby.animation;
      case 6:
        return Hobby.golf;
      case 7:
        return Hobby.theaterAndMovies;
      case 8:
        return Hobby.writing;
      case 9:
        return Hobby.boardGames;
      case 10:
        return Hobby.photography;
      case 11:
        return Hobby.singing;
      case 12:
        return Hobby.badmintonAndTennis;
      case 13:
        return Hobby.dance;
      case 14:
        return Hobby.driving;
      case 15:
        return Hobby.hikingAndClimbing;
      case 16:
        return Hobby.walking;
      case 17:
        return Hobby.foodHunt;
      case 18:
        return Hobby.shopping;
      case 19:
        return Hobby.skiAndSnowboard;
      case 20:
        return Hobby.playingInstruments;
      case 21:
        return Hobby.wine;
      case 22:
        return Hobby.workout;
      case 23:
        return Hobby.yogaAndPilates;
      case 24:
        return Hobby.cooking;
      case 25:
        return Hobby.interiorDesign;
      case 26:
        return Hobby.cycling;
      case 27:
        return Hobby.camping;
      case 28:
        return Hobby.others;
      default:
        return Hobby.travel;
    }
  }

  @override
  void write(BinaryWriter writer, Hobby obj) {
    switch (obj) {
      case Hobby.travel:
        writer.writeByte(0);
      case Hobby.performanceAndExhibition:
        writer.writeByte(1);
      case Hobby.webtoonAndComics:
        writer.writeByte(2);
      case Hobby.dramaAndEntertainment:
        writer.writeByte(3);
      case Hobby.pcAndMobileGames:
        writer.writeByte(4);
      case Hobby.animation:
        writer.writeByte(5);
      case Hobby.golf:
        writer.writeByte(6);
      case Hobby.theaterAndMovies:
        writer.writeByte(7);
      case Hobby.writing:
        writer.writeByte(8);
      case Hobby.boardGames:
        writer.writeByte(9);
      case Hobby.photography:
        writer.writeByte(10);
      case Hobby.singing:
        writer.writeByte(11);
      case Hobby.badmintonAndTennis:
        writer.writeByte(12);
      case Hobby.dance:
        writer.writeByte(13);
      case Hobby.driving:
        writer.writeByte(14);
      case Hobby.hikingAndClimbing:
        writer.writeByte(15);
      case Hobby.walking:
        writer.writeByte(16);
      case Hobby.foodHunt:
        writer.writeByte(17);
      case Hobby.shopping:
        writer.writeByte(18);
      case Hobby.skiAndSnowboard:
        writer.writeByte(19);
      case Hobby.playingInstruments:
        writer.writeByte(20);
      case Hobby.wine:
        writer.writeByte(21);
      case Hobby.workout:
        writer.writeByte(22);
      case Hobby.yogaAndPilates:
        writer.writeByte(23);
      case Hobby.cooking:
        writer.writeByte(24);
      case Hobby.interiorDesign:
        writer.writeByte(25);
      case Hobby.cycling:
        writer.writeByte(26);
      case Hobby.camping:
        writer.writeByte(27);
      case Hobby.others:
        writer.writeByte(28);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HobbyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class JobAdapter extends TypeAdapter<Job> {
  @override
  final typeId = 10;

  @override
  Job read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Job.researchAndEngineering;
      case 1:
        return Job.selfEmployment;
      case 2:
        return Job.sales;
      case 3:
        return Job.managementAndPlanning;
      case 4:
        return Job.studyingForFuture;
      case 5:
        return Job.jobSearching;
      case 6:
        return Job.education;
      case 7:
        return Job.artsAndSports;
      case 8:
        return Job.foodService;
      case 9:
        return Job.medicalAndHealth;
      case 10:
        return Job.mechanicalAndConstruction;
      case 11:
        return Job.design;
      case 12:
        return Job.marketingAndAdvertising;
      case 13:
        return Job.tradeAndDistribution;
      case 14:
        return Job.mediaAndEntertainment;
      case 15:
        return Job.legalAndPublic;
      case 16:
        return Job.productionAndManufacturing;
      case 17:
        return Job.customerService;
      case 18:
        return Job.travelAndTransport;
      case 19:
        return Job.others;
      default:
        return Job.researchAndEngineering;
    }
  }

  @override
  void write(BinaryWriter writer, Job obj) {
    switch (obj) {
      case Job.researchAndEngineering:
        writer.writeByte(0);
      case Job.selfEmployment:
        writer.writeByte(1);
      case Job.sales:
        writer.writeByte(2);
      case Job.managementAndPlanning:
        writer.writeByte(3);
      case Job.studyingForFuture:
        writer.writeByte(4);
      case Job.jobSearching:
        writer.writeByte(5);
      case Job.education:
        writer.writeByte(6);
      case Job.artsAndSports:
        writer.writeByte(7);
      case Job.foodService:
        writer.writeByte(8);
      case Job.medicalAndHealth:
        writer.writeByte(9);
      case Job.mechanicalAndConstruction:
        writer.writeByte(10);
      case Job.design:
        writer.writeByte(11);
      case Job.marketingAndAdvertising:
        writer.writeByte(12);
      case Job.tradeAndDistribution:
        writer.writeByte(13);
      case Job.mediaAndEntertainment:
        writer.writeByte(14);
      case Job.legalAndPublic:
        writer.writeByte(15);
      case Job.productionAndManufacturing:
        writer.writeByte(16);
      case Job.customerService:
        writer.writeByte(17);
      case Job.travelAndTransport:
        writer.writeByte(18);
      case Job.others:
        writer.writeByte(19);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
