<?php

use Illuminate\Database\Seeder;
use App\DetailTransaksi;

class DetailTransaksiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DetailTransaksi::truncate();

        $faker = \Faker\Factory::create();

        for($i = 0; $i<50 ; $i++){
            DetailTransaksi::create([
                'id_transaksi' => $faker->numberBetween($min = 1000, $max = 999999999),
                'harga' => $faker->numberBetween($min = 1000000, $max = 999999999),
                'jumlah' => $faker->numberBetween($min = 1, $max = 1000),
                'subtotal' => $faker->numberBetween($min = 1, $max = 1000)
            ]);
        }
    }
}
