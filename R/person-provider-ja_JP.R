# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/person/ja_JP/__init__.py

person_formats_female_ja_jp <- c(
  '{{last_name}} {{first_name_female}}'
)

person_formats_male_ja_jp <- c(
  '{{last_name}} {{first_name_male}}'
)

person_formats_ja_jp <- c(
  person_formats_male_ja_jp,
  person_formats_female_ja_jp
)

person_first_names_female_ja_jp <- c(
  "\u660e\u7f8e",
  "\u3042\u3059\u304b",
  "\u9999\u7e54",
  "\u52a0\u5948",
  "\u304f\u307f\u5b50",
  "\u3055\u3086\u308a",
  "\u77e5\u5b9f",
  "\u5343\u4ee3",
  "\u76f4\u5b50",
  "\u4e03\u590f",
  "\u82b1\u5b50",
  "\u6625\u9999",
  "\u771f\u7dbe",
  "\u821e",
  "\u7f8e\u52a0\u5b50",
  "\u5e79",
  "\u6843\u5b50",
  "\u7d50\u8863",
  "\u88d5\u7f8e\u5b50",
  "\u967d\u5b50",
  "\u91cc\u4f73"
)

person_first_names_male_ja_jp <- c(
  "\u6643",
  "\u7be4\u53f8",
  "\u6cbb",
  "\u548c\u4e5f",
  "\u4eac\u52a9",
  "\u5065\u4e00",
  "\u4fee\u5e73",
  "\u7fd4\u592a",
  "\u6df3",
  "\u8061\u592a\u90ce",
  "\u592a\u4e00",
  "\u592a\u90ce",
  "\u62d3\u771f",
  "\u7ffc",
  "\u667a\u4e5f",
  "\u76f4\u6a39",
  "\u76f4\u4eba",
  "\u82f1\u6a39",
  "\u6d69",
  "\u5b66",
  "\u5145",
  "\u7a14",
  "\u88d5\u6a39",
  "\u88d5\u592a",
  "\u5eb7\u5f18",
  "\u967d\u4e00",
  "\u6d0b\u4ecb",
  "\u4eae\u4ecb",
  "\u6dbc\u5e73",
  "\u96f6"
)

person_first_names_ja_jp <- c(
  person_first_names_male_ja_jp,
  person_first_names_female_ja_jp
)

person_last_names_ja_jp <- c(
  "\u9752\u7530",
  "\u9752\u5c71",
  "\u77f3\u7530",
  "\u4e95\u9ad8",
  "\u4f0a\u85e4",
  "\u4e95\u4e0a",
  "\u5b87\u91ce",
  "\u6c5f\u53e4\u7530",
  "\u5927\u57a3",
  "\u52a0\u85e4",
  "\u52a0\u7d0d",
  "\u559c\u5d8b",
  "\u6728\u6751",
  "\u6850\u5c71",
  "\u5de5\u85e4",
  "\u5c0f\u6cc9",
  "\u5c0f\u6797",
  "\u8fd1\u85e4",
  "\u6589\u85e4",
  "\u5742\u672c",
  "\u4f50\u3005\u6728",
  "\u4f50\u85e4",
  "\u7b39\u7530",
  "\u9234\u6728",
  "\u6749\u5c71",
  "\u9ad8\u6a4b",
  "\u7530\u4e2d",
  "\u7530\u8fba",
  "\u6d25\u7530",
  "\u4e2d\u5cf6",
  "\u4e2d\u6751",
  "\u6e1a",
  "\u4e2d\u6d25\u5ddd",
  "\u897f\u4e4b\u5712",
  "\u91ce\u6751",
  "\u539f\u7530",
  "\u6d5c\u7530",
  "\u5ee3\u5ddd",
  "\u85e4\u672c",
  "\u677e\u672c",
  "\u4e09\u5b85",
  "\u5bae\u6ca2",
  "\u6751\u5c71",
  "\u5c71\u5cb8",
  "\u5c71\u53e3",
  "\u5c71\u7530",
  "\u5c71\u672c",
  "\u5409\u7530",
  "\u5409\u672c",
  "\u82e5\u677e",
  "\u6e21\u8fba"
)

person_kana_formats_ja_jp <- c(
  '{{last_kana_name}} {{first_kana_name_female}}',
  '{{last_kana_name}} {{first_kana_name_male}}'
)

