import 'package:flutter/material.dart';

import 'storage_progress_bar.dart';

class StorageCard extends StatelessWidget {
  final double usedMb;
  final double totalGB;

  const StorageCard({super.key, required this.usedMb, required this.totalGB});

  double get _progress => (usedMb / 1024) / totalGB;

  String get _usedText =>
      '${usedMb.toStringAsFixed(1)} MB of'
      '${totalGB.toStringAsFixed(2)} GB used';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB0B8E8).withValues(alpha: 0.5),
            blurRadius: 20,
            offset: const Offset(10, 10),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            offset: const Offset(-6, -6),
          ),
        ],
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.cloud_outlined, size: 50, color: Color(0xFF1A1F5E)),

              SizedBox(width: 10),
              Text(
                "Storage",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1F5E),
                  letterSpacing: -0.3,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

           StorageProgressBar(progress: _progress),
          SizedBox(height: 10),

          Text(
            _usedText,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF5C6080),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Text(
                'Buy Storage',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
