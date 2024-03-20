.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryUsageBreakdownController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final APP_LIST_PREFERENCE_KEY:Ljava/lang/String; = "app_list"

.field private static final EMPTY_ENTRY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOOTER_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_footer"

.field private static final PACKAGE_NAME_NONE:Ljava/lang/String; = "none"

.field private static final ROOT_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_breakdown"

.field private static final SPINNER_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_spinner"

.field private static final TAG:Ljava/lang/String; = "BatteryUsageBreakdownController"

.field private static sUiMode:I


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mPercentLessThanThresholdText:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPrefContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPreferenceCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field mRootPreference:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSlotTimestamp:Ljava/lang/String;

.field private mSpinnerPosition:I

.field mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ON5d7F_-4Vr775Wu2g0jxs3z5UE(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$removeAndCacheAllUnusedPreferences$2(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f3ycfw_tHDKoOUeSRmXFEpus95o(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$showSpinnerAndAppList$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zNY8XOfQhBlNxB40FqqBBzpFt38(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$showSpinnerAndAppList$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->EMPTY_ENTRY_LIST:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    const-string v0, "battery_usage_breakdown"

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    .line 101
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 102
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 104
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getBatteryDiffEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    .line 259
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->EMPTY_ENTRY_LIST:Ljava/util/List;

    return-object p0

    .line 261
    :cond_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    if-nez p0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$removeAndCacheAllUnusedPreferences$2(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$showSpinnerAndAppList$0()V
    .locals 0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->removeAndCacheAllUnusedPreferences()V

    return-void
.end method

.method private synthetic lambda$showSpinnerAndAppList$1()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->removeAndCacheAllUnusedPreferences()V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->addAllPreferences()V

    return-void
.end method

.method private showCategoryTitle(Ljava/lang/String;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_usage_breakdown_title_since_last_full_charge:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->battery_usage_breakdown_title_for_slot:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 226
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showFooterPreference(Z)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 237
    sget p1, Lcom/android/settings/R$string;->battery_usage_screen_footer_empty:I

    goto :goto_0

    .line 238
    :cond_0
    sget p1, Lcom/android/settings/R$string;->battery_usage_screen_footer:I

    .line 235
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showSpinnerAndAppList()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method addAllPreferences()V
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->getBatteryDiffEntries()Ljava/util/List;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "BatteryUsageBreakdownController"

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 276
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 278
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v7, :cond_1

    goto :goto_2

    .line 282
    :cond_1
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 283
    iget-object v8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    move v10, v9

    goto :goto_1

    .line 287
    :cond_2
    iget-object v8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    const/4 v10, 0x0

    :goto_1
    if-nez v8, :cond_3

    .line 291
    new-instance v8, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 293
    iget-object v11, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v11, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_3
    invoke-virtual {v8, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {v8, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 298
    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 300
    invoke-virtual {v8, v4}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    .line 301
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->validForRestriction()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 302
    invoke-virtual {p0, v8, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->setPreferencePercentage(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    .line 303
    invoke-virtual {p0, v8, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    if-nez v10, :cond_4

    .line 305
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find app resource for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "addAllPreferences() is finished in %d/ms"

    .line 309
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 168
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const-string v0, "battery_usage_breakdown"

    .line 169
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const-string v0, "battery_usage_spinner"

    .line 170
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    const-string v0, "app_list"

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "battery_usage_footer"

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 173
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_usage_less_than_percent:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 175
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdText:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_usage_spinner_view_by_apps:I

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->battery_usage_spinner_view_by_systems:I

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V

    .line 178
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->initializeSpinner([Ljava/lang/String;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method handleBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Z)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    .line 218
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSlotTimestamp:Ljava/lang/String;

    .line 220
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showCategoryTitle(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showSpinnerAndAppList()V

    .line 222
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showFooterPreference(Z)V

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 10

    .line 142
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 145
    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getBatteryDiffEntry()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v0

    .line 147
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 148
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    .line 149
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isAppEntry()Z

    move-result v3

    .line 150
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v5, 0x758

    if-eqz v3, :cond_1

    const/16 v3, 0x6e8

    goto :goto_0

    :cond_1
    const/16 v3, 0x6e9

    :goto_0
    move v6, v3

    const/16 v7, 0x758

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "none"

    :cond_2
    move-object v8, v2

    .line 157
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v9, v2

    .line 150
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 159
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleClick() label=%s key=%s package=%s"

    .line 158
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryUsageBreakdownController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getPercentage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSlotTimestamp:Ljava/lang/String;

    .line 160
    invoke-static {v1, v2, v0, p1, p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 115
    sget v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    if-eq v1, v0, :cond_0

    .line 116
    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    .line 117
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    .line 118
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const-string p0, "BatteryUsageBreakdownController"

    const-string v0, "clear icon and label cache since uiMode is changed"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method removeAndCacheAllUnusedPreferences()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 315
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->getBatteryDiffEntries()Ljava/util/List;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 317
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setPreferencePercentage(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 336
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 337
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdText:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAdjustPercentageOffset()D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 p0, 0x1

    .line 338
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object p0

    .line 335
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setPercentage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v1

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v6, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    invoke-static/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->buildBatteryUsageTimeSummary(Landroid/content/Context;ZJJJ)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
