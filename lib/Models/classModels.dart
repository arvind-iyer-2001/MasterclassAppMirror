enum ContentType {
  Video,
  Audio,
  PDFFile,
}

class Content {
  final String contentTitle;
  final String contentCaption;
  final String lessonNumber;
  final String contentUrl;
  final String contentImageUrl;
  final ContentType contentType;
  final String contentId;

  Content(
      {this.contentTitle,
      this.contentCaption,
      this.lessonNumber,
      this.contentUrl,
      this.contentImageUrl,
      this.contentId,
      this.contentType});
}

class Class {
  final String instructor;
  final String title;
  final List<Content> content;
  final String description;
  final String instructorImage;
  final String classId;

  Class(
      {this.instructor,
      this.title,
      this.content,
      this.description,
      this.instructorImage,
      this.classId});
}
