.class public final Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

.field public static volatile mSlaveWifiUtils:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.android.settingslib.wifi.SlaveWifiUtils"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;

    .line 5
    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 12
    sget-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;

    .line 13
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    const-class v3, Landroid/content/Context;

    .line 18
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    move-result-object v0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    move-object p1, p0

    .line 31
    :cond_0
    aput-object p1, v1, v4

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;-><init>(Landroid/content/Context;)V

    .line 15
    sput-object v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 25
    return-object p0
    .line 27
.end method
