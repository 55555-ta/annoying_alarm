import 'package:flutter/material.dart';

class BellSoundContainer extends StatefulWidget {
  final bool isVisible;

  const BellSoundContainer({Key? key, required this.isVisible})
      : super(key: key);

  @override
  _BellSoundContainerState createState() => _BellSoundContainerState();
}

class _BellSoundContainerState extends State<BellSoundContainer> {
  @override
  Widget build(BuildContext context) {
    const int itemCount = 5;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: widget.isVisible ? 1.0 : 0.0,
      child: Visibility(
        visible: widget.isVisible,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: widget.isVisible ? 325.0 : 0,
          width: 392.7,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            color: Color(0xffE8E8E8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '벨소리',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('벚꽃엔딩 ${index + 1}'),
                        // 필요에 따라 추가적인 위젯을 구성
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
