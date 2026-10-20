import 'package:bkash/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///  receipt screen. This app official bkash initiate or verified real payments.
class ConfirmationWidget extends StatefulWidget {
  const ConfirmationWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmationWidget> createState() => _ConfirmationWidgetState();
}

class _ConfirmationWidgetState extends State<ConfirmationWidget> {
  static const Color bkashPink = Color(0xFFE2136E);
  static const Color successGreen = Color(0xFF16866D);
  final String transactionId =
      'DEMO${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}';
  late final String timeLabel;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    final hour = now.hour % 12 == 0 ? 12 : now.hour % 12;
    final minute = now.minute.toString().padLeft(2, '0');
    final period = now.hour >= 12 ? 'pm' : 'am';
    timeLabel = '$hour:$minute$period ${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${(now.year % 100).toString().padLeft(2, '0')}';
  }

  Widget _detail(String title, String value, {bool right = false, Widget? trailing}) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: right ? CrossAxisAlignment.start : CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.black54, fontSize: 14)),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(child: Text(value, style: const TextStyle(fontSize: 17, color: Colors.black87))),
            if (trailing != null) trailing,
          ]),
        ],
      ),
    );
  }

  Widget _outlinedAction(IconData icon, String label, VoidCallback onTap) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: OutlinedButton.icon(
          onPressed: onTap,
          icon: Icon(icon, color: bkashPink),
          label: Text(label, style: const TextStyle(color: bkashPink, fontSize: 15)),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: bkashPink, width: 1.4),
            minimumSize: const Size(0, 56),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                // This is a visual notification preview, not an OS notification.
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 18, 16, 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 14, offset: Offset(0, 4))],
                  ),
                  child: Row(children: [
                    Container(
                      width: 48, height: 48,
                      decoration: BoxDecoration(color: bkashPink, borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.send_rounded, color: Colors.white, size: 28),
                    ),
                    const SizedBox(width: 14),
                    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('Send Money', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                      SizedBox(height: 4),
                      Text('Transaction notification · Demo', style: TextStyle(color: Colors.black54, fontSize: 12)),
                    ])),
                    const Text('Just now', style: TextStyle(color: Colors.black54, fontSize: 13)),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 4, 20, 28),
                  child: Row(children: [
                    const Expanded(child: Text.rich(TextSpan(children: [
                      TextSpan(text: 'Your ', style: TextStyle(color: bkashPink, fontSize: 20)),
                      TextSpan(text: 'Send Money ', style: TextStyle(color: bkashPink, fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'is ', style: TextStyle(color: bkashPink, fontSize: 20)),
                      TextSpan(text: 'successful', style: TextStyle(color: successGreen, fontSize: 20, fontWeight: FontWeight.bold)),
                    ]))),
                    const Icon(Icons.check_circle_outline, color: successGreen, size: 42),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 20, 32),
                  child: Row(children: [
                    CircleAvatar(radius: 32, backgroundColor: const Color(0xFFE4B19F),
                      child: const Text('R', style: TextStyle(fontSize: 26, color: Colors.white))),
                    const SizedBox(width: 16),
                    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('Ryan Reynolds', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(height: 4),
                      Text('01XXXXXXXXX', style: TextStyle(fontSize: 16, color: Colors.black54)),
                    ])),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.call_outlined, color: bkashPink, size: 18),
                      label: const Text('Call', style: TextStyle(color: bkashPink)),
                      style: OutlinedButton.styleFrom(side: const BorderSide(color: bkashPink), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ]),
                ),
                const Divider(height: 1, color: Color(0xFFEAEAEA)),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(child: _detail('Time', timeLabel)),
                  Container(width: 1, height: 100, color: const Color(0xFFEAEAEA)),
                  Expanded(child: _detail('Transaction ID', transactionId, trailing: IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: () => Clipboard.setData(ClipboardData(text: transactionId)),
                    icon: const Icon(Icons.copy, color: bkashPink, size: 20),
                  ))),
                ]),
                const Divider(height: 1, color: Color(0xFFEAEAEA)),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(child: _detail('Total', '৳505.00')),
                  Container(width: 1, height: 100, color: const Color(0xFFEAEAEA)),
                  Expanded(child: _detail('New Balance', '••••••••', trailing: const Icon(Icons.visibility_outlined, color: bkashPink, size: 20))),
                ]),
                const Divider(height: 1, color: Color(0xFFEAEAEA)),
                Row(children: [
                  Expanded(child: _detail('Reference', 'Demo transaction')),
                  Container(width: 1, height: 88, color: const Color(0xFFEAEAEA)),
                  const Expanded(child: SizedBox()),
                ]),
                const Divider(height: 1, color: Color(0xFFEAEAEA)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: Row(children: [
                    _outlinedAction(Icons.autorenew, 'Enable Auto Pay', () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Demo only — Auto Pay is not enabled.')));
                    }),
                    _outlinedAction(Icons.share, 'Share', () {
                      Clipboard.setData(ClipboardData(text: 'DEMO RECEIPT\nSend Money · $timeLabel\nRecipient: Ryan Reynolds\nTotal: ৳505.00\nTransaction ID: $transactionId\nThis is a demo only; no real payment was made.'));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Demo receipt details copied.')));
                    }),
                  ]),
                ),
                const Divider(height: 1, color: Color(0xFFEAEAEA)),
                const SizedBox(height: 26),
                const Icon(Icons.stars_rounded, color: bkashPink, size: 54),
                const SizedBox(height: 10),
                const Text('You have earned', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontSize: 17)),
                const SizedBox(height: 4),
                const Text('Demo Reward Points', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('This is a demo screen. No real money was sent and no payment was verified.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontSize: 13)),
                ),
                const SizedBox(height: 24),
              ]),
            ),
          ),
          Material(
            color: bkashPink,
            child: InkWell(
              onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const MyHomePage(title: 'bKash')),
                (route) => false,
              ),
              child: const SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                  child: Row(children: [
                    Expanded(child: Text('Back to Home', style: TextStyle(color: Colors.white, fontSize: 20))),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 30),
                  ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
