.class public final Lcom/android/systemui/dump/nano/SystemUIProtoDump;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public tiles:[Lcom/android/systemui/qs/nano/QsTileState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->clear()Lcom/android/systemui/dump/nano/SystemUIProtoDump;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/systemui/dump/nano/SystemUIProtoDump;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/qs/nano/QsTileState;->emptyArray()[Lcom/android/systemui/qs/nano/QsTileState;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 6
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 9
    return-object p0
    .line 11
.end method

.method public computeSerializedSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 11
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_1

    .line 14
    aget-object v2, v2, v1

    .line 16
    if-eqz v2, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 20
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 21
    move-result v2

    .line 24
    add-int/2addr v0, v2

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :cond_2
    return v1
    .line 30
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    array-length v0, v0

    .line 6
    if-lez v0, :cond_1

    .line 7
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 10
    array-length v2, v1

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    aget-object v1, v1, v0

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    return-void
    .line 26
.end method
