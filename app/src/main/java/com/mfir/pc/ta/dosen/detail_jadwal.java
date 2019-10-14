package com.mfir.pc.ta.dosen;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.mfir.pc.ta.*;
import com.mfir.pc.ta.ClickListener.ClickListener;
import com.mfir.pc.ta.ClickListener.RecylerTouchListener;
import com.mfir.pc.ta.Scan.Generator;
import com.mfir.pc.ta.Adapter.detail_jadwal_adapter;
import com.mfir.pc.ta.Model.DetailJadwal;
import com.mfir.pc.ta.Model.DetailJadwalResponse;
import com.mfir.pc.ta.Model.Jadwal;
import com.mfir.pc.ta.Model.JadwalResponse;
import com.mfir.pc.ta.api.InterfaceAPI;
import com.mfir.pc.ta.api.apiClient;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class detail_jadwal extends AppCompatActivity {
    private InterfaceAPI mApiInterface;
    private RecyclerView mRecyclerView;
    private detail_jadwal_adapter mAdapter;
    private List<Jadwal> mJadwal = new ArrayList<>();
    private List<DetailJadwal> mDetailJadwal = new ArrayList<>();

    private Button btnGenerator,btnBack;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_jadwal);
        TextView matkul = findViewById(R.id.matkul);
        btnGenerator = (Button) findViewById(R.id.btnGen);
        btnBack = (Button) findViewById(R.id.id_kembalihome);
        Intent i = getIntent();
        matkul.setText("Mata Kuliah : "+i.getStringExtra("nama_matkul"));
        mRecyclerView = findViewById(R.id.recyler_mhs);
        mApiInterface = apiClient.getCLient().create(InterfaceAPI.class);
        Call<DetailJadwalResponse> call = mApiInterface.getDetailJadwal(Integer.toString(i.getIntExtra("id_matkul",0)));

        btnGenerator.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(getApplicationContext(), Generator.class);

                startActivity(i);
            }
        });


        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(getApplicationContext(),home_dosen.class);
                startActivity(i);
            }
        });



        call.enqueue(new Callback<DetailJadwalResponse>() {
            @Override
            public void onResponse(Call<DetailJadwalResponse> call, Response<DetailJadwalResponse> response) {
                mDetailJadwal = response.body().getDetailJadwalList();
                mAdapter = new detail_jadwal_adapter(mDetailJadwal,getApplicationContext());
                mRecyclerView.setLayoutManager(new LinearLayoutManager(getApplication()));
                mRecyclerView.setAdapter(mAdapter);

            }

            @Override
            public void onFailure(Call<DetailJadwalResponse> call, Throwable t) {
                Log.e("Retrofit Get", t.toString());

            }
        });

    }
}
