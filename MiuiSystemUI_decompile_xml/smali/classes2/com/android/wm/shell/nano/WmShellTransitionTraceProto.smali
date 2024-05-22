.class public final Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

.field public magicNumber:J

.field public realToElapsedTimeOffsetNanos:J

.field public transitions:[Lcom/android/wm/shell/nano/Transition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->clear()Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    .line 4
    invoke-static {}, Lcom/android/wm/shell/nano/Transition;->emptyArray()[Lcom/android/wm/shell/nano/Transition;

    .line 6
    move-result-object v2

    .line 9
    iput-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    .line 10
    invoke-static {}, Lcom/android/wm/shell/nano/HandlerMapping;->emptyArray()[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 12
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 16
    iput-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    .line 18
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 21
    return-object p0
    .line 23
.end method

.method public computeSerializedSize()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 3
    move-result v0

    .line 6
    add-int/lit8 v0, v0, 0x8

    .line 7
    const/4 v1, 0x0

    .line 9
    add-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    .line 11
    if-eqz v2, :cond_1

    .line 13
    array-length v2, v2

    .line 15
    if-lez v2, :cond_1

    .line 16
    move v2, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    .line 19
    array-length v4, v3

    .line 21
    if-ge v2, v4, :cond_1

    .line 22
    aget-object v3, v3, v2

    .line 24
    if-eqz v3, :cond_0

    .line 26
    const/4 v4, 0x2

    .line 28
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 29
    move-result v3

    .line 32
    add-int/2addr v0, v3

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 37
    if-eqz v2, :cond_3

    .line 39
    array-length v2, v2

    .line 41
    if-lez v2, :cond_3

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 44
    array-length v3, v2

    .line 46
    if-ge v1, v3, :cond_3

    .line 47
    aget-object v2, v2, v1

    .line 49
    if-eqz v2, :cond_2

    .line 51
    const/4 v3, 0x3

    .line 53
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    .line 54
    move-result v2

    .line 57
    add-int/2addr v0, v2

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    iget-wide v1, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    .line 62
    const-wide/16 v3, 0x0

    .line 64
    cmp-long p0, v1, v3

    .line 66
    if-eqz p0, :cond_4

    .line 68
    const/4 p0, 0x4

    .line 70
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 71
    move-result p0

    .line 74
    add-int/lit8 p0, p0, 0x8

    .line 75
    add-int/2addr v0, p0

    .line 77
    :cond_4
    return v0
    .line 78
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    array-length v0, v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    move v0, v1

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    .line 17
    array-length v3, v2

    .line 19
    if-ge v0, v3, :cond_1

    .line 20
    aget-object v2, v2, v0

    .line 22
    if-eqz v2, :cond_0

    .line 24
    const/4 v3, 0x2

    .line 26
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 33
    if-eqz v0, :cond_3

    .line 35
    array-length v0, v0

    .line 37
    if-lez v0, :cond_3

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 40
    array-length v2, v0

    .line 42
    if-ge v1, v2, :cond_3

    .line 43
    aget-object v0, v0, v1

    .line 45
    if-eqz v0, :cond_2

    .line 47
    const/4 v2, 0x3

    .line 49
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 50
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1

    .line 55
    :cond_3
    iget-wide v0, p0, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    .line 56
    const-wide/16 v2, 0x0

    .line 58
    cmp-long p0, v0, v2

    .line 60
    if-eqz p0, :cond_4

    .line 62
    const/4 p0, 0x4

    .line 64
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 65
    :cond_4
    return-void
    .line 68
.end method
