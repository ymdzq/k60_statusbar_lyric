.class public Lcom/android/settings/development/AdbWirelessDefaultLaunchPreferenceController;
.super Lcom/android/settings/development/DefaultLaunchPreferenceController;
.source "AdbWirelessDefaultLaunchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "toggle_adb_wireless"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
