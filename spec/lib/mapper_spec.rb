#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'

class Mapper
  def self.run
    `cat data/* | ruby lib/mapper.rb`
  end
end

describe Mapper do
  it 'should output the words and the count one pairs' do
    expect = "曲\t1\n好き\t1\n人\t1\n名前\t1\n説明\t1\nmnishi\t1\n全体\t1\n人間\t1\n眼球\t1\n寿命\t1\n年\t1\n電機\t1\n業界\t1\n不可避\t1\n問題\t1\n医師\t1\n研究\t1\n者\t1\n国際\t1\n会議\t1\n開催\t1\nTech\t1\nhttp\t1\nOjEgHkyRJg\t1\n水\t1\n勢\t1\n毎日\t1\nhttp\t1\nJyhjq\t1\nmxEt\t1\n東京\t1\n進撃\t1\n巨人\t1\n夏休み\t1\n月\t1\n日\t1\n月\t1\n月\t1\n夏\t1\n年\t1\n宿題\t1\n進撃\t1\n劣化\t1\n月\t1\n何\t1\n番\t1\n塩\t1\n以外\t1\n水族館\t1\n宙吊り\t1\n編集\t1\n付き合い\t1\n夢\t1\n秘訣\t1\n集約\t1\nCuriosity\t1\n好奇\t1\n心\t1\nConfidence\t1\n自信\t1\nCourage\t1\n勇気\t1\nConstancy\t1\n継続\t1\n創業\t1\n者\t1\n名言\t1\n受験\t1\n勉強\t1\nmattn\t1\n便利\t1\n時代\t1\n人\t1\n名前\t1\n瞬間\t1\n感\t1\n意味\t1\n年\t1\n前\t1\n画像\t1\nhttp\t1\niIQive\t1\n時間\t1\n胸\t1\n恋愛\t1\ntargma\t1\nGEL\t1\n鹿島\t1\n伝統\t1\n封印\t1\n強烈\t1\n個性\t1\n出現\t1\n節\t1\n横浜\t1\n戦\t1\n月\t1\n日\t1\nhttp\t1\nrwEKVGBPV\t1\nantlers\t1\n予想\t1\n以上\t1\n取材\t1\n先\t1\n移動\t1\nhttps\t1\ndIyXoKUlJ\t1\nREMOccCON\t1\n今日\t1\n個人\t1\n的\t1\n衝撃波\t1\n分間\t1\n気付け\t1\nLED\t1\n勝也\t1\nhttp\t1\nYDJdixY\t1\nThis\t1\nsite\t1\nswear\t1\nlmfao\t1\nhttp\t1\nLYcIWkg\t1\ngyokuran\t1\n全部\t1\n興味\t1\n範囲\t1\n場所\t1\nOsmanli\t1\nSister\t1\n兄ちゃん\t1\n私\t1\n兄ちゃん\t1\n山\t1\nGorge\t1\n吉野\t1\n大峯\t1\n千本\t1\n口\t1\nhttp\t1\nmnV\t1\nJkLzhw\t1\n布団\t1\n怒り\t1\nTakashi\t1\nShiina\t1\n気\t1\n巨大\t1\n白\t1\n理解\t1\nhttp\t1\nGyJuw\t1\nお前\t1\n宇佐美\t1\n技術\t1\n才能\t1\n宇佐美\t1\n心配\t1\nfootballnet\t1\nhttp\t1\nfoTRvMF\t1\n脳\t1\n内\t1\n直接的\t1\nGoogle\t1\n従業\t1\n員\t1\n使い方\t1\nhttp\t1\nwshgfSxMC\t1\n百貨店\t1\nmzp\t1\n人\t1\nfrance\t1\nValo\t1\n日本\t1\niTunes\t1\nhttp\t1\nzfvcamovL\t1\n本\t1\n私\t1\n魔法\t1\n少女\t1\nodenko\t1\n的\t1\n便乗\t1\n案件\t1\n笑\t1\nBiz\t1\nSakuma\t1\n地下鉄\t1\n渋谷\t1\n新宿\t1\n伊勢丹\t1\n高島屋\t1\n歯\t1\nnoringojp\t1\nGRAND\t1\nKIRIN\t1\nBEERtofriends\t1\nhttp\t1\nLbvmpVt\t1\nhttp\t1\nkzC\t1\ndbYQ\t1\nkokonokotoba\t1\n悲しみ\t1\n苦痛\t1\n人\t1\n心\t1\n土壌\t1\n心\t1\n心\t1\n苦情\t1\n努力\t1\n生活\t1\n日\t1\nTakashi\t1\nShiina\t1\n正直\t1\n自分\t1\n一眼\t1\n大砲\t1\n人\t1\n暗黒\t1\n道具\t1\n正当\t1\n健全\t1\n行為\t1\nUbuntu\t1\n失敗\t1\n未来\t1\nhttp\t1\nfZxGers\t1\nasciijpeditors\t1\n画像\t1\nhttp\t1\nHRTVt\t1\nNishimura\t1\n糞\t1\n先生\t1\n黄昏\t1\n運営\t1\nお手伝い\t1\n募集\t1\n当日\t1\nお手伝い\t1\n方\t1\nzussar\t1\n関東\t1\nFirefox\t1\n勉強\t1\n会\t1\nごった煮\t1\n群雄割拠\t1\n先\t1\nhttp\t1\nFEizo\t1\nRObK\t1\nfxos\t1\n旅行\t1\nsdxc\t1\n群馬\t1\n県\t1\n田舎\t1\n呼ばわり\t1\nYahoo\t1\n検索\t1\nYahoo\t1\nJAPAN\t1\nhttp\t1\nfwOV\t1\nqueue\t1\n煙管\t1\n火傷\t1\n紙巻\t1\n後\t1\n夜戦\t1\n活躍\t1\n決断\t1\n沖\t1\n夜戦\t1\nhttp\t1\nmllLxiuUTm\t1\nyoutube\t1\ngodspeed\t1\nhttp\t1\nwbgY\t1\nwwwwwwwwwwww\t1\n種類\t1\n忘れ物\t1\n部屋\t1\n往復\t1\n日\t1\n憂鬱\t1\n会社\t1\ntokotonhimatubu\t1\n未来\t1\n服\t1\n通行人\t1\n今\t1\n西暦\t1\n何\t1\n年\t1\n通行人\t1\n後\t1\n実験\t1\n成功\t1\nkazami\t1\n冷蔵庫\t1\n系\t1\n発見\t1\n家庭\t1\n用\t1\n冷蔵庫\t1\n人\t1\n想像\t1\n版\t1\n涼\t1\n宮\t1\n完結\t1\n年\t1\n年間\t1\n幕\t1\nhttp\t1\nQjk\t1\n年\t1\nyukacco\t1\n今日\t1\n指輪\t1\n嫌い\t1\n嫌い\t1\n通常\t1\n沢山\t1\n気味\t1\n笑\t1\n午前\t1\n糖\t1\n横\t1\n目\t1\n世界\t1\n昼\t1\n福\t1\n楼\t1\n藤沢\t1\n市\t1\n神奈川\t1\n県\t1\nhttp\t1\nXGq\t1\n昨日\t1\ntokyoculture\t1\n昨日\t1\n野球\t1\n大喜\t1\n利\t1\n粘着\t1\n野球\t1\n球場\t1\n激\t1\n盛り上がり\t1\n来店\t1\n感謝\t1\nculcul\t1\nhttp\t1\nNZC\t1\ngmfwn\t1\n萩尾\t1\n望都\t1\n版\t1\n宇宙船\t1\n大好き\t1\n俺\t1\n冷蔵庫\t1\n夏\t1\nintegrity\t1\n予算\t1\nhttp\t1\nSHxjoe\t1\nNge\t1\n皆\t1\n性格\t1\nahiru\t1\n場合\t1\n基本\t1\n的\t1\n声\t1\n代わり\t1\n倍音\t1\n自分\t1\naoi\t1\nmokei\t1\n猥褻\t1\n残虐\t1\n発禁\t1\n人\t1\n深夜\t1\n写真\t1\n演習\t1\n批判\t1\n戦車\t1\n影響\t1\n大人気\t1\n内容\t1\n戦車\t1\n公開\t1\n演習\t1\n各国\t1\n方々\t1\n横\t1\nhttp\t1\nvsNuYa\t1\nIIw\t1\nhttp\t1\nHsJqrkMkr\t1\n宇宙船\t1\n小学館\t1\n文庫\t1\n萩尾\t1\n望都\t1\nhttp\t1\ntQHI\t1\nmXf\t1\nvia\t1\nAmazonJP\t1\n夏\t1\n横\t1\n鎮俺\t1\n提督\t1\nhttp\t1\nObltRPQPuP\t1\nsue\t1\n新刊\t1\nお知らせ\t1\nDVD\t1\nvol\t1\nhttp\t1\nPmZV\t1\nKqAl\t1\n新刊\t1\n魔神\t1\n伝\t1\n月\t1\n日\t1\nBOX\t1\n化\t1\nWatch\t1\nhttp\t1\nxJbeeouoCV\t1\nvia\t1\navwatch\t1\nshutdown\t1\n評価\t1\n主人公\t1\nhariko\t1\n人気\t1\n今日\t1\nMOCO\t1\n投稿\t1\n先輩\t1\nhttp\t1\nVfsilvUR\t1\n同人\t1\n新刊\t1\n特設\t1\nhttp\t1\nsMVqUZd\t1\n無意味\t1\n報告\t1\n表情\t1\n大人\t1\n涙腺\t1\n写真\t1\nhttp\t1\nCMNtfCX\t1\nnishida\t1\n安倍\t1\n総理\t1\n本\t1\n時期\t1\n人道的\t1\n介入\t1\n名義\t1\n米国\t1\n筆頭\t1\n西側\t1\n諸国\t1\n介入\t1\n時期\t1\n事務\t1\n総長\t1\n歴史\t1\n発言\t1\n国連\t1\n分担\t1\n拠出\t1\n凍結\t1\n満点\t1\ndaitojimari\t1\n維新\t1\n日銀\t1\n歴史\t1\n考察\t1\n日銀\t1\n日本橋\t1\n村\t1\n日銀\t1\n日\t1\n戦争\t1\n動き\t1\n丸の内\t1\n誕生\t1\nshima\t1\nfat\t1\nday\t1\n月\t1\n日\t1\n日\t1\n時半\t1\n時半\t1\n時\t1\n時\t1\n八尾\t1\nday\t1\nhttp\t1\nwwwwwww\t1\nbreath\t1\nDDR\t1\nPiX\t1\n入り\t1\n担当\t1\n曲\t1\nCHAOS\t1\n移植\t1\n阿鼻叫喚\t1\n最近\t1\n学校\t1\n一番\t1\n会話\t1\nALINMEISEN\t1\n俺\t1\n俺\t1\n周囲\t1\n自動\t1\n度\t1\n不毛\t1\n昼\t1\nwww\t1\nhttp\t1\nSFsjT\t1\nAnklang\t1\nwwwwwwwwwwwwwwwwwwwwwwwww\t1\n"
    Mapper.run.should == expect
  end
end
