package com.mfir.pc.ta.user;

import android.graphics.drawable.AnimationDrawable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.RelativeLayout;

import java.util.ArrayList;

public class HomeMahasiswa extends AppCompatActivity {

    private RecyclerView rv;
    private RecyclerViewAdapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    private ArrayList<Mahasiswa> dataset;
    private RelativeLayout relativeLayout;
    private AnimationDrawable animationDrawable;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_daftar_matkul);

        rv = (RecyclerView) findViewById(R.id.reccccc);
        rv.setHasFixedSize(true);
        mLayoutManager = new LinearLayoutManager(this);
        rv.setLayoutManager(mLayoutManager);
        mAdapter = new RecyclerViewAdapter(dataset);
        rv.setAdapter(mAdapter);
    }
}
