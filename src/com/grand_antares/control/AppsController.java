package com.grand_antares.control;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.Volley;
import com.grand_antares.model.Kamar;

/**
 * Apps Controller V.1
 * @author Anwar Pasaribu
 *
 */
public class AppsController extends Application {
	
	public static final String TAG = AppsController.class.getSimpleName();
	private Context mainContext;
	private RequestQueue queue;
	private ImageLoader mImageLoader;	
	private static AppsController mInstance;	
	
	//Me create this, List yang akan menampung seluruh data
	private List<Kamar> kamar_data_full = new ArrayList<Kamar>();
	
	
	/* From androidhive.com -start- */
	@Override
	public void onCreate() {
		super.onCreate();
		mInstance = this;
	}
	
	public Context getMainContext() {
		return this.mainContext;
	}
	
	public static synchronized AppsController getInstance() {
		return mInstance;
	}
	

	public RequestQueue getRequestQueue() {
		
		if (queue == null) {
			queue = Volley.newRequestQueue(getApplicationContext());
		}

		return queue;
	}

	public ImageLoader getImageLoader() {
		getRequestQueue();
		if (mImageLoader == null) {
			mImageLoader = new ImageLoader(this.queue,
					new LruBitmapCache());
		}
		return this.mImageLoader;
	}

	public <T> void addToRequestQueue(Request<T> req, String tag) {		
		req.setTag(TextUtils.isEmpty(tag) ? TAG : tag);
		getRequestQueue().add(req);
	}

	
	public <T> void addToRequestQueue(Request<T> req) {
		req.setTag(TAG);
		getRequestQueue().add(req);
	}

	public void cancelPendingRequests(Object tag) {
		if (queue != null) {
			queue.cancelAll(tag);
		}
	}	
	/* from androidhive.com -end- */
	
	
	
	//Cek koneksi internet / jaringan
	//Source : http://stackoverflow.com/questions/4238921/detect-whether-there-is-an-internet-connection-available-on-android
	public boolean isNetworkAvailable() {
	    ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
	    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
	    
	    return activeNetworkInfo != null && activeNetworkInfo.isConnected();
	}
	
	// me -start- //
	
	/////////////////////////////////////////////////////////////////
	/////////////////////////KAMAR-START////////////////////////////	
	
	public List<Kamar> getAllKamarList() {
		return kamar_data_full;
	}	
	
	public Kamar getKamarAtPosition(int position) {
		return kamar_data_full.get(position);
	}
	
	public Kamar getKamarByNomor(int no_kamar ) {
		
		Kamar kamar = null;
		
		for(int i = 0; i< getKamarArrayListSize(); i++) {
			if(getAllKamarList().get(i).getNomor_kamar() == no_kamar)
				kamar = getAllKamarList().get(i);
		}
		return kamar;
	}
	
	/**
	 * Berfungsi utk mengolah JSONObject Kamar menjadi var Kamar.
	 * @param jsonObject - String dengan format JSON dari Server
	 * @return Kamar - Bentuk barang full version (table barang)
	 */
	public Kamar createKamarFromJSONObject(JSONObject jsonObject) {
		
		Kamar data_kamar_temp = null;
		try {
			data_kamar_temp = new Kamar(
					jsonObject.getInt(Kamar.KEY_NOMOR_KAMAR),
					jsonObject.getString(Kamar.KEY_TIPE_KAMAR),
					jsonObject.getString(Kamar.KEY_HARGA_KAMAR),
					jsonObject.getString(Kamar.KEY_DESKRIPSI_KAMAR)
					);
		} catch (JSONException e) {
			e.printStackTrace();
		}	
		
		return data_kamar_temp;
		
	}

	public void addToListKamarFull(Kamar barang) {
		kamar_data_full.add(barang);
	}
	
	public int getKamarArrayListSize() {
		return kamar_data_full.size();
	}
	
	/**
	 * <strong>!!!</strong> Menghapus seluruh isi data List Kamar.
	 */
	public void clearAllKamarList() {
		kamar_data_full.clear();
	}
	
	/////////////////////////////////////////////////////////////////
	/////////////////////////KAMAR-END//////////////////////////////

}
