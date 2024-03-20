.class public Lcom/android/settings/applications/SystemAppUpdaterStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "SystemAppUpdaterStatusController.java"


# instance fields
.field private mHasRegister:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocale:Ljava/util/Locale;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/util/Locale;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 37
    new-instance p1, Lcom/android/settings/applications/SystemAppUpdaterStatusController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/SystemAppUpdaterStatusController$1;-><init>(Lcom/android/settings/applications/SystemAppUpdaterStatusController;)V

    iput-object p1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "com.xiaomi.market.action.APP_UPDATE_CHECKED"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iput-object p3, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mHasRegister:Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mHasRegister:Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "updatable_system_app_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->updateAppCount(I)V

    return-void
.end method

.method protected updateAppCount(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/UpdateBroadcastManager;->getAppsAutoUpdateSuperscript(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p1

    .line 80
    iget-object p1, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/SystemAppUpdaterStatusController;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateStatus()V
    .locals 0

    .line 0
    return-void
.end method
