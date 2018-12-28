package com.mfir.pc.ta.Adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.mfir.pc.ta.Model.DetailJadwal;
import com.mfir.pc.ta.R;

import java.util.List;

/**
 * Created by DIMAS on 27/12/2018.
 */

public class detail_jadwal_adapter extends RecyclerView.Adapter<detail_jadwal_adapter.MyViewholder> {
    private List<DetailJadwal> detailjadwalList;
    private Context nContext;

    public detail_jadwal_adapter(List<DetailJadwal> detailjadwalList, Context nContext) {
        this.detailjadwalList = detailjadwalList;
                this.nContext = nContext;
    }

    @NonNull
    @Override
    public MyViewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View nView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_mhs, parent, false);
        MyViewholder myViewholder = new MyViewholder(nView);
        return myViewholder;
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewholder holder, int position) {
        holder.nim.setText(detailjadwalList.get(position).getId());

        holder.nama.setText(detailjadwalList.get(position).getNama());
        holder.absen.setText(detailjadwalList.get(position).getAbsen());
        holder.keterangan.setText(detailjadwalList.get(position).getKeterangan());

    }

    @Override
    public int getItemCount() {
        return detailjadwalList.size();
    }

    public class MyViewholder extends RecyclerView.ViewHolder {
        TextView nim, nama, absen, keterangan;

        public MyViewholder(View itemView) {
            super(itemView);


            nim         = itemView.findViewById(R.id.tv_NIM);
            nama        = itemView.findViewById(R.id.tv_Nama);
            absen       = itemView.findViewById(R.id.tv_Absen);
            keterangan  = itemView.findViewById(R.id.tv_keterangan);

        }
    }
}

