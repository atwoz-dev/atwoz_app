// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderAdapter extends TypeAdapter<Gender> {
  @override
  final int typeId = 7;

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
        break;
      case Gender.female:
        writer.writeByte(1);
        break;
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
  final int typeId = 8;

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
        break;
      case Education.associate:
        writer.writeByte(1);
        break;
      case Education.bachelorsLocal:
        writer.writeByte(2);
        break;
      case Education.bachelorsSeoul:
        writer.writeByte(3);
        break;
      case Education.bachelorsOverseas:
        writer.writeByte(4);
        break;
      case Education.lawSchool:
        writer.writeByte(5);
        break;
      case Education.masters:
        writer.writeByte(6);
        break;
      case Education.doctorate:
        writer.writeByte(7);
        break;
      case Education.other:
        writer.writeByte(8);
        break;
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
  final int typeId = 9;

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
        break;
      case Hobby.performanceAndExhibition:
        writer.writeByte(1);
        break;
      case Hobby.webtoonAndComics:
        writer.writeByte(2);
        break;
      case Hobby.dramaAndEntertainment:
        writer.writeByte(3);
        break;
      case Hobby.pcAndMobileGames:
        writer.writeByte(4);
        break;
      case Hobby.animation:
        writer.writeByte(5);
        break;
      case Hobby.golf:
        writer.writeByte(6);
        break;
      case Hobby.theaterAndMovies:
        writer.writeByte(7);
        break;
      case Hobby.writing:
        writer.writeByte(8);
        break;
      case Hobby.boardGames:
        writer.writeByte(9);
        break;
      case Hobby.photography:
        writer.writeByte(10);
        break;
      case Hobby.singing:
        writer.writeByte(11);
        break;
      case Hobby.badmintonAndTennis:
        writer.writeByte(12);
        break;
      case Hobby.dance:
        writer.writeByte(13);
        break;
      case Hobby.driving:
        writer.writeByte(14);
        break;
      case Hobby.hikingAndClimbing:
        writer.writeByte(15);
        break;
      case Hobby.walking:
        writer.writeByte(16);
        break;
      case Hobby.foodHunt:
        writer.writeByte(17);
        break;
      case Hobby.shopping:
        writer.writeByte(18);
        break;
      case Hobby.skiAndSnowboard:
        writer.writeByte(19);
        break;
      case Hobby.playingInstruments:
        writer.writeByte(20);
        break;
      case Hobby.wine:
        writer.writeByte(21);
        break;
      case Hobby.workout:
        writer.writeByte(22);
        break;
      case Hobby.yogaAndPilates:
        writer.writeByte(23);
        break;
      case Hobby.cooking:
        writer.writeByte(24);
        break;
      case Hobby.interiorDesign:
        writer.writeByte(25);
        break;
      case Hobby.cycling:
        writer.writeByte(26);
        break;
      case Hobby.camping:
        writer.writeByte(27);
        break;
      case Hobby.others:
        writer.writeByte(28);
        break;
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
  final int typeId = 10;

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
        break;
      case Job.selfEmployment:
        writer.writeByte(1);
        break;
      case Job.sales:
        writer.writeByte(2);
        break;
      case Job.managementAndPlanning:
        writer.writeByte(3);
        break;
      case Job.studyingForFuture:
        writer.writeByte(4);
        break;
      case Job.jobSearching:
        writer.writeByte(5);
        break;
      case Job.education:
        writer.writeByte(6);
        break;
      case Job.artsAndSports:
        writer.writeByte(7);
        break;
      case Job.foodService:
        writer.writeByte(8);
        break;
      case Job.medicalAndHealth:
        writer.writeByte(9);
        break;
      case Job.mechanicalAndConstruction:
        writer.writeByte(10);
        break;
      case Job.design:
        writer.writeByte(11);
        break;
      case Job.marketingAndAdvertising:
        writer.writeByte(12);
        break;
      case Job.tradeAndDistribution:
        writer.writeByte(13);
        break;
      case Job.mediaAndEntertainment:
        writer.writeByte(14);
        break;
      case Job.legalAndPublic:
        writer.writeByte(15);
        break;
      case Job.productionAndManufacturing:
        writer.writeByte(16);
        break;
      case Job.customerService:
        writer.writeByte(17);
        break;
      case Job.travelAndTransport:
        writer.writeByte(18);
        break;
      case Job.others:
        writer.writeByte(19);
        break;
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
