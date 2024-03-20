.class public Lcom/android/settings/locale/LocaleSettingsHelper;
.super Ljava/lang/Object;
.source "LocaleSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/locale/LocaleSettingsHelper;


# instance fields
.field private mChinese2Pinyin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLocale:Ljava/lang/String;

.field private mLocaleInfoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/locale/LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocales:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smchinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/locale/LocaleSettingsHelper;->chinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    .line 34
    invoke-static {}, Lmiui/os/MiuiInit;->getCustVariants()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    return-void
.end method

.method private buildChinese2PinYin(Landroid/content/Context;)V
    .locals 4

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    .line 86
    iget-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/locale/LocaleInfo;

    .line 87
    iget-object v2, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/locale/LocaleSettingsHelper;->chinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static chinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 79
    iget-object v0, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/android/settings/locale/LocaleSettingsHelper;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settings/locale/LocaleSettingsHelper;->sInstance:Lcom/android/settings/locale/LocaleSettingsHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/settings/locale/LocaleSettingsHelper;

    invoke-direct {v0}, Lcom/android/settings/locale/LocaleSettingsHelper;-><init>()V

    sput-object v0, Lcom/android/settings/locale/LocaleSettingsHelper;->sInstance:Lcom/android/settings/locale/LocaleSettingsHelper;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/settings/locale/LocaleSettingsHelper;->sInstance:Lcom/android/settings/locale/LocaleSettingsHelper;

    return-object v0
.end method

.method private isChineseLocale()Z
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 93
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public constructLocaleList(Landroid/content/Context;)V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mCurrentLocale:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 101
    new-instance v4, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v5, Lcom/android/settings/locale/LocaleInfo;

    iget-object v6, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/android/settings/locale/LocaleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Turkey"

    .line 103
    invoke-virtual {v5}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "T\u00fcrkiye"

    .line 104
    invoke-virtual {v5, v4}, Lcom/android/settings/locale/LocaleInfo;->setDisplayName(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {v5}, Lcom/android/settings/locale/LocaleInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    new-instance v3, Lcom/android/settings/locale/LocaleInfo;

    iget-object v4, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->country_name:I

    invoke-virtual {v5}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings/locale/LocaleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    new-instance v4, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;

    invoke-direct {p0}, Lcom/android/settings/locale/LocaleSettingsHelper;->isChineseLocale()Z

    move-result v5

    invoke-direct {v4, p0, p1, v5}, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;-><init>(Lcom/android/settings/locale/LocaleSettingsHelper;Landroid/content/Context;Z)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/locale/LocaleSettingsHelper;->isChineseLocale()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/locale/LocaleSettingsHelper;->buildChinese2PinYin(Landroid/content/Context;)V

    goto :goto_2

    .line 123
    :cond_4
    iput-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    :goto_2
    return-void
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mCurrentLocale:Ljava/lang/String;

    return-object p0
.end method

.method public queryLocaleInfoItems(Landroid/os/AsyncTask;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/locale/LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 59
    iget-object v1, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocaleInfoItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/locale/LocaleInfo;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 63
    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 65
    invoke-direct {p0}, Lcom/android/settings/locale/LocaleSettingsHelper;->isChineseLocale()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 66
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_1

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public setLocales([Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/locale/LocaleSettingsHelper;->mLocales:[Ljava/lang/String;

    return-void
.end method
