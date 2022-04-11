// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/webrtc.dart';
// import 'package:zoomer/app/resources/app_colors.dart';
// import 'package:zoomer/core/ui/widgets/circular_progress.dart';
// import 'package:zoomer/utils/open_vidu/signaling.dart';
//
// class CameraBroadcast extends StatefulWidget {
//   CameraBroadcast({
//     required this.sessionId,
//     required this.isPlaying,
//   });
//
//   final String sessionId;
//   final bool isPlaying;
//
//   @override
//   _CameraBroadcastState createState() => _CameraBroadcastState();
// }
//
// class _CameraBroadcastState extends State<CameraBroadcast> {
//   late RTCVideoRenderer _remoteRenderer;
//
//   Signaling? _signaling;
//   MediaStream? _srcObject;
//
//   @override
//   void initState() {
//     super.initState();
//     _initRenderers();
//     _connectToOpenVidu();
//   }
//
//   @override
//   void didUpdateWidget(covariant CameraBroadcast oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isPlaying != widget.isPlaying) {
//       if (widget.isPlaying) {
//         _remoteRenderer.srcObject = _srcObject;
//       } else {
//         _remoteRenderer.srcObject = null;
//       }
//     }
//   }
//
//   Future<void> _initRenderers() async {
//     _remoteRenderer = RTCVideoRenderer();
//     _remoteRenderer.objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitCover;
//     await _remoteRenderer.initialize();
//   }
//
//   @override
//   Widget build(BuildContext context) => _srcObject != null
//       ? Container(
//           height: 150,
//           child: RTCVideoView(_remoteRenderer),
//         )
//       : Container(
//           height: 150,
//           child: Center(
//             child: CircularProgress(
//               size: 42,
//               strokeWidth: 7,
//               primaryColor: AppColors.accent,
//               secondaryColor: AppColors.background,
//             ),
//           ),
//         );
//
//   @override
//   void dispose() {
//     super.dispose();
//     _signaling?.dispose();
//     _remoteRenderer.dispose();
//   }
//
//   Future<void> _connectToOpenVidu() async {
//     _signaling?.dispose();
//     _signaling = Signaling(session: widget.sessionId);
//
//     await _signaling!.connect();
//
//     _signaling!.onAddRemoteStream.listen((stream) {
//       _srcObject = stream;
//       _remoteRenderer.srcObject = stream;
//       setState(() {});
//     });
//     _signaling!.onRemoveRemoteStream.listen((stream) {
//       _remoteRenderer.srcObject = null;
//       setState(() {});
//     });
//   }
// }
