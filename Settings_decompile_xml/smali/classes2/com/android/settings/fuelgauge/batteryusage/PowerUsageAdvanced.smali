.class public Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field final mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

.field mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBatteryObserver:Landroid/database/ContentObserver;

.field mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

.field private mIsChartDataLoaded:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmIsChartDataLoaded(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$2;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$2;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 64
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private setBatteryChartPreferenceController()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->setChartPreferenceController(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 131
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 132
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-direct {v2, p1, v3, v4, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 138
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;)V

    .line 137
    invoke-virtual {p1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setOnScreenOnTimeUpdatedListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 140
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V

    .line 139
    invoke-virtual {p1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setOnBatteryUsageUpdatedListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "AdvancedBatteryUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x33

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$xml;->power_usage_advanced:I

    return p0
.end method

.method protected isBatteryHistoryNeeded()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "battery_chart"

    .line 78
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 110
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 119
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected refreshUi(I)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->updatePreference(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryMap:Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryHistoryMap(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 2

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "refresh_type"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    const/4 p1, 0x3

    .line 172
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    :cond_0
    return-void
.end method
