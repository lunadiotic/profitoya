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
                    <form action="{{ route('recipient.store') }}" method="POST">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Nama</label>
                                <input type="text" name="name" class="form-control" placeholder="Nama">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Persentase</label>
                                <input type="number" name="percentage" class="form-control" placeholder="Persentase">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="" class="col-form-label">Status Aktif</label>
                            <div class="radio radio-primary">
                                <input type="radio" name="is_active" id="radio1" value="1" checked>
                                <label for="radio1">
                                    Aktif
                                </label>
                            </div>
                            <div class="radio radio-primary">
                                <input type="radio" name="is_active" id="radio2" value="0">
                                <label for="radio2">
                                    Non-aktif
                                </label>
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
