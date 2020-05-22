<nav class="pcoded-navbar">
    <div class="pcoded-inner-navbar main-menu">
        <div class="pcoded-navigatio-lavel">Navigation</div>
        <ul class="pcoded-item pcoded-left-item">
            <li class="<?php if($this->uri->segment(2)=="dashboard"){echo "active";}?>">
                <a href="dashboard">
                    <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                    <span class="pcoded-mtext">Dashboard</span>
                </a>
            </li>

            <li class="<?php if($this->uri->segment(2)=="doctors"){echo "active";}?>">
                <a href="doctors">
                    <span class="pcoded-micon"><i class="feather icon-users"></i></span>
                    <span class="pcoded-mtext">Doctors</span>
                </a>
            </li>

            <li class="pcoded-hasmenu <?php if($this->uri->segment(2)=="services" || $this->uri->segment(2)=="packages"){echo "active pcoded-trigger";}?>">
                <a href="javascript:void(0)">
                    <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                    <span class="pcoded-mtext">All Services</span>
                    <!-- <span class="pcoded-badge label label-warning">NEW</span> -->
                </a>
                <ul class="pcoded-submenu">
                    <!-- <li class=" pcoded-hasmenu">
                        <a href="javascript:void(0)">
                            <span class="pcoded-mtext">Vertical</span>
                        </a>
                        <ul class="pcoded-submenu">
                            <li class=" ">
                                <a href="menu-static.htm">
                                    <span class="pcoded-mtext">Static Layout</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-header-fixed.htm">
                                    <span class="pcoded-mtext">Header Fixed</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-compact.htm">
                                    <span class="pcoded-mtext">Compact</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-sidebar.htm">
                                    <span class="pcoded-mtext">Sidebar Fixed</span>
                                </a>
                            </li>

                        </ul>
                    </li> -->
                    <li class="<?php if($this->uri->segment(2)=="services"){echo "active";}?>">
                        <a href="services">
                            <span class="pcoded-mtext">Services</span>
                        </a>
                    </li>
                    <li class="<?php if($this->uri->segment(2)=="packages"){echo "active";}?>">
                        <a href="packages">
                            <span class="pcoded-mtext">Packages</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="pcoded-hasmenu <?php if($this->uri->segment(2)=="events" || $this->uri->segment(2)=="new"){echo "active pcoded-trigger";}?>">
                <a href="javascript:void(0)">
                    <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                    <span class="pcoded-mtext">Hospital Updates</span>
                    <!-- <span class="pcoded-badge label label-warning">NEW</span> -->
                </a>
                <ul class="pcoded-submenu">
                    <!-- <li class=" pcoded-hasmenu">
                        <a href="javascript:void(0)">
                            <span class="pcoded-mtext">Vertical</span>
                        </a>
                        <ul class="pcoded-submenu">
                            <li class=" ">
                                <a href="menu-static.htm">
                                    <span class="pcoded-mtext">Static Layout</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-header-fixed.htm">
                                    <span class="pcoded-mtext">Header Fixed</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-compact.htm">
                                    <span class="pcoded-mtext">Compact</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="menu-sidebar.htm">
                                    <span class="pcoded-mtext">Sidebar Fixed</span>
                                </a>
                            </li>
                        </ul>
                    </li> -->
                    <li class="<?php if($this->uri->segment(2)=="events"){ echo "active"; }?>">
                        <a href="events">
                            <span class="pcoded-mtext">Events</span>
                        </a>
                    </li>
                    <li class="<?php if($this->uri->segment(2)=="news"){ echo "active";}?>">
                        <a href="news">
                            <span class="pcoded-mtext">News</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>