.class public final Lcom/android/systemui/log/table/TableLogBuffer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/log/TableLogBufferBase;


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;

.field public final lastEvictedValues:Ljava/util/Map;

.field public final localLogcat:Lcom/android/systemui/log/table/LogProxyDefault;

.field public final logMessageChannel:Lkotlinx/coroutines/channels/AbstractChannel;

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field public final name:Ljava/lang/String;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    new-instance p5, Lcom/android/systemui/log/table/LogProxyDefault;

    .line 2
    invoke-direct {p5}, Lcom/android/systemui/log/table/LogProxyDefault;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/log/table/TableLogBuffer;->localLogcat:Lcom/android/systemui/log/table/LogProxyDefault;

    .line 16
    if-lez p1, :cond_0

    .line 18
    const/4 p2, 0x0

    .line 20
    const/16 p3, 0xa

    .line 21
    const/4 p4, 0x6

    .line 23
    invoke-static {p3, p2, p4}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/AbstractChannel;

    .line 24
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logMessageChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 28
    new-instance p2, Lcom/android/systemui/common/buffer/RingBuffer;

    .line 30
    sget-object p3, Lcom/android/systemui/log/table/TableLogBuffer$buffer$1;->INSTANCE:Lcom/android/systemui/log/table/TableLogBuffer$buffer$1;

    .line 32
    invoke-direct {p2, p1, p3}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 34
    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 39
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    .line 44
    new-instance p1, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    .line 46
    invoke-direct {p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    .line 51
    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p1, "maxSize must be > 0"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0
    .line 61
.end method

.method public static dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/log/table/TableLogBufferKt;->TABLE_LOG_DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    .line 13
    iget-wide v1, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->getVal()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static verifyValidName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string v0, "columnName cannot contain | but was "

    .line 20
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string v0, "columnPrefix cannot contain | but was "

    .line 32
    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
    .line 41
.end method


# virtual methods
.method public final declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "SystemUI StateChangeTableSection START: "

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p2, "version 1"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/android/systemui/log/table/TableLogBuffer$dump$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/android/systemui/log/table/TableLogBuffer$dump$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/table/TableChange;

    .line 6
    invoke-static {v0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {p2}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/common/buffer/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/log/table/TableChange;

    invoke-static {v1, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUI StateChangeTableSection END: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(int)"

    .line 22
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    .line 24
    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->INT:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 25
    iput-object p3, p1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logMessageChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(string)"

    .line 6
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->STRING:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eqz p3, :cond_0

    .line 9
    invoke-static {p3}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logMessageChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(boolean)"

    .line 14
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    .line 16
    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->BOOLEAN:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 17
    iput-boolean p3, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    .line 18
    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logMessageChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final declared-synchronized obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3, p4}, Lcom/android/systemui/log/table/TableLogBuffer;->verifyValidName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/log/table/TableChange;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/log/table/TableChange;->hasData()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer;->saveEvictedValue(Lcom/android/systemui/log/table/TableChange;)V

    .line 20
    :cond_0
    move-object v1, v0

    .line 23
    move-wide v2, p1

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    move v6, p5

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableChange;->reset(JLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
    .line 35
.end method

.method public final saveEvictedValue(Lcom/android/systemui/log/table/TableChange;)V
    .locals 8

    .line 1
    const-string v0, "TableLogBuffer#saveEvictedValue"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/log/table/TableChange;->getName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    .line 11
    move-object v1, p0

    .line 13
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/log/table/TableChange;

    .line 20
    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/android/systemui/log/table/TableChange;

    .line 24
    invoke-direct {v1}, Lcom/android/systemui/log/table/TableChange;-><init>()V

    .line 26
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    iget-wide v3, p1, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    .line 32
    iget-object v5, p1, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    .line 34
    iget-object v6, p1, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    .line 36
    iget-boolean v7, p1, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    .line 38
    move-object v2, v1

    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/log/table/TableChange;->reset(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 41
    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    const/4 v0, 0x1

    .line 52
    if-eq p0, v0, :cond_2

    .line 53
    const/4 v0, 0x2

    .line 55
    if-eq p0, v0, :cond_1

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    .line 59
    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->INT:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 61
    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 63
    iput-object p0, v1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    .line 65
    goto :goto_1

    .line 67
    :cond_2
    iget-boolean p0, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    .line 68
    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->BOOLEAN:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 70
    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 72
    iput-boolean p0, v1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    .line 74
    goto :goto_1

    .line 76
    :cond_3
    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    .line 77
    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->STRING:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 79
    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    .line 81
    if-eqz p0, :cond_4

    .line 83
    invoke-static {p0}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 p0, 0x0

    .line 90
    :goto_0
    iput-object p0, v1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    .line 91
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 93
    return-void
    .line 96
.end method