person_first_kana_names_female_ja_jp <- c(
  "\u30a2\u30ad\u30e9",
  "\u30a2\u30b1\u30df",
  "\u30a2\u30b9\u30ab",
  "\u30ab\u30aa\u30ea",
  "\u30ab\u30ca",
  "\u30af\u30df\u30b3",
  "\u30b5\u30e6\u30ea",
  "\u30c1\u30e8",
  "\u30c4\u30d0\u30b5",
  "\u30c8\u30e2\u30df",
  "\u30ca\u30aa\u30b3",
  "\u30ca\u30ca\u30ab",
  "\u30cf\u30ca\u30b3",
  "\u30cf\u30eb\u30ab",
  "\u30de\u30a2\u30e4",
  "\u30de\u30a4",
  "\u30df\u30ad",
  "\u30e2\u30e2\u30b3",
  "\u30e6\u30a4",
  "\u30e8\u30a6\u30b3",
  "\u30e6\u30df\u30b3",
  "\u30ec\u30a4",
  "\u30ea\u30ab"
)

person_first_kana_names_male_ja_jp <- c(
  "\u30a2\u30ad\u30e9",
  "\u30a2\u30c4\u30b7",
  "\u30aa\u30b5\u30e0",
  "\u30ad\u30e7\u30a6\u30b9\u30b1",
  "\u30b1\u30f3\u30a4\u30c1",
  "\u30b8\u30e5\u30f3",
  "\u30bd\u30a6\u30bf\u30ed\u30a6",
  "\u30bf\u30a4\u30c1",
  "\u30bf\u30af\u30de",
  "\u30bf\u30ed\u30a6",
  "\u30c4\u30d0\u30b5",
  "\u30c8\u30e2\u30e4",
  "\u30ca\u30aa\u30ad",
  "\u30ca\u30aa\u30c8",
  "\u30d2\u30c7\u30ad",
  "\u30d2\u30ed\u30b7",
  "\u30de\u30ca\u30d6",
  "\u30df\u30c4\u30eb",
  "\u30df\u30ce\u30eb",
  "\u30d2\u30ed\u30ad",
  "\u30e6\u30a6\u30bf",
  "\u30e4\u30b9\u30d2\u30ed",
  "\u30e8\u30a6\u30a4\u30c1",
  "\u30e8\u30a6\u30b9\u30b1",
  "\u30ea\u30e7\u30a6\u30b9\u30b1",
  "\u30ea\u30e7\u30a6\u30d8\u30a4"
)

person_first_kana_names_ja_jp <- c(
  person_first_kana_names_male_ja_jp,
  person_first_kana_names_female_ja_jp
)

person_last_kana_names_ja_jp <- c(
  "\u30a2\u30aa\u30bf",
  "\u30a2\u30aa\u30e4\u30de",
  "\u30a4\u30b7\u30c0",
  "\u30a4\u30c0\u30ab",
  "\u30a4\u30c8\u30a6",
  "\u30a6\u30ce",
  "\u30a8\u30b3\u30c0",
  "\u30aa\u30aa\u30ac\u30ad",
  "\u30ab\u30ce\u30a6",
  "\u30ab\u30ce\u30a6",
  "\u30ad\u30b8\u30de",
  "\u30ad\u30e0\u30e9",
  "\u30ad\u30ea\u30e4\u30de",
  "\u30af\u30c9\u30a6",
  "\u30b3\u30a4\u30ba\u30df",
  "\u30b3\u30d0\u30e4\u30b7",
  "\u30b3\u30f3\u30c9\u30a6",
  "\u30b5\u30a4\u30c8\u30a6",
  "\u30b5\u30ab\u30e2\u30c8",
  "\u30b5\u30b5\u30ad",
  "\u30b5\u30c8\u30a6",
  "\u30b5\u30b5\u30c0",
  "\u30b9\u30ba\u30ad",
  "\u30b9\u30ae\u30e4\u30de",
  "\u30bf\u30ab\u30cf\u30b7",
  "\u30bf\u30ca\u30ab",
  "\u30bf\u30ca\u30d9",
  "\u30c4\u30c0",
  "\u30c4\u30c1\u30e4",
  "\u30ca\u30ab\u30b8\u30de",
  "\u30ca\u30ab\u30e0\u30e9",
  "\u30ca\u30ae\u30b5",
  "\u30ca\u30ab\u30c4\u30ac\u30ef",
  "\u30cb\u30b7\u30ce\u30bd\u30ce",
  "\u30ce\u30e0\u30e9",
  "\u30cf\u30e9\u30c0",
  "\u30cf\u30de\u30c0",
  "\u30d2\u30ed\u30ab\u30ef",
  "\u30d5\u30b8\u30e2\u30c8",
  "\u30de\u30c4\u30e2\u30c8",
  "\u30df\u30e4\u30b1",
  "\u30df\u30e4\u30b6\u30ef",
  "\u30e0\u30e9\u30e4\u30de",
  "\u30e4\u30de\u30ae\u30b7",
  "\u30e4\u30de\u30b0\u30c1",
  "\u30e4\u30de\u30c0",
  "\u30e4\u30de\u30e2\u30c8",
  "\u30e8\u30b7\u30c0",
  "\u30e8\u30b7\u30e2\u30c8",
  "\u30ef\u30ab\u30de\u30c4",
  "\u30ef\u30bf\u30ca\u30d9"
)

