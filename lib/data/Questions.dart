import 'package:quizapp/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
      question: "1-Flutter'da state nedir?",
      correctAnswer: 1,
      options: [
        "a) Kullanıcı arayüzü elemanları",
        "b) Widget'ların içinde depolanan geçici veri",
        "c) Yapılandırma dosyası",
        "d) Sadece Stateful widget'larda kullanılır"
      ]),
  QuizQuestion(
      question:
          "2-StatelessWidget ve StatefulWidget arasındaki temel fark nedir?",
      correctAnswer: 2,
      options: ["a) Renk", "b) Boyut", "c) Durum Takibi ", "d) Hız"]),
  QuizQuestion(
      question: "3-Flutter'da widget'ların durumu nasıl güncellenir?",
      correctAnswer: 0,
      options: [
        "a)  setState metodu kullanılarak",
        "b) Widget'ın içinde doğrudan değişiklik yaparak",
        "c) Build metodu çağrılarak ",
        "d) Güncellenemez, yeni widget oluşturulmalıdır"
      ]),
  QuizQuestion(
      question: "4-Flutter'da 'setState' metodu ne işe yarar?",
      correctAnswer: 0,
      options: [
        "a) Widget'ın durumunu günceller ve tekrar oluşturulmasını sağlar",
        "b) Widget'ı komple kaldırır",
        "c) Sadece arka planda çalışan işlemleri durdurur",
        "d) Yalnızca bir kez çağrılabilir",
      ]),
  QuizQuestion(
      question: "5-Flutter'da 'Provider' paketi nedir?",
      correctAnswer: 1,
      options: [
        "a) Sesli komutları yöneten bir paket",
        "b) State yönetimini kolaylaştıran bir paket",
        "c) Harita üzerinde konum hizmeti sağlayan bir paket",
        "d) Animasyonlu geçişleri sağlayan bir paket",
      ]),
  QuizQuestion(
    question: "6-Flutter nedir?",
    correctAnswer: 1,
    options: [
      "Bir programlama dilidir.",
      "Bir uygulama geliştirme framework'üdür.",
      "Bir veritabanı türüdür.",
      "Bir işletim sistemi türüdür.",
    ],
  ),
  QuizQuestion(
    question: "7-Flutter'da kullanılan programlama dili nedir?",
    correctAnswer: 3,
    options: [
      "Java",
      "Swift",
      "Kotlin",
      "Dart",
    ],
  ),
  QuizQuestion(
    question: "8-Flutter uygulamaları hangi platformlarda çalışabilir?",
    correctAnswer: 2,
    options: [
      "Sadece Android",
      "Sadece iOS",
      "Hem Android hem iOS",
      "Sadece web",
    ],
  ),
  QuizQuestion(
    question: "9-Flutter'da widget nedir?",
    correctAnswer: 1,
    options: [
      "Programlama dilinde bir veri türü",
      "Kullanıcı arayüzü öğelerini temsil eden bir yapı",
      "Veritabanı sorgusu",
      "Bir işlemci türü",
    ],
  ),
  QuizQuestion(
    question:
        "10-StatelessWidget ve StatefulWidget arasındaki temel fark nedir?",
    correctAnswer: 2,
    options: [
      "Renk",
      "Boyut",
      "Durum takibi",
      "Hız",
    ],
  ),
  QuizQuestion(
    question: "11-Flutter'da 'hot reload' ne işe yarar?",
    correctAnswer: 1,
    options: [
      "Uygulamayı hızlı bir şekilde yeniden başlatır.",
      "Kodu değiştirdikten sonra anında değişiklikleri gösterir.",
      "Sadece soğuk reload yapar.",
      "Belleği temizler.",
    ],
  ),
  QuizQuestion(
    question: "12-Flutter'da MaterialApp nedir?",
    correctAnswer: 3,
    options: [
      "Bir programlama dili",
      "Bir widget",
      "Bir veritabanı",
      "Bir uygulama teması",
    ],
  ),
  QuizQuestion(
    question:
        "13-Flutter'da stateless widget'lar kaç kez yeniden oluşturulabilir?",
    correctAnswer: 0,
    options: [
      "Bir kere",
      "İki kere",
      "Sınırsız sayıda",
      "Hiçbir zaman",
    ],
  ),
  QuizQuestion(
    question: "14-Flutter'da 'pubspec.yaml' dosyası ne işe yarar?",
    correctAnswer: 0,
    options: [
      "Paketleri ve uygulama yapılandırmasını tanımlar.",
      "UI tasarımını kontrol eder.",
      "Logları saklar.",
      "Veritabanını yönetir.",
    ],
  ),
  QuizQuestion(
    question: "15-Flutter'da 'Scaffold' widget'ı ne işe yarar?",
    correctAnswer: 0,
    options: [
      "UI elemanlarını düzenler.",
      "Ses dosyalarını çalar.",
      "Veritabanına bağlanır.",
      "Animasyonları kontrol eder.",
    ],
  ),
  QuizQuestion(
    question: "16-Flutter'da 'Widget Tree' nedir?",
    correctAnswer: 1,
    options: [
      "Yapılandırma dosyası",
      "Widget'ların hiyerarşik ağacı",
      "Önbellek",
      "Animasyon efektleri",
    ],
  ),
  QuizQuestion(
    question: "17-Flutter'da 'BuildContext' nedir?",
    correctAnswer: 3,
    options: [
      "Bir widget türü",
      "Bir programlama dilidir",
      "Bir uygulama teması",
      "Widget'lar arası iletişimi sağlayan bir nesne",
    ],
  ),
  QuizQuestion(
    question: "18-Flutter'da 'Flutter Doctor' komutu ne işe yarar?",
    correctAnswer: 1,
    options: [
      "Uygulamayı yayınlamak için gereken adımları gösterir.",
      "Flutter SDK'nın yüklü olup olmadığını kontrol eder.",
      "Dart dilinde kod analizi yapar.",
      "Kullanıcı arayüzünü test eder.",
    ],
  ),
  QuizQuestion(
    question: "19-Flutter'da 'ListView' nedir?",
    correctAnswer: 1,
    options: [
      "Sesli arama özelliği",
      "Liste görünümü sağlayan bir widget",
      "Ekranın alt kısmında bulunan menü",
      "Animasyonlu resim galerisi",
    ],
  ),
  QuizQuestion(
    question: "20-Flutter'da 'State Management' nedir?",
    correctAnswer: 0,
    options: [
      "Durum takibi",
      "Paket yönetimi",
      "Ekran yönetimi",
      "Veritabanı yönetimi",
    ],
  ),
];
