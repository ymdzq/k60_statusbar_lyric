.class public final Lkotlinx/coroutines/flow/StartedWhileSubscribed;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/SharingStarted;


# instance fields
.field public final replayExpiration:J

.field public final stopTimeout:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    .line 5
    iput-wide p3, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    cmp-long p0, p1, v0

    .line 11
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ltz p0, :cond_0

    .line 15
    move p0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v3

    .line 19
    :goto_0
    const-string v4, " ms) cannot be negative"

    .line 20
    if-eqz p0, :cond_3

    .line 22
    cmp-long p0, p3, v0

    .line 24
    if-ltz p0, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v2, v3

    .line 29
    :goto_1
    if-eqz v2, :cond_2

    .line 30
    return-void

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    const-string p1, "replayExpiration("

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo p3, "stopTimeout("

    .line 62
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1
    .line 87
.end method


# virtual methods
.method public final command(Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;-><init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlin/coroutines/Continuation;)V

    .line 5
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 8
    move-result-object p0

    .line 11
    new-instance p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;

    .line 12
    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 14
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    .line 17
    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;)V

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 6
    iget-wide v0, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    .line 8
    iget-wide v2, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    .line 10
    cmp-long v0, v2, v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    .line 16
    iget-wide p0, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    .line 18
    cmp-long p0, v0, p0

    .line 20
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    .line 5
    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmp-long v3, v1, v3

    .line 12
    const-string v4, "ms"

    .line 14
    if-lez v3, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v5, "stopTimeout="

    .line 20
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    .line 39
    const-wide v5, 0x7fffffffffffffffL

    .line 41
    cmp-long p0, v1, v5

    .line 46
    if-gez p0, :cond_1

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "replayExpiration="

    .line 52
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 70
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/16 v5, 0x3f

    .line 77
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    const-string v0, "SharingStarted.WhileSubscribed("

    .line 83
    const-string v1, ")"

    .line 85
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    return-object p0
    .line 91
.end method
