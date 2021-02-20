@extends('layouts.app')

@section('content')
<!-- Start Content-->
<div class="container-fluid">

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Penerima</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-12">
            <div class="card">
                <h5 class="card-header">Details</h5>
                <div class="card-body">
                    <table class="table mb-0">
                        <tbody>
                        <tr>
                            <th scope="row" class="bg-secondary text-white" width="20%">
                                Nama
                            </th>
                            <td>{{ $recipient->name }}</td>
                        </tr>
                        <tr>
                            <th scope="row" class="bg-secondary text-white">
                                Persentase
                            </th>
                            <td>
                                {{ $recipient->percentage }}%
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="bg-secondary text-white">
                                Status
                            </th>
                            <td>{{ $recipient->is_active ? 'Aktif' : 'Non-aktif' }}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div><!-- end col-->
    </div>
    <!-- end row-->


</div> <!-- container -->
@endsection
