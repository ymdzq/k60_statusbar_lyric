.class public Lcom/android/settings/development/FiveGNrcaConfigFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FiveGNrcaConfigFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private isSupportMDBForNrca()Z
    .locals 0

    .line 56
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isPlatform8550()Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isPlatform8650()Z

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


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "FiveGNrcaConfigFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaConfigFragment;->isSupportMDBForNrca()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    sget p0, Lcom/android/settings/R$xml;->fiveg_nrca_mdb_setting:I

    return p0

    .line 31
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->fiveg_nrca_efs_setting:I

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGNrcaConfigFragment;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 3

    .line 47
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

    .line 49
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method
