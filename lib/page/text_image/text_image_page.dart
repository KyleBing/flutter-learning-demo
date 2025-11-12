import 'package:flutter/material.dart';
import 'text_image_view.dart';

class TextImagePage extends StatelessWidget {
  const TextImagePage({super.key});


  final String description = """
In the early 1980s Commodore released the world's first color video home computer, the VIC-20, which quickly sold millions of units across America and Europe. It was so phenomenally successful that when Commodore planned their next model, they decided to keep the VIC's general design and to upgrade the sound, graphics, and memory. They named this new machine, now with 64 kilobytes of memory, the Commodore 64 (alias C64, CBM64, C=64, VIC-64, VC-64 in Germany, VIC=64S in Sweden).

Thanks to its sophisticated audiovisual abilities, its real keyboard, and its range of cheap add-on hardware, the C64 sold even better than its predecessor. That success quickly led to software houses releasing hundreds of cheap, high-quality programs and video games for the C64, which in turn increased the machine's popularity. It eventually became the world's highest selling home computer. An international committee of computer magazine journalists twice voted it "computer of the year."

Three years later, Commodore released the C64's successor, the C128, which doubled as an office computer. However, the C64 continued to sell well. The fall of the Berlin Wall in 1989 prolonged its shelf life again, with Commodore shipping millions more units in Eastern Europe.

The C64 continued to sell until 1993 – 13 years after its introduction – when Commodore collapsed due to financial difficulties. Overall sales figures for the Commodore 64 vary. Some commentators estimate the number of units sold at 30 million, but a more likely figure is 17 million (with 3 million sold in Germany). Forty years after its release, the Commodore 64 is still the most popular home computer of all time.
""";
  @override
  Widget build(BuildContext context) {
    return TextImageView(description: description);
  }
}