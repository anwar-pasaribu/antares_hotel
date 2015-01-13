package com.grand_antares;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

import com.android.volley.Request.Method;
import com.android.volley.Request.Priority;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.grand_antares.control.AppsController;
import com.grand_antares.control.CustonJsonObjectRequest;
import com.grand_antares.model.Kamar;

public class Home extends Activity implements OnItemClickListener {
	
	private final String TAG = Home.class.getSimpleName();
	private ProgressDialog pDialog;
	private String tag_json_obj = "tag_get_kamar_data";
	
	//URL Utk akses data hotel di database
	private final String URL_KAMAR = "http://192.168.56.5/lat_grand_antares/php-engine/get_list_kamar_by_type.php";
	
	private AppsController aController;
	private ListHomeAdapter customListHome;
	private CustonJsonObjectRequest customJsonObjectRequest;
	private ListView lv_home;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);		
		
		//Inisialisasi Progress Dialog Box
		pDialog = new ProgressDialog(getApplicationContext());
		pDialog.setMessage("Loading...");
		pDialog.setCancelable(false);
		
		//Application Controller, berisi data ter-share utk semua activity.
		aController = (AppsController) getApplicationContext();
		
		lv_home = (ListView) findViewById(R.id.listView_list_kamar);
		
		requestAllDataKamarJSONObject();
		Log.i(TAG, "Setelah requestAllDataKamarJSONObject");
		populateListHome();
		Log.i(TAG, "Setelah populateListHome");
		
		Log.i(TAG, "oCreate Successfully Executed");
	}
	
	
	
	/** 
	 * Dipanggil setelah Request JSON Object Kamar!
	 * Untuk mengisi list dengan List di aController(kamar_data_full) sudah ada. 
	 */
	private void populateListHome() {
		
		customListHome = new ListHomeAdapter(getApplicationContext(), aController.getAllKamarList());
		lv_home.setAdapter(customListHome);
		lv_home.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				
				Kamar selected_kamar = (Kamar) aController.getKamarAtPosition(position);
				int nomor_kamar = selected_kamar.getNomor_kamar();
				
				Intent intent_detail_kamar = new Intent(getApplicationContext(), KamarDetails.class);
				intent_detail_kamar.putExtra("nomor_kamar", nomor_kamar);
				startActivity(intent_detail_kamar);
				
			}
		});
		
	}



	private void requestAllDataKamarJSONObject() {	
		
		//showProgressDialog();
		Log.i(TAG, "Pemanggilan after progressDialog requestAllDataKamarJSONObject");
		
		Map<String, String> data_request = new HashMap<String, String>();
		data_request.put("id_user", "1");
		
		Log.i(TAG, "Data Request : " + data_request.toString());
		
		customJsonObjectRequest = new CustonJsonObjectRequest(
				Method.POST,
				URL_KAMAR, 
				data_request, 
				new Response.Listener<JSONObject>() {
	
					@Override
					public void onResponse(JSONObject response) {
						//Mengolah data yang sudah di dapat dari MySQL Database
						
						//Cek Header Data JSON
						if(response.isNull("KAMAR") ) {
							
								showAlertDialog("Gagal Mengambil Data Kamar",
										"Data kamar tidak dapat di ambil, pastikan jaringan sudah aktif kemudian ulangi aplikasi.");

							
						} else {						
							parseReceivedJSONObject(response);
						}
						
						//hideProgressDialog();
						
					}
				}, new Response.ErrorListener() {	
					@Override
					public void onErrorResponse(VolleyError error) {
						VolleyLog.d(TAG, "Error: " + error.toString());
						Log.e(TAG, "ErrorResponse : " + error.toString());
						//hideProgressDialog();
						
					}
				}){};
				
		
				customJsonObjectRequest.setPriority(Priority.IMMEDIATE);
		
	
		// Adding request to request queue (Menjalankan Request)
		// TODO Lakukan pemeriksaan cache sehingga tidak dilakukan request ke server lagi.
		AppsController.getInstance().addToRequestQueue(customJsonObjectRequest, tag_json_obj );		
		
		Log.i(TAG, "Pemanggilan requestAllDataKamarJSONObject");
	}




	private void parseReceivedJSONObject(JSONObject responseJsonObject) {
		Log.i(TAG, "Pemanggilan parseReceivedJSONObject");
    	try {
    		//JIka header di JSON Object berisi "KAMAR"
    		if(!responseJsonObject.isNull("KAMAR") ) {
    			
    			int i = 0;
    			
	    		JSONObject jsonResponse 		= new JSONObject(responseJsonObject.toString());    		
	    		JSONArray jArray_dataKamar 		= jsonResponse.getJSONArray("KAMAR");    		

	    		int jArray_dataKamar_length 	= jArray_dataKamar.length();
	    		int data_kamar_size_local 		= aController.getKamarArrayListSize();
	    		
	    		int data_barang_size_new = jArray_dataKamar_length;
	    		
	    		// Jika data kamar lokal (aController) != data kamar baru datang (Network)
	    		if(data_barang_size_new  != data_kamar_size_local ) {
	    			
	    			if(data_barang_size_new > data_kamar_size_local) {				
	    						
							for (i = data_kamar_size_local; i < jArray_dataKamar_length; i++ ) {							
								JSONObject jsonObject = jArray_dataKamar.getJSONObject(i);
								aController.addToListKamarFull(aController.createKamarFromJSONObject(jsonObject));					
							}
	    				
	    			} else if( data_barang_size_new < data_kamar_size_local ) {
	    				
	    				aController.clearAllKamarList();
	    				
	    				for (i = 0; i < jArray_dataKamar_length; i++ ) {							
							JSONObject jsonObject = jArray_dataKamar.getJSONObject(i);
							aController.addToListKamarFull(aController.createKamarFromJSONObject(jsonObject));					
						}
	    				
	    			}  			    			
				
	    		} else {
	    			populateListHome();
	    		}
	    		
	    		Log.i(TAG, "Ukuran Data Barang : " + data_barang_size_new);
    		} 			
			
		} catch (Exception e) {
			Log.e(TAG, "Gagal : Tidak dapat mengambil data JSON saat parseJSONObject. Message : " + e.getMessage());
		} finally {
			
			populateListHome();
			
		}  	
    	
    	
	} //END - Parse JSONObject Data Kamar 	




	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position,
			long id) {
		
		
	}
	
	public void showAlertDialog(String title, String message) {		
		
		new AlertDialog.Builder(getApplicationContext())
		.setTitle(title)
		.setMessage(message)
		.setNeutralButton("OK", new DialogInterface.OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				return;
			}
		}).show();
		
	}
	
	
	private void showProgressDialog() {
		if (!pDialog.isShowing())
			pDialog.show();
	}

	private void hideProgressDialog() {
		if (pDialog.isShowing())
			pDialog.hide();
	}
	
	//////////////////////////////////////////////////////////
	/////////////////////////OPTION MENU//////////////////////
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.home, menu);
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
