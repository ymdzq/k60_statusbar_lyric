.class public final Lcom/miui/utils/CpuBoostUtil;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static volatile sInstance:Lcom/miui/utils/CpuBoostUtil;


# instance fields
.field public mAllowBoostCpu:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    move-result-object v0

    .line 5
    sput-object v0, Lcom/miui/utils/CpuBoostUtil;->BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/utils/CpuBoostUtil;->mAllowBoostCpu:Z

    .line 6
    const-string v0, "CpuBoostUtil"

    .line 8
    const-string v1, "allowBoostCpu:"

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 15
    invoke-static {v2}, Lcom/mi/mibridge/MiBridge;->checkPermission(I)Z

    .line 16
    move-result v2

    .line 19
    iput-boolean v2, p0, Lcom/miui/utils/CpuBoostUtil;->mAllowBoostCpu:Z

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-boolean p0, p0, Lcom/miui/utils/CpuBoostUtil;->mAllowBoostCpu:Z

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string v1, "checkPermission"

    .line 41
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_0
    return-void
    .line 46
.end method

.method public static getInstance()Lcom/miui/utils/CpuBoostUtil;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/utils/CpuBoostUtil;->sInstance:Lcom/miui/utils/CpuBoostUtil;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/miui/utils/CpuBoostUtil;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/miui/utils/CpuBoostUtil;->sInstance:Lcom/miui/utils/CpuBoostUtil;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/miui/utils/CpuBoostUtil;

    .line 13
    invoke-direct {v1}, Lcom/miui/utils/CpuBoostUtil;-><init>()V

    .line 15
    sput-object v1, Lcom/miui/utils/CpuBoostUtil;->sInstance:Lcom/miui/utils/CpuBoostUtil;

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
    sget-object v0, Lcom/miui/utils/CpuBoostUtil;->sInstance:Lcom/miui/utils/CpuBoostUtil;

    .line 25
    return-object v0
    .line 27
.end method


# virtual methods
.method public final boostCpuToMax(I)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/utils/CpuBoostUtil;->mAllowBoostCpu:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/miui/utils/CpuBoostUtil;->BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v0, Lcom/miui/utils/CpuBoostUtil$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0, p1}, Lcom/miui/utils/CpuBoostUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
