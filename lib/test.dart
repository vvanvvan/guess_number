// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

void main() {
  var count = 0;
  var r = Random();

  print('╔═══════════════════════════════════════');
  print('╟           GUESS THE NUMBER');
  print('╟───────────────────────────────────────');

  var answer = r.nextInt(100);
  ////print(answer);
  do {
    stdout.write('║ Guess the number between 1 and 100: '); //not new line
    var number = stdin.readLineSync(); //ใช้var  รู้typeเอง ไม่ต้องเจาะจงก็ได้
    dynamic guess = int.tryParse(number!); //แปลงเป็นจำนวนเต็ม-  type dynamicเปลี่ยนtypeเอง

    if(int.tryParse(number) == null){
       guess = int.tryParse(number);
    }else {
      count++;
      if (guess! < answer) {
        print("║ $guess is TOO LOW! ▼");
        print('╟───────────────────────────────────────');
      } else if (guess > answer) {
        print("║ $guess is TOO HIGH! ▲ ");
        print('╟───────────────────────────────────────');
      }
      if (guess == answer) {
        print('║ $guess IS CORRECT ❤, total guesses: $count');
        print('╚───────────────────────────────────────');
        break;
      }
    }
  } while(true);
  print('╟───────────────────────────────────────');
  print('╟                THE END');
  print('╚═══════════════════════════════════════');
}

//comsole app
