package com.mfir.pc.ta.Adapter;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.mfir.pc.ta.Model.Jadwal;
/*
import com.mfir.pc.ta.dosen.detail_jadwal;
*/
import com.mfir.pc.ta.*;


import java.util.List;

/**
 * Created by DIMAS on 21/12/2018.
 */

public class JadwalAdapter extends RecyclerView.Adapter<JadwalAdapter.MyViewholder> {
    private List<Jadwal> jadwalList;
    private Context nContext;

    public JadwalAdapter(List<Jadwal> jadwalList, Context nContext) {
        this.jadwalList = jadwalList;
        this.nContext = nContext;
    }

    @NonNull
    @Override
    public MyViewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View nView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_view, parent, false);
        MyViewholder myViewholder = new MyViewholder(nView);
        return myViewholder;
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewholder holder, final int position) {
        holder.hari.setText(jadwalList.get(position).getHari());
        holder.jam.setText(jadwalList.get(position).getJam_mulai());
        holder.matkul.setText(jadwalList.get(position).getNama_mk());
////        holder.itemView.setOnClickListener(new View.OnClickListener() {
////            @Override
////            public void onClick(View view) {
////                Intent i = new Intent(nContext,detail_jadwal.class);
////                i.putExtra("id_matkul",jadwalList.get(position).getId_matkul());
////                i.putExtra("nama_matkul",jadwalList.get(position).getNama_mk());
////                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
////                nContext.startActivity(i);
////            }
//        });

    }

    @Override
    public int getItemCount() {
        return jadwalList.size();
    }

    public class MyViewholder extends RecyclerView.ViewHolder {
        TextView hari, jam, matkul;

        public MyViewholder(View itemView) {
            super(itemView);

            hari = itemView.findViewById(R.id.tv_Hari);
            jam = itemView.findViewById(R.id.tv_Jam);
            matkul = itemView.findViewById(R.id.tv_Matkul);

        }
    }
}
