.class public Lcom/android/settings/development/FiveGVonrConfigFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FiveGVonrConfigFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mVonrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/settings/development/FiveGVonrConfigFragment$1;

    invoke-direct {v0}, Lcom/android/settings/development/FiveGVonrConfigFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/FiveGVonrConfigFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/development/FiveGVonrConfigFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGVonrConfigFragment$2;-><init>(Lcom/android/settings/development/FiveGVonrConfigFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGVonrConfigFragment;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigFragment;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "FiveGVonrConfigFragment"

    const-string/jumbo v0, "register broadcastreceiver"

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "FiveGVonrConfigFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$xml;->fiveg_vonr_setting:I

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigFragment;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGVonrConfigFragment;->updateState()V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrConfigFragment;->registerBroadcastReceiver()V

    return-void
.end method

.method public updateState()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method