person_romanized_formats_ja_jp <- c(
  '{{first_romanized_name_female}} {{last_romanized_name}}',
  '{{first_romanized_name_male}} {{last_romanized_name}}'
)

person_first_romanized_names_female_ja_jp <- c(
  'Akira', 'Akemi', 'Asuka',
  'Kaori', 'Kana', 'Kumiko',
  'Sayuri',
  'Chiyo', 'Tsubasa', 'Tomomi',
  'Naoko', 'Nanaka',
  'Hanako', 'Haruka',
  'Maaya', 'Mai', 'Miki', 'Momoko',
  'Yui', 'Yoko', 'Yumiko',
  'Rei', 'Rika'
)

person_first_romanized_names_male_ja_jp <- c(
  'Akira', 'Atsushi', 'Osamu',
  'Kyosuke', 'Kenichi',
  'Jun', 'Sotaro',
  'Taichi', 'Takuma', 'Taro', 'Tsubasa', 'Tomoya',
  'Naoki', 'Naoto',
  'Hideki', 'Hiroshi',
  'Manabu', 'Mituru', 'Minoru', 'Hiroki',
  'Yuta', 'Yasuhiro', 'Yoichi', 'Yosuke',
  'Ryosuke', 'Ryohei'
)

person_first_romanized_names_ja_jp <- c(
  person_first_romanized_names_male_ja_jp,
  person_first_romanized_names_female_ja_jp
)

person_last_romanized_names_ja_jp <- c(
  'Aota', 'Aoyama', 'Ishida', 'Idaka', 'Ito', 'Uno', 'Ekoda', 'Ogaki',
  'Kato', 'Kano', 'Kijima', 'Kimura', 'Kiriyama', 'Kudo', 'Koizumi', 'Kobayashi', 'Kondo',
  'Saito', 'Sakamoto', 'Sasaki', 'Sato', 'Sasada', 'Suzuki', 'Sugiyama',
  'Takahashi', 'Tanaka', 'Tanabe', 'Tsuda', 'Tsuchiya',
  'Nakajima', 'Nakamura', 'Nagisa', 'Nakatsugawa', 'Nishinosono', 'Nomura',
  'Harada', 'Hamada', 'Hirokawa', 'Fujimoto',
  'Matsumoto', 'Miyake', 'Miyagawa', 'Murayama',
  'Yamagishi', 'Yamaguchi', 'Yamada', 'Yamamoto', 'Yoshida', 'Yoshimoto',
  'Wakamatsu', 'Watanabe'
)

funs_ja_jp <- list(
  kana_name = function() {
    pattern = super$random_element(self$kana_formats)
    self$generator$parse(pattern)
  },

  first_kana_name = function() {
    super$random_element(self$first_kana_names)
  }
)

# @classmethod
# def first_kana_name_female(cls):
#     return cls.random_element(cls.first_kana_names_female)

# @classmethod
# def first_kana_name_male(cls):
#     return cls.random_element(cls.first_kana_names_male)

# @classmethod
# def last_kana_name(cls):
#     return cls.random_element(cls.last_kana_names)

# def romanized_name(self):
#     '''
#     @example 'Akira Aota'
#     '''
#     pattern = self.random_element(self.romanized_formats)
#     return self.generator.parse(pattern)

# @classmethod
# def first_romanized_name(cls):
#     '''
#     @example 'Akira'
#     '''
#     return cls.random_element(cls.first_romanized_names)

# @classmethod
# def first_romanized_name_female(cls):
#     return cls.random_element(cls.first_romanized_names_female)

# @classmethod
# def first_romanized_name_male(cls):
#     return cls.random_element(cls.first_romanized_names_male)

# @classmethod
# def last_romanized_name(cls):
#     '''
#     @example 'Aota'
#     '''
#     return cls.random_element(cls.last_romanized_names)
