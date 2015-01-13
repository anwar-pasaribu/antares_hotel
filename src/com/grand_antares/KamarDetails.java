package com.grand_antares;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;

import com.grand_antares.control.AppsController;
import com.grand_antares.model.Kamar;

public class KamarDetails extends Activity {
	
	private AppsController aController;
	
	private int nomor_kamar = 0;
	private Kamar activeKamar;
	
	//Activity Widget
	ImageView imageView;
	TextView textView_tipe, textView_harga, textView_deskripsiKamar;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_kamar_details);
		
		//Application Controller, berisi data ter-share utk semua activity.
		aController = (AppsController) getApplicationContext();
		
		nomor_kamar = getIntent().getExtras().getInt("nomor_kamar");
		activeKamar = aController.getKamarByNomor(nomor_kamar);
		
		setTitle(activeKamar.getTipe_kamar() + " Room Info");
		
		initializeWidget();
		setWidgetContent();
		
	}

	private void setWidgetContent() {
		setHeaderImage(activeKamar.getTipe_kamar());
		textView_tipe.setText(activeKamar.getTipe_kamar().toUpperCase());
		textView_harga.setText("IDR " + activeKamar.getHarga());
		textView_deskripsiKamar.setText(activeKamar.getDeksripsi_kamar());
	}


	private void initializeWidget() {
		imageView = (ImageView) findViewById(R.id.imageView_gambar_header_kamar);
		textView_tipe = (TextView) findViewById(R.id.textView_details_tipe_kamar);
		textView_harga = (TextView) findViewById(R.id.textView_details_harga_kamar);
		textView_deskripsiKamar = (TextView) findViewById(R.id.textView_details_deskripsi_kamar);
		
	}

	private void setHeaderImage(String tipe_kamar) {
		
		tipe_kamar = tipe_kamar.trim();
		
		if(tipe_kamar.matches("Business")) {
			imageView.setImageResource(R.drawable.business);
		} else if(tipe_kamar.matches("Deluxe")) {
			imageView.setImageResource(R.drawable.deluxe);
		} else if(tipe_kamar.matches("Suite")) {
			imageView.setImageResource(R.drawable.suite);
		} else if(tipe_kamar.matches("Superior")) {
			imageView.setImageResource(R.drawable.superior);
		}
	}




	//////////////////////////////////////////////////////////
	/////////////////////////OPTION MENU//////////////////////
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.kamar_details, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	////////////////////////OPTION MENU - END//////////////////

}
