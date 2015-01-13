package com.grand_antares.model;

public class Kamar {

	private int nomor_kamar;
	private String tipe_kamar, harga, deksripsi_kamar;
	
	public static String KEY_NOMOR_KAMAR = "no_kamar";
	public static String KEY_TIPE_KAMAR = "tipe";
	public static String KEY_HARGA_KAMAR = "harga";
	public static String KEY_DESKRIPSI_KAMAR = "deskripsi";

	public Kamar(int nomor_kamar, String tipe_kamar, String harga, String deskripsi_kamar) {
		super();
		this.nomor_kamar = nomor_kamar;
		this.tipe_kamar = tipe_kamar;
		this.harga = String.valueOf(harga);
		this.deksripsi_kamar = deskripsi_kamar;
	}
	
	public int getNomor_kamar() {
		return nomor_kamar;
	}


	public String getNama_kamar() {
		return tipe_kamar;
	}


	public String getHarga() {
		return harga;
	}


	public void setNomor_kamar(int nomor_kamar) {
		this.nomor_kamar = nomor_kamar;
	}


	public void setNama_kamar(String nama_kamar) {
		this.tipe_kamar = nama_kamar;
	}


	public void setHarga(String harga) {
		this.harga = harga;
	}


	public String getTipe_kamar() {
		return tipe_kamar;
	}


	public void setTipe_kamar(String tipe_kamar) {
		this.tipe_kamar = tipe_kamar;
	}

	public String getDeksripsi_kamar() {
		return deksripsi_kamar;
	}

	public void setDeksripsi_kamar(String deksripsi_kamar) {
		this.deksripsi_kamar = deksripsi_kamar;
	}
	
	

}
