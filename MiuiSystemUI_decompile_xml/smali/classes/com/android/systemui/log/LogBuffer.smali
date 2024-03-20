.class public final Lcom/android/systemui/log/LogBuffer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final buffer:Lcom/android/systemui/common/buffer/RingBuffer;

.field private final echoMessageQueue:Ljava/util/concurrent/BlockingQueue;

.field private frozen:Z

.field private final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field private final maxSize:I

.field private final name:Ljava/lang/String;

.field private final systrace:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/systemui/log/LogBuffer;->maxSize:I

    .line 5
    iput-object p3, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/log/LogBuffer;->systrace:Z

    .line 7
    new-instance p4, Lcom/android/systemui/common/buffer/RingBuffer;

    sget-object v0, Lcom/android/systemui/log/LogBuffer$buffer$1;->INSTANCE:Lcom/android/systemui/log/LogBuffer$buffer$1;

    invoke-direct {p4, p2, v0}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p4, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 8
    invoke-interface {p3}, Lcom/android/systemui/log/LogcatEchoTracker;->getLogInBackgroundThread()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p4, 0xa

    invoke-direct {p2, p4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/log/LogBuffer;->echoMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 9
    invoke-interface {p3}, Lcom/android/systemui/log/LogcatEchoTracker;->getLogInBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    const-string p2, "LogBuffer-"

    .line 10
    invoke-static {p2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/android/systemui/log/LogBuffer$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/log/LogBuffer$1;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 12
    new-instance p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    invoke-direct {p0, p2}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x5

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setPriority(I)V

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V

    return-void
.end method

.method public static final synthetic access$echoToDesiredEndpoints(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/LogMessage;)V

    .line 2
    return-void
    .line 5
.end method

.method public static final synthetic access$getEchoMessageQueue$p(Lcom/android/systemui/log/LogBuffer;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogBuffer;->echoMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    return-object p0
    .line 4
.end method

.method private final echo(Lcom/android/systemui/log/LogMessage;ZZ)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    if-eqz p3, :cond_2

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    if-eqz p3, :cond_1

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/log/LogBuffer;->echoToSystrace(Lcom/android/systemui/log/LogMessage;Ljava/lang/String;)V

    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/log/LogBuffer;->echoToLogcat(Lcom/android/systemui/log/LogMessage;Ljava/lang/String;)V

    .line 23
    :cond_2
    return-void
    .line 26
.end method

.method private final echoToDesiredEndpoints(Lcom/android/systemui/log/LogMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 6
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 16
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/log/LogBuffer;->systrace:Z

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/log/LogBuffer;->echo(Lcom/android/systemui/log/LogMessage;ZZ)V

    .line 38
    return-void
    .line 41
.end method

.method private final echoToLogcat(Lcom/android/systemui/log/LogMessage;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogBuffer$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 22
    move-result-object p1

    .line 25
    invoke-static {p0, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    goto :goto_0

    .line 29
    :pswitch_1
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 34
    move-result-object p1

    .line 37
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    goto :goto_0

    .line 41
    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    goto :goto_0

    .line 53
    :pswitch_3
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 58
    move-result-object p1

    .line 61
    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    goto :goto_0

    .line 65
    :pswitch_4
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 70
    move-result-object p1

    .line 73
    invoke-static {p0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    goto :goto_0

    .line 77
    :pswitch_5
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getException()Ljava/lang/Throwable;

    .line 81
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 86
.end method

.method private final echoToSystrace(Lcom/android/systemui/log/LogMessage;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/systemui/log/LogLevel;->getShortString()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p0, " - "

    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, " "

    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p0, ": "

    .line 48
    invoke-static {v3, p0, p2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    const-string p1, "UI Events"

    .line 54
    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
    .line 59
.end method

.method private final getMutable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/systemui/log/LogBuffer;->maxSize:I

    .line 6
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public static synthetic log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p1

    .line 2
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public static synthetic obtain$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/android/systemui/log/LogMessage;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    if-eqz p5, :cond_0

    .line 4
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method


# virtual methods
.method public final declared-synchronized commit(Lcom/android/systemui/log/LogMessage;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/log/LogBuffer;->getMutable()Z

    .line 3
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->echoMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    .line 15
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-lez v0, :cond_1

    .line 19
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->echoMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    goto :goto_0

    .line 26
    :catch_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/LogMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
    .line 38
.end method

.method public final declared-synchronized dump(Ljava/io/PrintWriter;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-gtz p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    .line 9
    move-result v1

    .line 12
    sub-int/2addr v1, p2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 18
    invoke-virtual {p2}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    .line 20
    move-result p2

    .line 23
    :goto_1
    if-ge v0, p2, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/systemui/common/buffer/RingBuffer;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    .line 32
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public final declared-synchronized freeze()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "LogBuffer"

    .line 7
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/log/LogBuffer$freeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$freeze$2;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
    .line 33
.end method

.method public final getFrozen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    .line 2
    return p0
    .line 4
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogBuffer$log$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$log$2;

    .line 6
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p1

    .line 10
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object p1

    .line 3
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final declared-synchronized obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/log/LogBuffer;->getMutable()Z

    .line 3
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    sget-object p1, Lcom/android/systemui/log/LogBufferKt;->FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v4

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v6, p3

    .line 28
    move-object v7, p4

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
    .line 37
.end method

.method public final declared-synchronized unfreeze()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    .line 8
    const-string v0, "LogBuffer"

    .line 10
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 12
    sget-object v2, Lcom/android/systemui/log/LogBuffer$unfreeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$unfreeze$2;

    .line 14
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
    .line 33
.end method
