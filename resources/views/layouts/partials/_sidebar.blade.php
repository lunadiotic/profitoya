<div class="left-side-menu">

    <div class="h-100" data-simplebar>

        <!-- User box -->
        <div class="user-box text-center">
            <img src="{{ asset('assets/images/users/admin.svg') }}" alt="user-img" title="Mat Helme"
                class="rounded-circle avatar-md">
            <div class="dropdown">
                <a href="javascript: void(0);" class="text-dark font-weight-normal dropdown-toggle h5 mt-2 mb-1 d-block"
                    data-toggle="dropdown">{{ Auth::user()->name }}</a>
                <div class="dropdown-menu user-pro-dropdown">

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-user mr-1"></i>
                        <span>My Account</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-settings mr-1"></i>
                        <span>Settings</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-lock mr-1"></i>
                        <span>Lock Screen</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-log-out mr-1"></i>
                        <span>Logout</span>
                    </a>

                </div>
            </div>
            <p class="text-muted">Admin</p>
        </div>

        <!--- Sidemenu -->
        <div id="sidebar-menu">

            <ul id="side-menu">

                <li class="menu-title">Navigation</li>

                <li>
                    <a href="{{ route('home') }}">
                        <i data-feather="airplay"></i>
                        <span> Dashboard </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('recipient.index') }}">
                        <i data-feather="users"></i>
                        <span> Penerima </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('product.index') }}">
                        <i data-feather="box"></i>
                        <span> Produk </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('transaction.index') }}">
                        <i data-feather="shopping-bag"></i>
                        <span> Transaksi </span>
                    </a>
                </li>

                <li class="menu-title mt-2">Settings</li>
                <li>
                    <a href="#">
                        <i data-feather="settings"></i>
                        <span> Settings </span>
                    </a>
                </li>
            </ul>

        </div>
        <!-- End Sidebar -->

        <div class="clearfix"></div>

    </div>
    <!-- Sidebar -left -->

</div>
