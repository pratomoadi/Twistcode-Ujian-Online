<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    //

    protected $fillable = ['tanggal_order', 'status_pelunasan', 'tanggal_pembayaran'];

    public $timestamps = false;
}
