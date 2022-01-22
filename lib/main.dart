// Life class holds a list of Mememtos which has fields that store info of actions.
// save addes a new Memeto to the list.
// undo removes the last Memeto from the list.
// setTime sets a new time for the momento. This code is not complete as a Redo is not implemented.
void main() {
  Life life = Life();
  life.setTime('1,000 B.C.');
  life.save();
  life.setTime('1,000 A.D.');
  life.save();
  life.setTime('2,000 A.D.');
  life.save();
  life.undo();
}

class Life {
  List<Memento> savedTimes = [];
  String? time;
  void setTime(String time) {
    print('Setting time to $time');
    this.time = time;
  }

  void save() {
    print('Saving time: $time');
    savedTimes.add(Memento(time!));
  }

  void undo() {
    savedTimes.removeLast();
    print('Undoing time: ${savedTimes.last.time}');
  }
}

class Memento {
  Memento(this.time);
  final String time;

  String getSavedTime() => time;
}
