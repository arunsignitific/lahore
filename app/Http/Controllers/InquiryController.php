<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Input;
use App\Mail\SendContactMail;
use App\Mail\SendWatchMail;
use App\Mail\testMail;
use Illuminate\Support\Facades\Hash;
use DB;

class InquiryController extends Controller
{
    public function sendcontactmail(Request $request)
    {
        $this->validate($request,[
            'name'    => 'required',
            'mob_no'  => 'required',
            'email'   => 'required|email',
        ]);
        // dd($request->all());
        // die;

        $data = array(
            'name'          => $request->name,
            'mob_no'        => $request->mob_no,
            'email'         => $request->email,
            'message'       => $request->message,
            'subject'       => 'New Enquiry | Lahore Watches'

        );

        Mail::to('info@vinfinity101.com')->send(new SendContactMail($data));

        $datas = array();
        $datas['name']         = $request->name;
        $datas['mob_no']       = $request->mob_no;
        $datas['email']        = $request->email;
        $datas['subject']      = 'New Enquiry | Lahore Watches';
        $datas['message']      = $request->message;
		
        $st = DB::table('inquiries')->insert($datas);

        if(count(Mail::failures()) > 0)
        {
            return 'Error! Please Try Later.';
        }
        else
        {
            return 'Thank you:-) we\'ll get back to you.';
        }
    }

    public function sendwatchmail(Request $request)
    {
        $this->validate($request,[
            'name'    => 'required',
            'mob_no'  => 'required',
            'email'   => 'required|email',
        ]);
        // dd($request->all());
        // die;

        $data = array(
            'product_id'    => $request->product_id,
            'product_name'    => $request->product_name,
            'name'          => $request->name,
            'mob_no'        => $request->mob_no,
            'email'         => $request->email,
            'message'       => $request->message,
            'subject'       => 'New Enquiry | Watches'

        );

        Mail::to('info@vinfinity101.com')->send(new SendWatchMail($data));

        $datas = array();
        $datas['product_detail_id'] = $request->product_id;
        $datas['product_name']      = $request->product_name;
        $datas['name']              = $request->name;
        $datas['mob_no']            = $request->mob_no;
        $datas['email']             = $request->email;
        $datas['subject']           = 'New Enquiry | Watches';
        $datas['message']           = $request->message;
		
        $st = DB::table('watch_enquiries')->insert($datas);

        if(count(Mail::failures()) > 0)
        {
            return 'Error! Please Try Later.';
        }
        else
        {
            return 'Thank you:-) we\'ll get back to you.';
        }
    }


        public function sendverifyedMail(Request $request) 
    { 
        $this->validate($request,[
            'name'    => 'required',
            'phone'  => 'required',
            'email'   => 'required|email',
        ]);
        // dd($request->all());
        // die;

    $password = Hash::make($request->password);
 
        $data = [ 
          'name'=> $request->name,
          'email'=>  $request->email,
          'password'=> $password,
          'password'=> $password,
          'phone' =>  $request->phone
        ];
 
        $dI = DB::table('guest_users')->insertGetId($data);


        Mail::to($request->email)->send(new testMail($data));

        if(count(Mail::failures()) > 0)
        {
            return 'Error! Please Try Later.';
        }
        else
        {
            return 'Thank you:-) we\'ll get back to you.';
        }
    }
}
