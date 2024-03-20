.class public final Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile sService:Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;


# instance fields
.field public final mFingerPrintManager:Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 5
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 11
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 17
    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 21
    invoke-direct {v1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->mFingerPrintManager:Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 26
    sget-boolean p0, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 28
    const-string v0, "MiuiGxzwManager"

    .line 30
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    const-string p0, "android.app.fod.ICallback"

    .line 34
    move-object v2, v1

    .line 36
    check-cast v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 37
    invoke-static {p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    const-string p0, "add MiuiGxzwManager successfully"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const-string p0, "add MiuiGxzwManager fail"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    const-string p0, "second space should not init MiuiGxzwManager:"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 64
    invoke-direct {v1, v0}, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->mFingerPrintManager:Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 69
    :goto_0
    return-void
    .line 71
.end method

.method public static getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->sService:Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->sService:Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 13
    invoke-direct {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;-><init>()V

    .line 15
    sput-object v1, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->sService:Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->sService:Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;

    .line 25
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->mFingerPrintManager:Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 27
    return-object v0
    .line 29
.end method
