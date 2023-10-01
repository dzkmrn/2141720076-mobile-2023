# Week 05 - Flutter Fundamental - Bagian 1

Di minggu kelima ini, mahasiswa akan mempelajari dasar pustaka Flutter. 

## Penulis

>> [@dzkmrn](https://www.github.com/dzkmrn)

## Tugas Praktikum

### Praktikum 1: Membuat Project Flutter Baru

1. Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

2. Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

3. Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

4. Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

    **Screenshot File Project:** 
    <img src = "docs/ss01.png">

### Praktikum 2: Membuat Repository GitHub dan Laporan Praktikum

1. Karena folder ini sudah berada pada repository "21417200760-mobile-2023" di Github saya, maka hanya perlu push project ini ke repo tersebut.

    **Push ke repo**

    <img src = "docs/ss02.png">

    **Bukti Debug**
    <img src = "docs/ss04.png">

    **Bukti telah ter-push**
    
    <img src = "docs/ss03.png">

### Praktikum 3: Menerapkan Dasar Widget

1. Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart. Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

    **OUTPUT:**

    <img src = "docs/ss05.png">

2. Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

    ```dart 
    import 'package:flutter/material.dart';

    class MyImageWidget extends StatelessWidget {
    const MyImageWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const Image(
        image: AssetImage("logo_polinema.jpg")
        );
    }
    }
    ```

    Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

    ```dart
    flutter:
        assets:
            - logo_polinema.jpg
    ```

3. Liat hasilnya

    **OUTPUT:**
    <img src = "docs/ss06.png">


### Praktikum 4: Menerapkan Widget Material Design dan iOS Cupertino

1. Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

    ```dart
    return MaterialApp(
        home: Container(
            margin: const EdgeInsets.only(top: 30),
            color: Colors.white,
            child: Column(
            children: <Widget>[
                CupertinoButton(
                child: const Text("Contoh button"),
                onPressed: () {},
                ),
                const CupertinoActivityIndicator(),
            ],
            ),
        ),
        );
    ```
    **OUTPUT:**
    
    <img src = "docs/ss09.png">

2. Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton. Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

    ```dart
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
            onPressed: () {
                // Add your onPressed code here!
            },
            child: const Icon(Icons.thumb_up),
            backgroundColor: Colors.pink,
            ),
        ),
        );
    ```

3. Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design. Ubah isi kode main.dart seperti berikut.

    ```dart
    import 'package:flutter/material.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'My Increment App'),
        );
    }
    }

    class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
        _counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
        ),
        body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                const Text(
                'You have pushed the button this many times:',
                ),
                Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
                ),
            ],
            ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
            height: 50.0,
            ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
        ), 
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
    }
    }
    ```

    **OUTPUT:**

    <img src = "docs/ss10.png">

4. Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog. Ubah isi kode main.dart seperti berikut.

    ```dart
    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
        home: Scaffold(
            body: MyLayout(),
        ),
        );
    }
    }

    class MyLayout extends StatelessWidget {
    const MyLayout({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            child: const Text('Show alert'),
            onPressed: () {
            showAlertDialog(context);
            },
        ),
        );
    }
    }

    showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () {
        Navigator.pop(context);
        },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        title: const Text("My title"),
        content: const Text("This is my message."),
        actions: [
        okButton,
        ],
    );

    // show the dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
        return alert;
        },
    );
    }
    ```

    **OUTPUT:**

    <img src = "docs/ss10.png">

5. Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField. Contoh penggunaan TextField widget adalah sebagai berikut:

    ```dart
    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Contoh TextField")),
            body: const TextField(
            obscureText: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama',
            ),
            ),
        ),
        );
    }
    }
    ```

    **OUTPUT:**
    
    <img src = "docs/ss08.png">

6. Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

    ```dart
    import 'dart:async';
    import 'package:flutter/material.dart';

    void main() => runApp(const MyApp());

    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
        title: 'Contoh Date Picker',
        home: MyHomePage(title: 'Contoh Date Picker'),
        );
    }
    }

    class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
    // Variable/State untuk mengambil tanggal
    DateTime selectedDate = DateTime.now();

    //  Initial SelectDate FLutter
    Future<void> _selectDate(BuildContext context) async {
        // Initial DateTime FIinal Picked
        final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(2015, 8),
            lastDate: DateTime(2101));
        if (picked != null && picked != selectedDate) {
        setState(() {
            selectedDate = picked;
        });
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
        ),
        body: Center(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                const SizedBox(
                height: 20.0,
                ),
                ElevatedButton(
                onPressed: () => {
                    _selectDate(context),
                    // ignore: avoid_print
                    print(selectedDate.day + selectedDate.month + selectedDate.year)
                },
                child: const Text('Pilih Tanggal'),
                ),
            ],
            ),
        ),
        );
    }
    }
    ```

    **OUTPUT:**

    <img src = "docs/ss08a.png">

    <img src = "docs/ss08b.png">

### Tugas Praktikum
1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

    >> Jawaban: Sudah selesai dikerjakan di bagian-bagian sebelumnya. 

2. Pada praktikum 4 mulai dari Langkah 3 sampai 6, buatlah file widget tersendiri di folder basic_widgets, kemudian pada file main.dart cukup melakukan import widget sesuai masing-masing langkah tersebut!

    >> Jawaban: Disini, saya membuat dialog_widget dan textfield_widget di dalam file basic_widgets, untuk kemudian di-impor ke main dart dan dipanggil function-nya di dalam MyHomePage(), kemudian untuk datetime-nya sendiri dimasukkan ke dalam widget MyHomePage() juga. Sehingga hasil akhirnya seperti berikut: 

    <img src = docs/hape.gif>

3. Selesaikan Codelabs: Your first Flutter app, lalu buatlah laporan praktikumnya dan push ke repository GitHub Anda!
README.md berisi: capture hasil akhir tiap praktikum (side-by-side, bisa juga berupa file GIF agar terlihat proses perubahan ketika ada aksi dari pengguna) di browser dan perangkat fisik (device) dengan menampilkan NIM dan Nama Anda sebagai ciri pekerjaan Anda. Jika mode developer di perangkat HP Anda belum aktif, silakan cari di internet cara mengaktifkannya!

    >> Jawaban: 

4. Kumpulkan berupa link repository/commit GitHub Anda ke tautan spreadsheet yang telah disepakati oleh dosen!

    >> Jawaban: Sudah, terima kasih ^^






















