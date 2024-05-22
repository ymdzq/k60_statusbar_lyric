.class public final Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
.super Lcom/google/protobuf/nano/MessageNano;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;


# instance fields
.field public groupInstanceId:I

.field public instanceId:I

.field public isGroupSummary:Z

.field public packageName:Ljava/lang/String;

.field public section:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->clear()Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 5
    return-void
    .line 8
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 14
    sput-object v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

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
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 23
    return-object v0
    .line 25
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    .line 3
    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    .line 15
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 18
    return-object p0
    .line 20
.end method

.method public computeSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 8
    move-result v0

    .line 11
    add-int/2addr v2, v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 13
    const-string v3, ""

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x2

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 24
    invoke-static {v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 26
    move-result v0

    .line 29
    add-int/2addr v2, v0

    .line 30
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    .line 31
    if-eqz v0, :cond_2

    .line 33
    const/4 v3, 0x3

    .line 35
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 36
    move-result v0

    .line 39
    add-int/2addr v2, v0

    .line 40
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    .line 41
    if-eqz v0, :cond_3

    .line 43
    const/4 v3, 0x4

    .line 45
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 46
    move-result v0

    .line 49
    add-int/2addr v2, v0

    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    .line 51
    if-eqz v0, :cond_4

    .line 53
    const/4 v0, 0x5

    .line 55
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 56
    move-result v0

    .line 59
    add-int/2addr v0, v1

    .line 60
    add-int/2addr v2, v0

    .line 61
    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    .line 62
    if-eqz p0, :cond_5

    .line 64
    const/4 v0, 0x6

    .line 66
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 67
    move-result p0

    .line 70
    add-int/2addr v2, p0

    .line 71
    :cond_5
    return v2
    .line 72
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 10
    const-string v1, ""

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    const/4 v0, 0x2

    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 23
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    .line 26
    if-eqz v0, :cond_2

    .line 28
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    .line 34
    if-eqz v0, :cond_3

    .line 36
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 39
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    .line 42
    if-eqz v0, :cond_4

    .line 44
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 51
    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    .line 54
    if-eqz p0, :cond_5

    .line 56
    const/4 v0, 0x6

    .line 58
    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    :cond_5
    return-void
    .line 62
.end method
