import 'package:atwoz_app/features/interview/data/repository/interview_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/interview/domain/usecase/get_interview_questions_usecase.dart';
import 'package:atwoz_app/features/interview/domain/usecase/get_interview_detail_usecase.dart';
import 'package:atwoz_app/features/interview/domain/usecase/submit_interview_answer_usecase.dart';
import 'package:atwoz_app/features/interview/domain/usecase/update_interview_answer_usecase.dart';

final getInterviewQuestionsUseCaseProvider = Provider(
  (ref) => GetInterviewQuestionsUseCase(ref.read(interviewRepositoryProvider)),
);

final getInterviewDetailUseCaseProvider = Provider(
  (ref) => GetInterviewDetailUseCase(ref.read(interviewRepositoryProvider)),
);

final submitInterviewAnswerUseCaseProvider = Provider(
  (ref) => SubmitInterviewAnswerUseCase(ref.read(interviewRepositoryProvider)),
);

final updateInterviewAnswerUseCaseProvider = Provider(
  (ref) => UpdateInterviewAnswerUseCase(ref.read(interviewRepositoryProvider)),
);
