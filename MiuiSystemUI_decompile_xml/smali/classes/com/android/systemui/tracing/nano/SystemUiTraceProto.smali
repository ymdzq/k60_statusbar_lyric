.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceProto;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 3
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 6
    return-object p0
    .line 8
.end method

.method public computeSerializedSize()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 8
    move-result p0

    .line 11
    add-int/2addr v0, p0

    .line 12
    :cond_0
    return v0
    .line 13
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method
