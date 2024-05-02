List<CacheLanguage> cacheLanguageList = [CacheLanguage(), CacheKhmer()];

class CacheLanguage {
  String get nameApp => "Caching App";
}

class CacheKhmer implements CacheLanguage {
  @override
  String get nameApp => "កម្មវិធីរក្សាទុកទិន្នន័យ";
}
