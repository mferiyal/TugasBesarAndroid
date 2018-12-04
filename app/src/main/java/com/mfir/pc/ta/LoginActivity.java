package com.mfir.pc.ta;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.mfir.pc.ta.admin.DosenHome;

public class LoginActivity extends AppCompatActivity {
    Button btnMasuk;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        btnMasuk = (Button) findViewById(R.id.buttonLogin);
        btnMasuk.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(getApplicationContext(),DosenHome.class);
                startActivity(i);
            }
        });
    }
}
