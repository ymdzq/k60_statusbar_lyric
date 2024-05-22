.class public final Lcom/android/systemui/util/nano/ComponentNameProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public className:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/nano/ComponentNameProto;->clear()Lcom/android/systemui/util/nano/ComponentNameProto;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/systemui/util/nano/ComponentNameProto;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    .line 2
    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    iget-object v3, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    .line 14
    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 16
    move-result v0

    .line 19
    add-int/2addr v2, v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x2

    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

    .line 30
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 32
    move-result p0

    .line 35
    add-int/2addr v2, p0

    .line 36
    :cond_1
    return v2
    .line 37
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    .line 2
    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x2

    .line 26
    iget-object p0, p0, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 29
    :cond_1
    return-void
.end method
