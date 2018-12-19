package com.mfir.pc.ta.user;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;

class RecyclerViewAdapter extends RecyclerView.Adapter<RecyclerViewAdapter.ViewHolder>{

    private ArrayList<Mahasiswa> rvData;

    public RecyclerViewAdapter(ArrayList<Mahasiswa> rvData) {
        this.rvData = rvData;
    }

    public class ViewHolder extends RecyclerView.ViewHolder{

        public int nim;
        public int absen;
        public TextView tx_nama;
        public TextView tx_status;

        public ViewHolder(View v){
            super(v);

            nim = (int) v.findViewById(R.id.nim);
            absen = (int)v.findViewById(R.id.absen);
            tx_nama = (TextView)v.findViewById(R.id.tx_nama);
            tx_status = (TextView)v.findViewById(R.id.tx_status);
        }
    }
    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType){
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_daftar_matkul,parent,false);

        ViewHolder vh = new ViewHolder(v);
        return vh;
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position){
        Mahasiswa dt = rvData.get(position);

        int absen = holder.absen;
        int nim = holder.nim;
        holder.tx_nama.setText(dt.getNama());
        holder.tx_status.setText(dt.getStatus());
    }

    @Override
    public int getItemCount(){
        return rvData.size();
    }
}
