.class public Lcom/android/settings/device/controller/MiuiPreInstallController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiPreInstallController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "pre_installed_application"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 16
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->supportDisplayPreInstalledApplication()Z

    move-result p0

    return p0
.end method
