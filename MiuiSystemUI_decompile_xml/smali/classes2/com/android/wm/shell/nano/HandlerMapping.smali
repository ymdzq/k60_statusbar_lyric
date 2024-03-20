.class public final Lcom/android/wm/shell/nano/HandlerMapping;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static volatile _emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/nano/HandlerMapping;->clear()Lcom/android/wm/shell/nano/HandlerMapping;

    .line 5
    return-void
    .line 8
.end method

.method public static emptyArray()[Lcom/android/wm/shell/nano/HandlerMapping;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/wm/shell/nano/HandlerMapping;

    .line 14
    sput-object v1, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

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
    sget-object v0, Lcom/android/wm/shell/nano/HandlerMapping;->_emptyArray:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 23
    return-object v0
    .line 25
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/HandlerMapping;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    .line 3
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    .line 7
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 10
    return-object p0
    .line 12
.end method

.method public computeSerializedSize()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 5
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x0

    .line 9
    const/4 v1, 0x2

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    .line 12
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 14
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
    .line 19
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5
    const/4 v0, 0x2

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method
