<?php

namespace App\Http\Controllers;

use App\Product;
use App\Transaction;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class TransactionController extends Controller
{
/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Transaction::with(['village', 'product']);
            return DataTables::of($data)
                ->addColumn('action', function ($data) {
                    return view('layouts.partials._action', [
                        'model' => $data,
                        'show_url' => route('transaction.show', $data->id),
                        'edit_url' => route('transaction.edit', $data->id),
                        'delete_url' => route('transaction.destroy', $data->id)
                    ]);
                })
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('pages.transaction.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $product = Product::pluck('name', 'id');
        return view('pages.transaction.create', compact('product'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // return $request->all();

        $this->validate($request, [
            'village_id' => 'required',
            'product_id' => 'required',
            'qty_sold' => 'required',
            'qty_stock' => 'required',
        ]);

        $product = Product::findOrFail($request->product_id);

        $data = [
            'date' => $request->date,
            'village_id' => $request->village_id,
            'product_id' => $request->product_id,
            'unit' => $product->unit,
            'price_basic' => $product->price_basic,
            'price_sell' => $product->price_sell,
            'qty_sold' => $request->qty_sold,
            'qty_stock' =>  $request->qty_stock,
            'total_sell' => $request->qty_sold * $product->price_sell,
            'total_stock' => $request->qty_stock * $product->price_sell,
        ];

        Transaction::create($data);

        return redirect()->route('transaction.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Transaction::findOrFail($id);
        return view('pages.transaction.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Transaction::findOrFail($id);
        $product = Product::pluck('name', 'id');
        return view('pages.transaction.edit', compact('data', 'product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $transaction = Transaction::findOrFail($id);

        $this->validate($request, [
            'village_id' => 'required',
            'product_id' => 'required',
            'qty_sold' => 'required',
            'qty_stock' => 'required',
        ]);

        $product = Product::findOrFail($request->product_id);

        $data = [
            'date' => $request->date,
            'village_id' => $request->village_id,
            'product_id' => $request->product_id,
            'unit' => $product->unit,
            'price_basic' => $product->price_basic,
            'price_sell' => $product->price_sell,
            'qty_sold' => $request->qty_sold,
            'qty_stock' =>  $request->qty_stock,
            'total_sell' => $request->qty_sold * $product->price_sell,
            'total_stock' => $request->qty_stock * $product->price_sell,
        ];

        $transaction->update($data);

        return redirect()->route('transaction.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $transaction = Transaction::findOrFail($id);
        $transaction->delete();

        return redirect()->route('transaction.index');
    }
}
