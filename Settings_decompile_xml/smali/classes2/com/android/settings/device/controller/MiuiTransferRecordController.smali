.class public Lcom/android/settings/device/controller/MiuiTransferRecordController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiTransferRecordController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiTransferRecordController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "huanji_history"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiTransferRecordController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->needRemoveMigrateHistory(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
