<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailTransaksi extends Model
{
    //
    protected $fillable = ['id_transaksi', 'harga', 'jumlah', 'subtotal'];

    public $timestamps = false;
}
