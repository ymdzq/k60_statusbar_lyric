.class public Lcom/android/settings/display/DarkModeActivity;
.super Lcom/android/settings/SubSettings;
.source "DarkModeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->notifyNightModeShowStateChange(Landroid/content/Context;)V

    const-string p1, "DarkModeActivity"

    .line 14
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageStart(Ljava/lang/String;)V

    .line 15
    sget p1, Lcom/android/settings/R$string;->dark_mode_time_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method
