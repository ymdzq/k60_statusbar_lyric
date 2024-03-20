.class public Lcom/android/settings/device/controller/MiuiCloudController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiCloudController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiCloudController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "mi_cloud"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiCloudController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceManaged(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
