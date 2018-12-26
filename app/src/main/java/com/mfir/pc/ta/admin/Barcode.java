package com.mfir.pc.ta.admin;


import android.graphics.Bitmap;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.journeyapps.barcodescanner.BarcodeEncoder;
import com.mfir.pc.ta.R;

import androidx.annotation.NonNull;

public class Barcode extends AppCompatActivity {
    public EditText teks;
    public Button barcode;
    public ImageView image;
    MultiFormatWriter multiFormatWriter;
    String teksbarcode;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_barcode);
        teks = (EditText)findViewById(R.id.edittext);
        barcode = (Button)findViewById(R.id.barcodeteks);
        image = (ImageView)findViewById(R.id.imageview);

        multiFormatWriter = new MultiFormatWriter();



        barcode.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                teksbarcode = teks.getText().toString();
                try                {
                    BitMatrix bitMatrix = multiFormatWriter.encode(teksbarcode, BarcodeFormat.QR_CODE, 300,300);
                    BarcodeEncoder encoder = new BarcodeEncoder();
                    Bitmap bitmap = encoder.createBitmap(bitMatrix);
                    image.setImageBitmap(bitmap);

                } catch (WriterException e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
