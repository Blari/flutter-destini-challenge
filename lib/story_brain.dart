import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(storyTitle: 'Это дивается?', choice1: 'Нет', choice2: 'Да'), // 0
    Story(storyTitle: 'А должно?', choice1: 'Нет', choice2: 'Да'), // 1
    Story(storyTitle: 'Не трогай!', choice1: 'Restart', choice2: ''), // 2
    Story(storyTitle: 'WD-40', choice1: 'Restart', choice2: ''), // 3
    Story(storyTitle: 'А должно?', choice1: 'Да', choice2: 'Нет'), // 4
    Story(storyTitle: 'Не трогай!', choice1: 'Restart', choice2: ''), // 5
    Story(storyTitle: 'Синяя изолента', choice1: 'Restart', choice2: '') // 6
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      this._storyNumber = 1;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      this._storyNumber = 4;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      this._storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      this._storyNumber = 3;
    } else if (_storyNumber == 4 && choiceNumber == 1) {
      this._storyNumber = 5;
    } else if (_storyNumber == 4 && choiceNumber == 2) {
      this._storyNumber = 6;
    } else if (_storyNumber == 2 ||
        _storyNumber == 3 ||
        _storyNumber == 5 ||
        _storyNumber == 6) {
      restart();
    }
  }

  void restart() {
    this._storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 2 ||
        _storyNumber == 3 ||
        _storyNumber == 5 ||
        _storyNumber == 6) {
      return false;
    } else {
      return true;
    }
  }
}
