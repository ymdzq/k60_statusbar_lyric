.class public abstract Lcom/android/systemui/controlcenter/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MI_BRAND_DEVICE_NAME_LIST:[Ljava/lang/String;

.field public static final MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "Mi Color"

    .line 2
    const-string v1, "Mi Watch"

    .line 4
    const-string v2, "Xiaomi Watch"

    .line 6
    const-string v3, "Redmi Watch"

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/controlcenter/utils/BluetoothUtils;->MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

    .line 14
    const-string v0, "Mi Smart Band"

    .line 16
    const-string v1, "Xiaomi Band"

    .line 18
    const-string v2, "Mi Band"

    .line 20
    const-string v3, "Xiaomi Smart Band"

    .line 22
    const-string v4, "Redmi Smart Band"

    .line 24
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/controlcenter/utils/BluetoothUtils;->MI_BRAND_DEVICE_NAME_LIST:[Ljava/lang/String;

    .line 30
    return-void
    .line 32
.end method
