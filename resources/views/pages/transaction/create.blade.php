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
                    <form action="{{ route('transaction.store') }}" method="POST">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="" class="col-form-label">Tanggal</label>
                                <input type="date" name="date" id="" class="form-control">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Desa</label>
                                <select name="village_id" id="" class="form-control search" data-toggle="select2">
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Produk</label>
                                <select name="product_id" id="" class="form-control">
                                    @foreach ($product as $key => $value)
                                        <option value="{{ $key }}">{{ $value }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Qty Jual</label>
                                <input type="number" name="qty_sold" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label">Sisa Stock</label>
                                <input type="number" name="qty_stock" class="form-control" required>
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

@push('styles')
<link href="{{ asset('assets/libs/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css"/>
@endpush

@push('scripts')
<script src="{{ asset('assets/libs/select2/js/select2.min.js') }}"></script>
<script type="text/javascript">
  $('.search').select2({
    placeholder: 'Cari...',
    ajax: {
      url: '/api/village',
      dataType: 'json',
      delay: 250,
      processResults: function (data) {
        return {
          results:  $.map(data, function (item) {
            return {
              text: item.title,
              id: item.id
            }
          })
        };
      },
      cache: true
    }
  });
</script>
@endpush
