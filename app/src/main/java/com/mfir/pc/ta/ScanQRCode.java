package com.mfir.pc.ta;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.util.Log;

import com.mfir.pc.ta.R;
/*import com.google.zxing.Result;

import me.dm7.barcodescanner.zxing.ZXingScannerView;*/

public class ScanQRCode extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scan_qrcode);
    }
}
