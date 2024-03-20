.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;


# instance fields
.field public elapsedRealtimeNanos:J

.field public systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 5
    return-void
    .line 8
.end method

.method public static emptyArray()[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 14
    sput-object v1, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 16
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 23
    return-object v0
    .line 25
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    .line 7
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 10
    return-object p0
    .line 12
.end method

.method public computeSerializedSize()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 12
    move-result v0

    .line 15
    add-int/lit8 v0, v0, 0x8

    .line 16
    add-int/2addr v1, v0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    const/4 v0, 0x3

    .line 23
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 24
    move-result p0

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_1
    return v1
    .line 29
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v2, v0, v2

    .line 6
    if-eqz v2, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    const/4 v0, 0x3

    .line 18
    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 19
    :cond_1
    return-void
    .line 22
.end method
