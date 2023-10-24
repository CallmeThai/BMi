import 'package:lab3/story.dart';
class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Chiếc xe của bạn bị hỏng một bánh trên con đường uốn lượn giữa hoang vắng và không có tín hiệu điện thoại. Bạn quyết định đi bắt xe. Một chiếc xe tải cũ kĩ dậy tiếng ồn dọc bên bạn. Một người đàn ông đội mũ trùm rộng và đôi mắt trống rỗng mở cửa phía bên trái và hỏi: "Cần một chuyến đi, con trai ạ?"',
        choice1: 'Tôi sẽ lên xe. Cảm ơn sự giúp đỡ!',
        choice2: 'Tốt hơn hết là hỏi anh ấy có phải kẻ sát nhân không.'),
    Story(
        storyTitle:
        'Anh ta gật đầu chậm rãi, không bị làm phiền bởi câu hỏi này.',
        choice1: 'Ít ra anh ấy thật thà. Tôi sẽ lên xe.',
        choice2: 'Chờ đã, tôi biết cách thay bánh xe.'),
    Story(
        storyTitle:
        'Khi bạn bắt đầu lái xe, người lạ bắt đầu kể về mối quan hệ với mẹ anh ta. Anh ta trở nên tức giận hơn từng phút. Anh ta yêu cầu bạn mở hộp găng tay. Bên trong, bạn thấy một cây dao đẫm máu, hai ngón tay đã tách rời, và một băng cassette của Elton John. Anh ta vụt tay vào hộp găng tay.',
        choice1: 'Tôi thích Elton John! Đưa cho anh cái băng cassette.',
        choice2: 'Là anh ta hoặc tôi! Bạn lấy cây dao và đâm vào anh ta.'),
    Story(
        storyTitle:
        'Gì vậy? Thoát ra như thế là không công bằng! Bạn có biết rằng tai nạn giao thông là nguyên nhân thứ hai dẫn đến tử vong ngẫu nhiên cho hầu hết các nhóm tuổi trưởng thành không?',
        choice1: 'Bắt đầu lại',
        choice2: ''),
    Story(
        storyTitle:
        'Khi bạn đâm xuyên qua lan can và lao xuống đá sắc nhọn phía dưới, bạn suy tư về sự khôn ngoan đáng ngờ của việc đâm ai đó khi họ đang lái chiếc xe mà bạn đang ngồi trong đó.',
        choice1: 'Bắt đầu lại',
        choice2: ''),
    Story(
        storyTitle:
        'Bạn nối kết với kẻ sát nhân trong khi hát những câu hát của "Can you feel the love tonight". Anh ta đưa bạn đến thị trấn tiếp theo. Trước khi bạn đi, anh ta hỏi bạn có biết những nơi tốt để vứt xác không. Bạn trả lời: "Hãy thử bến cảng".',
        choice1: 'Bắt đầu lại',
        choice2: '')
  ];

  String getStory() {
    return _storyData[storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[storyNumber].choice2;
  }

  int storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && storyNumber == 0) {
      storyNumber = 2;
    } else if (choiceNumber == 2 && storyNumber == 0) {
      storyNumber = 1;
    } else if (choiceNumber == 1 && storyNumber == 1) {
      storyNumber = 2;
    } else if (choiceNumber == 2 && storyNumber == 1) {
      storyNumber = 3;
    } else if (choiceNumber == 1 && storyNumber == 2) {
      storyNumber = 5;
    } else if (choiceNumber == 2 && storyNumber == 2) {
      storyNumber = 4;
    } else if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (storyNumber == 0 || storyNumber == 1 || storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
