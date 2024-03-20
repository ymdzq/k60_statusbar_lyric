.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

.field public magicNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

    .line 4
    invoke-static {}, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->emptyArray()[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 13
    return-object p0
    .line 15
.end method

.method public computeSerializedSize()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

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
    add-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 21
    if-eqz v2, :cond_2

    .line 23
    array-length v2, v2

    .line 25
    if-lez v2, :cond_2

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 28
    array-length v3, v2

    .line 30
    if-ge v1, v3, :cond_2

    .line 31
    aget-object v2, v2, v1

    .line 33
    if-eqz v2, :cond_1

    .line 35
    const/4 v3, 0x2

    .line 37
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 38
    move-result v2

    .line 41
    add-int/2addr v0, v2

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_1

    .line 45
    :cond_2
    return v0
    .line 46
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

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
    iget-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    array-length v0, v0

    .line 18
    if-lez v0, :cond_2

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 22
    array-length v2, v1

    .line 24
    if-ge v0, v2, :cond_2

    .line 25
    aget-object v1, v1, v0

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const/4 v2, 0x2

    .line 31
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    return-void
    .line 38
.end method
