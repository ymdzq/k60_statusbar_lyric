.class public abstract Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sDeviceAddressToBondEntryMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->sDeviceAddressToBondEntryMap:Ljava/util/HashMap;

    .line 7
    return-void
    .line 9
.end method

.method public static getDeviceAddressToBondEntryMap()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->sDeviceAddressToBondEntryMap:Ljava/util/HashMap;

    .line 2
    return-object v0
    .line 4
.end method

.method public static logHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils;->sDeviceAddressToBondEntryMap:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    const/4 v2, -0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v3

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 29
    if-eqz p0, :cond_0

    .line 31
    iget v4, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    move v4, v2

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    iget v2, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    .line 39
    :cond_1
    const/16 p0, 0x201

    .line 41
    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    const-string p0, "HearingAidStatsLogUtils"

    .line 50
    const-string v0, "The device address was not found. Hearing aid device info is not logged."

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    return-void
    .line 57
.end method
