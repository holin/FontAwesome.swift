//Generate at 2016-06-24 12:59:09 +0800

public enum FontAwesome: String {
	case Shouye = "\u{e601}"
	case Jiafensi = "\u{e606}"
	case Jiantou = "\u{e60b}"
	case Jiantou1 = "\u{e60c}"
	case Shangchuan = "\u{e603}"
	case Sousuo = "\u{e607}"
	case Jia = "\u{e608}"
	case Xyliulan = "\u{e613}"
	case Tongzhi = "\u{e605}"
	case Shoucang = "\u{e610}"
	case Chacha = "\u{e614}"
	case Hyjilu = "\u{e615}"
	case Zan = "\u{e611}"
	case Wode = "\u{e604}"
	case Xinfengxi = "\u{e609}"
	case Bujiantixing = "\u{e612}"
	case Xingming = "\u{e60e}"
	case Iconyanjingguan = "\u{e60a}"
	case Mima = "\u{e60f}"
	case Screening = "\u{e600}"
	case Saoyisao = "\u{e602}"
	case Unie644 = "\u{e60d}"
	case Lajitong = "\u{e616}"

	public static func fromCode(code: String) -> FontAwesome? {
		guard let raw = FontAwesomeIcons[code], icon = FontAwesome(rawValue: raw) else {
		    return nil
		}

		return icon
	}
}

public let FontAwesomeIcons = [
	"icon-shouye" : "\u{e601}",
	"icon-jiafensi" : "\u{e606}",
	"icon-jiantou" : "\u{e60b}",
	"icon-jiantou1" : "\u{e60c}",
	"icon-shangchuan" : "\u{e603}",
	"icon-sousuo" : "\u{e607}",
	"icon-jia" : "\u{e608}",
	"icon-xyliulan" : "\u{e613}",
	"icon-tongzhi" : "\u{e605}",
	"icon-shoucang" : "\u{e610}",
	"icon-chacha" : "\u{e614}",
	"icon-hyjilu" : "\u{e615}",
	"icon-zan" : "\u{e611}",
	"icon-wode" : "\u{e604}",
	"icon-xinfengxi" : "\u{e609}",
	"icon-bujiantixing" : "\u{e612}",
	"icon-xingming" : "\u{e60e}",
	"icon-iconyanjingguan" : "\u{e60a}",
	"icon-mima" : "\u{e60f}",
	"icon-screening" : "\u{e600}",
	"icon-saoyisao" : "\u{e602}",
	"icon-unie644" : "\u{e60d}",
	"icon-lajitong" : "\u{e616}",
]