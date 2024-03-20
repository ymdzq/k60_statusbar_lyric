.class public Lcom/android/settings/device/controller/MiuiBackupController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiBackupController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "privacy_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isBackupNeeded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
