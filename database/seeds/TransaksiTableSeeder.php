<?php

use Illuminate\Database\Seeder;
use App\Transaksi;

class TransaksiTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        Transaksi::truncate();

        $faker = \Faker\Factory::create();


        for($i=0; $i<50; $i++) {
            $statusNumber = ($i*$faker->randomDigit)%2;

            $statusText;

            if($statusNumber == 0) $statusText = "Lunas";
            else $statusText = "Pending";
            
            Transaksi::create([
                'tanggal_order' => $faker->dateTimeThisYear($max = 'now', $timezone = null) ,
                'status_pelunasan' => $statusText,
                'tanggal_pembayaran' => $faker->dateTimeThisYear($max = 'now', $timezone = null) 
            ]);
        }
    }
}
