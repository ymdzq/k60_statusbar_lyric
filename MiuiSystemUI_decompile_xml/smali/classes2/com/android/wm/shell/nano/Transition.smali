.class public final Lcom/android/wm/shell/nano/Transition;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/Transition;


# instance fields
.field public abortTimeNs:J

.field public dispatchTimeNs:J

.field public handler:I

.field public id:I

.field public mergeRequestTimeNs:J

.field public mergeTimeNs:J

.field public mergedInto:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/nano/Transition;->clear()Lcom/android/wm/shell/nano/Transition;

    .line 5
    return-void
    .line 8
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/Transition;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/wm/shell/nano/Transition;

    .line 14
    sput-object v1, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

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
    sget-object v0, Lcom/android/wm/shell/nano/Transition;->_emptyArray:[Lcom/android/wm/shell/nano/Transition;

    .line 23
    return-object v0
    .line 25
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/Transition;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    .line 7
    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    .line 9
    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    .line 11
    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    .line 13
    iput v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 15
    iput-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    .line 17
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 20
    return-object p0
    .line 22
.end method

.method public computeSerializedSize()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 5
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x0

    .line 9
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    .line 11
    const-wide/16 v3, 0x0

    .line 13
    cmp-long v5, v1, v3

    .line 15
    if-eqz v5, :cond_0

    .line 17
    const/4 v5, 0x2

    .line 19
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 20
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const/4 v2, 0x3

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 30
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_1
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    .line 35
    cmp-long v5, v1, v3

    .line 37
    if-eqz v5, :cond_2

    .line 39
    const/4 v5, 0x4

    .line 41
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 42
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    :cond_2
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    .line 47
    cmp-long v5, v1, v3

    .line 49
    if-eqz v5, :cond_3

    .line 51
    const/4 v5, 0x5

    .line 53
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 54
    move-result v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    :cond_3
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 59
    if-eqz v1, :cond_4

    .line 61
    const/4 v2, 0x6

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 64
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_4
    iget-wide v1, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    .line 69
    cmp-long p0, v1, v3

    .line 71
    if-eqz p0, :cond_5

    .line 73
    const/4 p0, 0x7

    .line 75
    invoke-static {p0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 76
    move-result p0

    .line 79
    add-int/2addr v0, p0

    .line 80
    :cond_5
    return v0
    .line 81
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v4, v0, v2

    .line 12
    const-wide/16 v5, -0x80

    .line 14
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x7

    .line 17
    if-eqz v4, :cond_1

    .line 18
    const/4 v4, 0x2

    .line 20
    invoke-virtual {p1, v4, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 21
    :goto_0
    and-long v9, v0, v5

    .line 24
    cmp-long v4, v9, v2

    .line 26
    if-nez v4, :cond_0

    .line 28
    long-to-int v0, v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 31
    goto :goto_1

    .line 34
    :cond_0
    long-to-int v4, v0

    .line 35
    and-int/lit8 v4, v4, 0x7f

    .line 36
    or-int/lit16 v4, v4, 0x80

    .line 38
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 40
    ushr-long/2addr v0, v8

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->handler:I

    .line 45
    if-eqz v0, :cond_2

    .line 47
    const/4 v1, 0x3

    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 50
    :cond_2
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    .line 53
    cmp-long v4, v0, v2

    .line 55
    if-eqz v4, :cond_4

    .line 57
    const/4 v4, 0x4

    .line 59
    invoke-virtual {p1, v4, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 60
    :goto_2
    and-long v9, v0, v5

    .line 63
    cmp-long v4, v9, v2

    .line 65
    if-nez v4, :cond_3

    .line 67
    long-to-int v0, v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 70
    goto :goto_3

    .line 73
    :cond_3
    long-to-int v4, v0

    .line 74
    and-int/lit8 v4, v4, 0x7f

    .line 75
    or-int/lit16 v4, v4, 0x80

    .line 77
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 79
    ushr-long/2addr v0, v8

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_3
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    .line 84
    cmp-long v4, v0, v2

    .line 86
    if-eqz v4, :cond_6

    .line 88
    const/4 v4, 0x5

    .line 90
    invoke-virtual {p1, v4, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 91
    :goto_4
    and-long v9, v0, v5

    .line 94
    cmp-long v4, v9, v2

    .line 96
    if-nez v4, :cond_5

    .line 98
    long-to-int v0, v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 101
    goto :goto_5

    .line 104
    :cond_5
    long-to-int v4, v0

    .line 105
    and-int/lit8 v4, v4, 0x7f

    .line 106
    or-int/lit16 v4, v4, 0x80

    .line 108
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 110
    ushr-long/2addr v0, v8

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    :goto_5
    iget v0, p0, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 115
    if-eqz v0, :cond_7

    .line 117
    const/4 v1, 0x6

    .line 119
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 120
    :cond_7
    iget-wide v0, p0, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    .line 123
    cmp-long p0, v0, v2

    .line 125
    if-eqz p0, :cond_9

    .line 127
    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 129
    :goto_6
    and-long v9, v0, v5

    .line 132
    cmp-long p0, v9, v2

    .line 134
    if-nez p0, :cond_8

    .line 136
    long-to-int p0, v0

    .line 138
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 139
    goto :goto_7

    .line 142
    :cond_8
    long-to-int p0, v0

    .line 143
    and-int/lit8 p0, p0, 0x7f

    .line 144
    or-int/lit16 p0, p0, 0x80

    .line 146
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 148
    ushr-long/2addr v0, v8

    .line 151
    goto :goto_6

    .line 152
    :cond_9
    :goto_7
    return-void
    .line 153
.end method
