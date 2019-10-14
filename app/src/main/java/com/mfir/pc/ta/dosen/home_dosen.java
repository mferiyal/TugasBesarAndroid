package com.mfir.pc.ta.dosen;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.mfir.pc.ta.Adapter.JadwalAdapter;
import com.mfir.pc.ta.ClickListener.ClickListener;
import com.mfir.pc.ta.ClickListener.RecylerTouchListener;
import com.mfir.pc.ta.Model.Jadwal;
import com.mfir.pc.ta.Model.JadwalResponse;
import com.mfir.pc.ta.R;
import com.mfir.pc.ta.api.InterfaceAPI;
import com.mfir.pc.ta.api.apiClient;
import com.mfir.pc.ta.sessionMan.SessionManagement;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class home_dosen extends AppCompatActivity {

    Button btnLogout;

    private InterfaceAPI mApiInterface;
    private RecyclerView mRecyclerView;
    private JadwalAdapter mAdapter;
    private List<Jadwal> mJadwal = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_dosen);
        btnLogout = (Button)findViewById(R.id.btnLogout);
        final SessionManagement sessionManagement = new SessionManagement(this);
        getSupportActionBar().setTitle("Halaman Dosen");
        btnLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sessionManagement.logoutUser();

            }
        });
        mRecyclerView = findViewById(R.id.recyler_home);
        mApiInterface = apiClient.getCLient().create(InterfaceAPI.class);
        Call<JadwalResponse> call = mApiInterface.getJadwal();
        call.enqueue(new Callback<JadwalResponse>() {

            @Override
            public void onResponse(Call<JadwalResponse> call, Response<JadwalResponse> response) {
                mJadwal = response.body().getJadwalList();
                mAdapter = new JadwalAdapter(mJadwal,getApplicationContext());
                mRecyclerView.setLayoutManager(new LinearLayoutManager(getApplication()));
                mRecyclerView.setAdapter(mAdapter);
                mRecyclerView.addOnItemTouchListener(new RecylerTouchListener(getApplicationContext(), mRecyclerView, new ClickListener() {
                    @Override
                    public void OnClick(View view, int position) {
                        Intent i = new Intent(getApplicationContext(),detail_jadwal.class);
                        i.putExtra("id_matkul",mJadwal.get(position).getId_matkul());
                        i.putExtra("nama_matkul",mJadwal.get(position).getNama_mk());
                        startActivity(i);
                    }

                    @Override
                    public void onLongClick(View view, int position) {

                    }
                }));
            }

            @Override
            public void onFailure(Call<JadwalResponse> call, Throwable t) {
                Log.e("Retrofit Get", t.toString());

            }
        });





        btnLogout.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                sessionManagement.logoutUser();

            }
        });
    }
}

