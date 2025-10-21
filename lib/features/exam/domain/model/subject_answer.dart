class SubjectAnswer {
  final int subjectId;
  final List<QuestionAnswer> answers;

  const SubjectAnswer({required this.subjectId, required this.answers});
}

class QuestionAnswer {
  final int questionId;
  final int answerId;

  const QuestionAnswer({required this.questionId, required this.answerId});
}
