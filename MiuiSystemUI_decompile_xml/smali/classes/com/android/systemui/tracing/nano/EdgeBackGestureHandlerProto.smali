.class public final Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public allowGesture:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->clear()Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

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
    iget-boolean p0, p0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 8
    move-result v1

    .line 11
    add-int/2addr v1, p0

    .line 12
    add-int/2addr v0, v1

    .line 13
    :cond_0
    return v0
    .line 14
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
