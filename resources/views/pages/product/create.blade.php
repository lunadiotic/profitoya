@extends('layouts.app')

@section('content')
<!-- Start Content-->
<div class="container-fluid">

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Penerima</a></li>
                        <li class="breadcrumb-item active">Tambah</li>
                    </ol>
                </div>
                <h4 class="page-title">Tambah</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

     <!-- Form row -->
     <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Form Input</h4>
                    <form action="{{ route('product.store') }}" method="POST">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Nama</label>
                                <input type="text" name="name" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Unit</label>
                                <input type="text" name="unit" class="form-control">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Harga Dasar</label>
                                <input type="number" name="price_basic" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Harga Jual</label>
                                <input type="number" name="price_sell" class="form-control">
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>

                    </form>
                </div> <!-- end card-body -->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row -->

</div> <!-- container -->
@endsection
