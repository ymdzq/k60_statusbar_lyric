.class public Lcom/android/settings/datetime/timezone/TimeZoneSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TimeZoneSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mPendingZonePickerRequestResult:Landroid/content/Intent;

.field private mSelectByRegion:Z

.field private mSelectedTimeZoneId:Ljava/lang/String;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;


# direct methods
.method public static synthetic $r8$lambda$12Zf7fyyMVP6YtGTCd-q_hBsASM(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onRegionZonePreferenceClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$LvPamkZ4VBe_wSwUKZ1RJ-iDdgg(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpwD8VUJD3igRs3N4IvS2leSZXc(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    return-void
.end method

.method public static synthetic $r8$lambda$yFuOIZpwCrlfUl6ahY3m4vtxfdk(Lcom/android/settings/datetime/timezone/TimeZoneSettings;Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 472
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$1;

    sget v1, Lcom/android/settings/R$xml;->time_zone_prefs:I

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 436
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "time_zone_region"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocaleRegionId()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTitle(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ":settings:show_fragment_title"

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static isFixedOffset(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Etc/GMT"

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Etc/UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private onFixedOffsetZoneChanged(Ljava/lang/String;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 314
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void
.end method

.method private onRegionZonePreferenceClicked()V
    .locals 3

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method private onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 211
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setupForCurrentTimeZone()V

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.settings.datetime.timezone.result_region_id"

    .line 280
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    .line 281
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 283
    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 284
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getPreferredTimeZoneIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 297
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/android/settings/datetime/DualClockHealper;->isDualClockMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/settings/datetime/DualClockHealper;->saveTimeZone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 309
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void

    .line 292
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown time zone id is selected: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeZoneSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 322
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "time_zone_region"

    if-nez p1, :cond_0

    .line 324
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Settings: Set time zone"

    .line 330
    invoke-static {p2, p1}, Landroid/app/timezonedetector/TimeZoneDetector;->createManualTimeZoneSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p1

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class p2, Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timezonedetector/TimeZoneDetector;

    .line 332
    invoke-interface {p0, p1}, Landroid/app/timezonedetector/TimeZoneDetector;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    return-void
.end method

.method private setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    const-class v1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 272
    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 276
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setDisplayedRegion(Ljava/lang/String;)V
    .locals 1

    .line 249
    const-class v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {v0, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object p2

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 256
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    .line 258
    const-class v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {v1, p2}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getPreferredTimeZoneIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 261
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setClickable(Z)V

    .line 264
    const-class p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method private setSelectByRegion(Z)V
    .locals 2

    .line 399
    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    const-string/jumbo v0, "time_zone_region_preference_category"

    .line 400
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    const-string/jumbo v0, "time_zone_fixed_offset_preference_category"

    .line 402
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getRegionIds()Ljava/util/Set;

    move-result-object v0

    .line 409
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 410
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p1, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    return-void

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 422
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setupForCurrentTimeZone()V
    .locals 1

    .line 380
    invoke-static {}, Lcom/android/settings/datetime/DualClockHealper;->isDualClockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datetime/DualClockHealper;->getDualTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    return-void
.end method

.method private startFixedOffsetPicker()V
    .locals 3

    .line 232
    const-class v0, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method private startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 242
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 244
    invoke-virtual {p1, p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private startRegionPicker()V
    .locals 3

    .line 221
    const-class v0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    .line 110
    new-instance v1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 115
    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v3, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 118
    new-instance v3, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance p1, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v3, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryCodesForZoneId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 443
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 446
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    if-eqz p3, :cond_2

    .line 449
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    .line 453
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "TimeZoneSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x203

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 95
    sget p0, Lcom/android/settings/R$xml;->time_zone_prefs:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string/jumbo v0, "time_zone_fixed_offset_preference_category"

    .line 169
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 170
    invoke-static {}, Lcom/android/settings/datetime/DualClockHealper;->isDualClockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "com.android.settings.datetime.timezone.result_time_zone_id"

    .line 193
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 195
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onFixedOffsetZoneChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez p1, :cond_3

    .line 186
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    goto :goto_0

    .line 188
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "time_zone_region_preference_category"

    .line 132
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    const-string/jumbo p1, "time_zone_fixed_offset_preference_category"

    .line 134
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroidx/preference/PreferenceCategory;Z)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1, v0, v2, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datetime/DualClockHealper;->initDualClockMode(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->initTitle(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 338
    invoke-static {}, Lcom/android/settings/datetime/DualClockHealper;->isDualClockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 342
    sget v1, Lcom/android/settings/R$string;->zone_menu_by_region:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 343
    sget v1, Lcom/android/settings/R$string;->zone_menu_by_offset:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 344
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    return v1

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 350
    invoke-static {}, Lcom/android/settings/datetime/DualClockHealper;->isDualClockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 355
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 356
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method setTimeZoneData(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    return-void
.end method
