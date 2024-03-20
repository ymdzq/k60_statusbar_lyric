.class public Lmiuix/animation/utils/LogUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final COMMA:Ljava/lang/String; = ", "

.field public static final MORE_LOG_ENABLE:Z = false

.field private static volatile sIsLogEnabled:Z

.field private static final sLogHandler:Landroid/os/Handler;

.field private static final sTag:Ljava/util/Map;

.field private static final sThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    const-string v1, "LogThread"

    .line 4
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lmiuix/animation/utils/LogUtils;->sThread:Landroid/os/HandlerThread;

    .line 9
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    sput-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Lmiuix/animation/utils/LogUtils$1;

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Lmiuix/animation/utils/LogUtils$1;-><init>(Landroid/os/Looper;)V

    .line 27
    sput-object v1, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    .line 30
    return-void
    .line 32
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 2
    return-object v0
    .line 4
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    sget-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    const-string v1, "miuix_anim"

    .line 8
    if-lez v0, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, ", "

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 19
    move-result v3

    .line 22
    array-length v4, p1

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v4, :cond_2

    .line 25
    aget-object v6, p1, v5

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 29
    move-result v7

    .line 32
    if-le v7, v3, :cond_1

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_1
    return-void
    .line 66
.end method

.method public static getLogEnableInfo()V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    :try_start_0
    const-string v1, "log.tag.folme.level"

    .line 4
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    const-string v2, "miuix_anim"

    .line 16
    const-string v3, "can not access property log.tag.folme.level, no log"

    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    const-string v1, "D"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    sput-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 29
    return-void
    .line 31
.end method

.method public static getStackTrace(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    add-int/lit8 p0, p0, 0x4

    .line 11
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 22
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0
    .line 34
.end method

.method public static isLogEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 2
    return v0
    .line 4
.end method

.method public static logThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result p1

    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    sget-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
    .line 29
.end method
