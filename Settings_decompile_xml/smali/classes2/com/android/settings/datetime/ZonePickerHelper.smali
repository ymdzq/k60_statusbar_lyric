.class public Lcom/android/settings/datetime/ZonePickerHelper;
.super Ljava/lang/Object;
.source "ZonePickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;,
        Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;
    }
.end annotation


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

.field private mSelectedZoneInfo:Lcom/android/settings/datetime/TimeZoneObj;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSortMode:I

.field private mTimezoneItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/TimeZoneObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "timezone_sort_mode"

    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSortMode:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/ZonePickerHelper;->constructTimeZoneList(Landroid/content/Context;)V

    return-void
.end method

.method private buildChinese2PinYin(Landroid/content/Context;)V
    .locals 5

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    .line 128
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/TimeZoneObj;

    .line 129
    invoke-static {p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 132
    iget-object v4, v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isChineseLocale()Z
    .locals 1

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 121
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 122
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 123
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private sort(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 56
    new-instance p1, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;-><init>(Lcom/android/settings/datetime/ZonePickerHelper;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;-><init>(Lcom/android/settings/datetime/ZonePickerHelper;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSelectedZoneInfo:Lcom/android/settings/datetime/TimeZoneObj;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSelectedZoneInfo:Lcom/android/settings/datetime/TimeZoneObj;

    invoke-interface {p1, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string p0, "ZonePickerHelper"

    const-string p1, "Cannot find current timezone info"

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public constructTimeZoneList(Landroid/content/Context;)V
    .locals 9

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZonesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "name"

    .line 97
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "gmt"

    .line 98
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "id"

    .line 99
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "offset"

    .line 100
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/android/settings/R$string;->current_zone:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v7, Lcom/android/settings/datetime/TimeZoneObj;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/android/settings/datetime/TimeZoneObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSelectedZoneInfo:Lcom/android/settings/datetime/TimeZoneObj;

    goto :goto_1

    .line 106
    :cond_0
    iget-object v7, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/datetime/TimeZoneObj;

    invoke-direct {v8, v4, v5, v6, v3}, Lcom/android/settings/datetime/TimeZoneObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSortMode:I

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/ZonePickerHelper;->sort(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePickerHelper;->isChineseLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/ZonePickerHelper;->buildChinese2PinYin(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    :goto_2
    return-void
.end method

.method public getSortMode()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSortMode:I

    return p0
.end method

.method public queryTimezoneItems(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/TimeZoneObj;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mTimezoneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datetime/TimeZoneObj;

    .line 76
    invoke-virtual {v3}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePickerHelper;->isChineseLocale()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    iget-object v5, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mChinese2Pinyin:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :cond_2
    if-eqz v5, :cond_1

    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public setSortMode(I)V
    .locals 1

    .line 45
    iput p1, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSortMode:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/ZonePickerHelper;->sort(I)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "timezone_sort_mode"

    iget p0, p0, Lcom/android/settings/datetime/ZonePickerHelper;->mSortMode:I

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
