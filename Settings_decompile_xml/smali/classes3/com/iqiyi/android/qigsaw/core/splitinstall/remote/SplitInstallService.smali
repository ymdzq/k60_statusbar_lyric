.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;
.super Landroid/app/Service;
.source "SplitInstallService.java"


# static fields
.field private static final sHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBinder:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->sHandlerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->mBinder:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;

    return-void
.end method

.method static getHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 4

    .line 91
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->sHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "split_remote_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    .line 98
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->mBinder:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;

    return-object p0
.end method
