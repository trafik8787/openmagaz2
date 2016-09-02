<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 02.09.2016
 * Time: 17:07
 */

class ControllerModuleParseGemstons extends Controller {


    public function sylviogems () {
        $filePath = '/home/canary/www/sylviogems.csv';
        $delimiter = ',';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        //dd($file->current());
        $file->seek(2);
        //dd($file->current());

        while (!$file->eof()) {
            $curent = $file->current();
            dd($curent);
        }
    }


    public function sylviojewelry () {
        dd('sdfsdfs');
    }

}