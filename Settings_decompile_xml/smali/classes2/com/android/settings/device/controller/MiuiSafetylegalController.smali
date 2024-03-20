.class public Lcom/android/settings/device/controller/MiuiSafetylegalController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiSafetylegalController.java"


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
    const-string/jumbo p0, "safetylegal"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const-string/jumbo p0, "ro.url.safetylegal"

    .line 16
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
