<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\Goods;
use App\Models\GoodsSpec;
use App\Models\GoodsSpecSku;
use App\Models\Taxation;
use App\Models\Order;
use App\Models\User;
use Illuminate\Support\Str;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function home(Request $request)
    {
        $query = Goods::select();
        $goodsSpec = GoodsSpec::where('id','!=','2')->get()->toArray();
        $GoodsSpecSku = GoodsSpecSku::where('spec_id','!=','2')->select('sku_name','spec_id')->distinct()->get()->toArray();

        if($request->keyword){
            $query->where('goods_category','like','%'.$request->keyword.'%')->orwhere('goods_name','like','%'.$request->keyword.'%');       
        }
        if(!empty($request->GoodsSpecSku_id)){
            $goods_id = GoodsSpecSku::whereIn('sku_name',$request->GoodsSpecSku_id)->pluck('goods_id');
            $query->whereIn('id',$goods_id);
        }
        if(!empty($request->sort)){
            switch ($request->sort) {
                case '1':
                    // price desc
                    $query->orderby('price','desc');
                    break;
                case '2':
                    // price asc
                    $query->orderby('price','asc');
                    break;
                case '3':
                    // rating desc
                    $query->orderby('rating','desc');
                    break;
                case '4':
                    // rating asc
                    $query->orderby('rating','asc');
                    break;         
                default:
                    // price desc
                    $query->orderby('price','desc');
                    break;
            }
        }
        $goods = $query->get();
        $skuid_array = $request->GoodsSpecSku_id;

        return view('home',compact('goods','goodsSpec','GoodsSpecSku','request','skuid_array'));
    }

    public function details($id)
    {
        $goods = Goods::find($id);
        // $goodsSpec = GoodsSpec::get()->toArray();
        $GoodsSpecSku = GoodsSpecSku::where('goods_id',$goods['id'])->with('spec')->get()->toArray();
        $taxation = Taxation::get()->toArray();
        $shop = User::where('id',$goods->supplier_uid)->value('damages');
        // dd($GoodsSpecSku);
        return view('details',compact('goods','GoodsSpecSku','taxation','shop'));
    }

    public function buy(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);
        $data['uid'] = Auth::user()->id;

        $supplier_uid = Goods::where('id',$data['goods_id'])->value('supplier_uid');
        $damages = User::where('id',$supplier_uid)->value('damages');
        $damages_price = $data['total_price'] * $damages/100;
        $data['damages_percent'] = $damages;
        $data['damages'] = round($damages_price,2) ?: 0;
        Order::create($data);
        return redirect('order');
    }

    public function order()
    {
        if(Auth::user()->identity == 'supplier'){
            $goods_id = Goods::where('supplier_uid',Auth::user()->id)->pluck('id');
            $order = Order::whereIn('goods_id',$goods_id)->get();
        }else{
            $order = Order::where('uid',Auth::user()->id)->get();
            if($order){
                foreach ($order as &$v) {
                    $v['tui'] = $v['total_price'] - $v['damages'];
                }
            }
        }
        return view('order',compact('order'));
    }
    public function orderset($set,$orderid)
    {
        $goods_id = Order::where('id',$orderid)->value('goods_id');
        $goods_category = Goods::where('id',$goods_id)->value('goods_category');
        if($goods_category == 'Broadband' || $goods_category == 'Data Package'){
            if($set == 'accepted'){
                $token = Str::random(12);
                Order::where('id',$orderid)->update(['content'=>$token]);
            }
        }
        Order::where('id',$orderid)->update(['status'=>$set]);
        return redirect("order");
    }

    public function orderDelete($id)
    {
        Order::where('id',$id)->update(['status'=>'cancelled']);
        return redirect("order")->withSuccess('Cancle succeeded !');
    }

    public function shop()
    {
        $goods = Goods::where('supplier_uid',Auth::user()->id)->with('sku')->get();

        return view('shop',compact('goods'));
    }

    public function edit($id)
    {
        $goods_category = ['phone','screen','Game Console','Broadband','Data Package','Game Plan','Family Plan'];
        $goods = Goods::where('id',$id)->with('sku')->first();
        $goodssku = GoodsSpec::select()->get();
        // dd($sku);
        return view('edit',compact('goods','goods_category','goodssku'));
    }
    public function update(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);
        Goods::where('id',$data['id'])->update($data);
        return redirect('edit/'.$data['id']);
    }


    public function addsku(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);
        
        GoodsSpecSku::create($data);
        return redirect('edit/'.$data['goods_id']);
    }

    public function upload()
    {
        $goods_category = ['phone','screen','Game Console','Broadband','Data Package','Game Plan','Family Plan'];

        return view('upload',compact('goods_category'));
    }

    public function uploadPost(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);

        $fileCharater = $request->file('goods_image'); 
        if ($fileCharater->isValid()) { 
         
           $ext = $fileCharater->getClientOriginalExtension(); 

           $path = $fileCharater->getRealPath(); 

           $filename = date('Y-m-d-h-i-s').'.'.$ext; 

           $file = Storage::disk('publics')->put($filename, file_get_contents($path)); 
           
           $data['goods_image'] = 'img/'.$filename;
       }

        $data['supplier_uid'] = Auth::user()->id;
        $id = Goods::create($data)->id;
        return redirect('edit/'.$id);
    }

    public function setting(Request $request)
    {
        User::where('id',Auth::user()->id)->update(['damages'=>$request->damages]);
        return redirect('set')->withSuccess('succeeded !');
    }
}
