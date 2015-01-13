package com.grand_antares;

import java.util.List;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.grand_antares.model.Kamar;

public class ListHomeAdapter extends ArrayAdapter<Kamar>{
	
	private final String TAG = this.getClass().getSimpleName();
	private final static int ITEM_LAYOUT = R.layout.item_list_home;
	private Context context;
	private List<Kamar> dataKamar;

	public ListHomeAdapter(Context context, List<Kamar> kamar) {
		super(context, ITEM_LAYOUT, kamar);
		this.context = context;
		this.dataKamar = kamar;
	}

	@Override
	public int getCount() {
		return dataKamar.size();
	}

	@Override
	public Kamar getItem(int position) {
		return null;
	}

	@Override
	public long getItemId(int position) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		View itemView = convertView;
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		ViewHolder holder;
		
		Kamar dataKamar_aktif = dataKamar.get(position);
		
		if(itemView == null) {
			holder = new ViewHolder();
			itemView = inflater.inflate(ITEM_LAYOUT, parent, false);
			
			holder.textView_nama_kamar = (TextView) itemView.findViewById(R.id.textView_tipe_kamar);
			holder.harga_kamar = (TextView) itemView.findViewById(R.id.textView_price_per_night);
			holder.gambar_kamar = (ImageView) itemView.findViewById(R.id.imageView_gambar_kamar);
			
			itemView.setTag(holder);
		} else {
			holder = (ViewHolder) itemView.getTag();
		}
		
		//cek gambar yg sesuai utk list item
//		if()
		
		holder.textView_nama_kamar.setText(dataKamar_aktif.getTipe_kamar());
		holder.harga_kamar.setText("IDR " + dataKamar_aktif.getHarga() + " / Night");
		
		Log.d(TAG, "Akses getView Pos : " + position);
		
		return itemView;
	}
	
	
	private static class ViewHolder{
		@SuppressWarnings("unused")
		protected ImageView gambar_kamar;
		protected TextView textView_nama_kamar, harga_kamar;
	}
	

}
