<?php

namespace App\Http\Controllers;

use App\Recipient;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class RecipientController extends Controller
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
            $data = Recipient::query();
            return DataTables::of($data)
                ->addColumn('action', function ($data) {
                    return view('layouts.partials._action', [
                        'model' => $data,
                        'show_url' => route('recipient.show', $data->id),
                        'edit_url' => route('recipient.edit', $data->id),
                        'delete_url' => route('recipient.destroy', $data->id)
                    ]);
                })
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('pages.recipient.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.recipient.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'percentage' => 'numeric',
            'is_active' => 'boolean'
        ]);

        Recipient::create($request->all());

        return redirect()->route('recipient.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $recipient = Recipient::findOrFail($id);
        return view('pages.recipient.show', compact('recipient'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Recipient::findOrFail($id);
        return view('pages.recipient.edit', compact('data'));
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
        $recipient = Recipient::findOrFail($id);

        $data = $this->validate($request, [
            'name' => 'required|string',
            'percentage' => 'numeric',
            'is_active' => 'boolean'
        ]);

        $recipient->update($data);

        return redirect()->route('recipient.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $recipient = Recipient::findOrFail($id);
        $recipient->delete();

        return redirect()->route('recipient.index');
    }
}
