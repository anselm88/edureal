import 'package:edureal/screens/heart_ar_screen.dart';
import 'package:edureal/widgets/description_section.dart';
import 'package:edureal/widgets/model_section.dart';
import 'package:flutter/material.dart';

class HeartScreen extends StatefulWidget {
  String img;
  HeartScreen(this.img);

  @override
  State<HeartScreen> createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  bool isModelSection = true;

  @override
  Widget build(BuildContext context) {
    Image anotatedDiagram(String topic) {
      if (topic == 'Heart') {
        return Image(
          image: AssetImage("images/heart(anotated).png"),
          fit: BoxFit.fill,
        );
      } else if (topic == 'Brain') {
        return Image(
          image: AssetImage("images/brain(anotated).png"),
          fit: BoxFit.fill,
        );
      } else if (topic == 'Skeleton') {
        return Image(
          image: AssetImage("images/skeleton(anotated).png"),
          fit: BoxFit.fill,
        );
      } else {
        return Image(
          image: AssetImage("images/skin(anotated).png"),
          fit: BoxFit.fill,
        );
      }
    }

    Column diagramDescription(String topic) {
      if (topic == 'Heart') {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Text(
              "The ${widget.img} Study Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'The heart is a vital organ responsible for pumping oxygenated blood throughout the body. It consists of four main parts: the atria, the ventricles, the valves, and the coronary arteries.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1.  Atria: The heart has two upper chambers called atria (singular: atrium). The right atrium receives deoxygenated blood from the body through the superior and inferior vena cava. The left atrium receives oxygenated blood from the lungs through the pulmonary veins.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2.  Ventricles: The heart also has two lower chambers known as ventricles. The right ventricle receives deoxygenated blood from the right atrium and pumps it to the lungs for oxygenation through the pulmonary artery. The left ventricle receives oxygenated blood from the left atrium and pumps it to the rest of the body through the aorta, the largest artery.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Valves: To ensure one-way blood flow through the heart, there are four valves. The tricuspid valve separates the right atrium and the right ventricle. The pulmonary valve is situated between the right ventricle and the pulmonary artery. The mitral valve (or bicuspid valve) separates the left atrium and the left ventricle. The aortic valve is positioned between the left ventricle and the aorta. These valves open and close with each heartbeat, allowing blood to flow in the correct direction and preventing backflow.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '4. Coronary Arteries: The heart muscle itself requires a continuous supply of oxygen and nutrients. The coronary arteries, located on the surface of the heart, provide this blood supply. They branch off from the aorta and encircle the heart, delivering oxygenated blood to the heart muscle.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        );
      } else if (topic == 'Brain') {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Text(
              "The ${widget.img} Study Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'The heart is a vital organ responsible for pumping oxygenated blood throughout the body. It consists of four main parts: the atria, the ventricles, the valves, and the coronary arteries.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1.  Atria: The heart has two upper chambers called atria (singular: atrium). The right atrium receives deoxygenated blood from the body through the superior and inferior vena cava. The left atrium receives oxygenated blood from the lungs through the pulmonary veins.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2.  Ventricles: The heart also has two lower chambers known as ventricles. The right ventricle receives deoxygenated blood from the right atrium and pumps it to the lungs for oxygenation through the pulmonary artery. The left ventricle receives oxygenated blood from the left atrium and pumps it to the rest of the body through the aorta, the largest artery.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Valves: To ensure one-way blood flow through the heart, there are four valves. The tricuspid valve separates the right atrium and the right ventricle. The pulmonary valve is situated between the right ventricle and the pulmonary artery. The mitral valve (or bicuspid valve) separates the left atrium and the left ventricle. The aortic valve is positioned between the left ventricle and the aorta. These valves open and close with each heartbeat, allowing blood to flow in the correct direction and preventing backflow.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '4. Coronary Arteries: The heart muscle itself requires a continuous supply of oxygen and nutrients. The coronary arteries, located on the surface of the heart, provide this blood supply. They branch off from the aorta and encircle the heart, delivering oxygenated blood to the heart muscle.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        );
      } else if (topic == 'Skeleton') {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Text(
              "The ${widget.img} Study Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'The heart is a vital organ responsible for pumping oxygenated blood throughout the body. It consists of four main parts: the atria, the ventricles, the valves, and the coronary arteries.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1.  Atria: The heart has two upper chambers called atria (singular: atrium). The right atrium receives deoxygenated blood from the body through the superior and inferior vena cava. The left atrium receives oxygenated blood from the lungs through the pulmonary veins.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2.  Ventricles: The heart also has two lower chambers known as ventricles. The right ventricle receives deoxygenated blood from the right atrium and pumps it to the lungs for oxygenation through the pulmonary artery. The left ventricle receives oxygenated blood from the left atrium and pumps it to the rest of the body through the aorta, the largest artery.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Valves: To ensure one-way blood flow through the heart, there are four valves. The tricuspid valve separates the right atrium and the right ventricle. The pulmonary valve is situated between the right ventricle and the pulmonary artery. The mitral valve (or bicuspid valve) separates the left atrium and the left ventricle. The aortic valve is positioned between the left ventricle and the aorta. These valves open and close with each heartbeat, allowing blood to flow in the correct direction and preventing backflow.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '4. Coronary Arteries: The heart muscle itself requires a continuous supply of oxygen and nutrients. The coronary arteries, located on the surface of the heart, provide this blood supply. They branch off from the aorta and encircle the heart, delivering oxygenated blood to the heart muscle.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Text(
              "The ${widget.img} Study Model",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'The heart is a vital organ responsible for pumping oxygenated blood throughout the body. It consists of four main parts: the atria, the ventricles, the valves, and the coronary arteries.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1.  Atria: The heart has two upper chambers called atria (singular: atrium). The right atrium receives deoxygenated blood from the body through the superior and inferior vena cava. The left atrium receives oxygenated blood from the lungs through the pulmonary veins.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2.  Ventricles: The heart also has two lower chambers known as ventricles. The right ventricle receives deoxygenated blood from the right atrium and pumps it to the lungs for oxygenation through the pulmonary artery. The left ventricle receives oxygenated blood from the left atrium and pumps it to the rest of the body through the aorta, the largest artery.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Valves: To ensure one-way blood flow through the heart, there are four valves. The tricuspid valve separates the right atrium and the right ventricle. The pulmonary valve is situated between the right ventricle and the pulmonary artery. The mitral valve (or bicuspid valve) separates the left atrium and the left ventricle. The aortic valve is positioned between the left ventricle and the aorta. These valves open and close with each heartbeat, allowing blood to flow in the correct direction and preventing backflow.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '4. Coronary Arteries: The heart muscle itself requires a continuous supply of oxygen and nutrients. The coronary arteries, located on the surface of the heart, provide this blood supply. They branch off from the aorta and encircle the heart, delivering oxygenated blood to the heart muscle.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        );
      }
    }

    void viewARDisplay(String topic) {
      if (topic == 'Heart') {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HeartARScreen(),
            ));
      } else if (topic == 'Brain') {
      } else if (topic == 'Skeleton') {
      } else {}
    }

    void takeQuiz(String topic) {
      if (topic == 'Heart') {
      } else if (topic == 'Brain') {
      } else if (topic == 'Skeleton') {
      } else {}
    }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xff674aef),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff5f3ff),
                    ),
                    child: anotatedDiagram(widget.img)),
                diagramDescription(widget.img),
              ],
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfff5f3ff),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // change color based on isModelSection
                    color: Color(0xff674aef),

                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        viewARDisplay(widget.img);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "AR Display",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xff674aef),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Take Quiz",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // sections for models and description
          ],
        ),
      ),
    );
  }
}
