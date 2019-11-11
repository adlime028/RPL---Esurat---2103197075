<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <br><br>
            </div>
            <div class="pull-left info">
                <p><?= Yii::$app->user->identity->username; ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form> -->
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Home', 'icon' => 'dashboard', 'url' => ['/']],
                    // ['label' => 'Menu', 'options' => ['class' => 'header']],
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    // 2103197075 - Emilda Idhotul Izzah
                    // Nav Data
                    [
                        'label' => 'Data',
                        'icon' => 'fas fa-fw fa-folder-open',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Golongan', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/golongan'],],
                            ['label' => 'Instansi', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/instansi'],],
                            ['label' => 'Jabatan', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/jabatan'],],
                            ['label' => 'Jabatan Users', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/jabatan-users'],],
                            ['label' => 'Kategori Surat', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/kat-surat'],],
                            ['label' => 'Sifat', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/sifat'],],
                        ],
                    ],
                    // 2103197075 - Emilda Idhotul Izzah
                    // Nav Surat
                    [
                        'label' => 'Surat',
                        'icon' => 'fas fa-fw fa-folder-open',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Surat Masuk', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/surat-masuk'],],
                            ['label' => 'Surat Keluar', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/surat-keluar'],],
                        ],
                    ],
                    // 2103197075 - Emilda Idhotul Izzah
                    // Nav Disposisi
                    [
                        'label' => 'Disposisi',
                        'icon' => 'fas fa-fw fa-folder-open',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Surat Masuk', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/disposisi-surat-masuk'],],
                        ],
                    ],
                    // 2103197075 - Emilda Idhotul Izzah
                    // Nav Approval
                    [
                        'label' => 'Approval',
                        'icon' => 'fas fa-fw fa-folder-open',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Surat Keluar', 'icon' => 'fas fa-fw fa-folder', 'url' => ['/approval-surat-keluar'],],
                        ],
                    ],
                    ['label' => 'About', 'icon' => 'dashboard', 'url' => ['site/about']],
                    // ['label' => 'Contact', 'icon' => 'dashboard', 'url' => ['site/contact']],
                ],
            ]
        ) ?>

    </section>

</aside>
