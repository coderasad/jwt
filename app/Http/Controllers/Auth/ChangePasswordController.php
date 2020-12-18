<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Hash;
use Illuminate\Support\facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ChangePasswordController extends Controller
{
    public function changePassword(){
        return view('admin.auth.passwords.change');
    }
    public function updatePassword(Request $request){
        $password = Auth::user()->password;
        $oldpass = $request->old_pass;
        if (Hash::check($oldpass,$password)) {
            $user= User::find(Auth::id());
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();
            return Redirect()->route('admin.login')->with('toast_success', 'Password Change Successfully');
        } else {
            alert()->error('Password Not Match.');
            return Redirect()->back();
        }
        
    }
}
