.class public final Lcom/android/systemui/qs/nano/QsTileState;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;


# instance fields
.field private identifierCase_:I

.field private identifier_:Ljava/lang/Object;

.field private optionalBooleanStateCase_:I

.field private optionalBooleanState_:Ljava/lang/Object;

.field private optionalLabelCase_:I

.field private optionalLabel_:Ljava/lang/Object;

.field private optionalSecondaryLabelCase_:I

.field private optionalSecondaryLabel_:Ljava/lang/Object;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 6
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    .line 8
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    .line 10
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clear()Lcom/android/systemui/qs/nano/QsTileState;

    .line 14
    return-void
    .line 17
.end method

.method public static emptyArray()[Lcom/android/systemui/qs/nano/QsTileState;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/systemui/qs/nano/QsTileState;

    .line 14
    sput-object v1, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

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
    sget-object v0, Lcom/android/systemui/qs/nano/QsTileState;->_emptyArray:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 23
    return-object v0
    .line 25
.end method


# virtual methods
.method public clear()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearIdentifier()Lcom/android/systemui/qs/nano/QsTileState;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalBooleanState()Lcom/android/systemui/qs/nano/QsTileState;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalLabel()Lcom/android/systemui/qs/nano/QsTileState;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/nano/QsTileState;->clearOptionalSecondaryLabel()Lcom/android/systemui/qs/nano/QsTileState;

    .line 14
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 18
    return-object p0
    .line 20
.end method

.method public clearIdentifier()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 6
    return-object p0
    .line 8
.end method

.method public clearOptionalBooleanState()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    .line 6
    return-object p0
    .line 8
.end method

.method public clearOptionalLabel()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    .line 6
    return-object p0
    .line 8
.end method

.method public clearOptionalSecondaryLabel()Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    .line 6
    return-object p0
    .line 8
.end method

.method public computeSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    add-int/2addr v1, v0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 17
    const/4 v3, 0x2

    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 24
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 26
    move-result v0

    .line 29
    add-int/2addr v1, v0

    .line 30
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    .line 31
    if-eqz v0, :cond_2

    .line 33
    const/4 v3, 0x3

    .line 35
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 36
    move-result v0

    .line 39
    add-int/2addr v1, v0

    .line 40
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    .line 41
    const/4 v3, 0x4

    .line 43
    if-ne v0, v3, :cond_3

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 53
    move-result v0

    .line 56
    add-int/2addr v0, v2

    .line 57
    add-int/2addr v1, v0

    .line 58
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    .line 59
    const/4 v2, 0x5

    .line 61
    if-ne v0, v2, :cond_4

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-static {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 68
    move-result v0

    .line 71
    add-int/2addr v1, v0

    .line 72
    :cond_4
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    .line 73
    const/4 v2, 0x6

    .line 75
    if-ne v0, v2, :cond_5

    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    .line 78
    check-cast p0, Ljava/lang/String;

    .line 80
    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 82
    move-result p0

    .line 85
    add-int/2addr v1, p0

    .line 86
    :cond_5
    return v1
    .line 87
.end method

.method public setBooleanState(Z)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    .line 9
    return-object p0
    .line 11
.end method

.method public setComponentName(Lcom/android/systemui/util/nano/ComponentNameProto;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 8
    return-object p0
    .line 10
.end method

.method public setLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    .line 5
    return-object p0
    .line 7
.end method

.method public setSecondaryLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    .line 5
    return-object p0
    .line 7
.end method

.method public setSpec(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 5
    return-object p0
    .line 7
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifierCase_:I

    .line 14
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->identifier_:Ljava/lang/Object;

    .line 19
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 23
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    .line 26
    if-eqz v0, :cond_2

    .line 28
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanStateCase_:I

    .line 34
    const/4 v1, 0x4

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalBooleanState_:Ljava/lang/Object;

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 51
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabelCase_:I

    .line 54
    const/4 v1, 0x5

    .line 56
    if-ne v0, v1, :cond_4

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalLabel_:Ljava/lang/Object;

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_4
    iget v0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabelCase_:I

    .line 66
    const/4 v1, 0x6

    .line 68
    if-ne v0, v1, :cond_5

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/nano/QsTileState;->optionalSecondaryLabel_:Ljava/lang/Object;

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_5
    return-void
    .line 78
.end method
