.class public final Lcom/android/app/motiontool/MotionToolsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BEGIN_TRACE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

.field public static final END_TRACE_FIELD_NUMBER:I = 0x3

.field public static final HANDSHAKE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final POLL_TRACE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private typeCase_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/MotionToolsRequest;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/MotionToolsRequest;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    .line 7
    const-class v1, Lcom/android/app/motiontool/MotionToolsRequest;

    .line 9
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    return-void
    .line 14
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 6
    return-void
    .line 8
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/MotionToolsRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    .line 2
    return-object v0
    .line 4
.end method

.method public static parseFrom([B)Lcom/android/app/motiontool/MotionToolsRequest;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    .line 2
    array-length v1, p0

    .line 4
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    .line 5
    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod$1()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 13
    :try_start_0
    sget-object v3, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    .line 24
    move-result-object v9

    .line 27
    add-int/lit8 v7, v1, 0x0

    .line 28
    new-instance v8, Lcom/google/protobuf/ArrayDecoders$Registers;

    .line 30
    invoke-direct {v8, v2}, Lcom/google/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 32
    const/4 v6, 0x0

    .line 35
    move-object v3, v9

    .line 36
    move-object v4, v0

    .line 37
    move-object v5, p0

    .line 38
    invoke-interface/range {v3 .. v8}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V

    .line 39
    invoke-interface {v9, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    const/4 p0, 0x1

    .line 45
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z

    .line 46
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    check-cast v0, Lcom/android/app/motiontool/MotionToolsRequest;

    .line 52
    return-object v0

    .line 54
    :cond_0
    new-instance p0, Lcom/google/protobuf/UninitializedMessageException;

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    .line 57
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 60
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 69
    throw v1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 75
    move-result-object p0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 79
    throw p0

    .line 82
    :catch_2
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    .line 84
    move-result-object v1

    .line 87
    instance-of v1, v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 88
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    .line 92
    move-result-object p0

    .line 95
    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 96
    throw p0

    .line 98
    :cond_1
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 99
    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 101
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 104
    throw v1

    .line 107
    :goto_0
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 108
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 117
    throw v1

    .line 120
    :catch_3
    move-exception p0

    .line 121
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    .line 122
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 128
    invoke-direct {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 130
    move-object p0, v1

    .line 133
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 134
    throw p0
    .line 137
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 11
    throw p0

    .line 14
    :pswitch_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/motiontool/MotionToolsRequest;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 31
    :cond_0
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/motiontool/MotionToolsRequest$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsRequest$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/motiontool/MotionToolsRequest;

    .line 48
    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsRequest;-><init>()V

    .line 50
    return-object p0

    .line 53
    :pswitch_4
    const-string/jumbo v0, "type_"

    .line 54
    const-string/jumbo v1, "typeCase_"

    .line 57
    const-string v2, "bitField0_"

    .line 60
    const-class v3, Lcom/android/app/motiontool/HandshakeRequest;

    .line 62
    const-class v4, Lcom/android/app/motiontool/BeginTraceRequest;

    .line 64
    const-class v5, Lcom/android/app/motiontool/EndTraceRequest;

    .line 66
    const-class v6, Lcom/android/app/motiontool/PollTraceRequest;

    .line 68
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 73
    const-string p1, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000"

    .line 74
    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsRequest;

    .line 76
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 78
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-object v1

    .line 83
    :pswitch_5
    const/4 p0, 0x0

    .line 84
    return-object p0

    .line 85
    :pswitch_6
    const/4 p0, 0x1

    .line 86
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 87
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 92
.end method

.method public final getBeginTrace()Lcom/android/app/motiontool/BeginTraceRequest;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/app/motiontool/BeginTraceRequest;

    .line 9
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/BeginTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/BeginTraceRequest;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getEndTrace()Lcom/android/app/motiontool/EndTraceRequest;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 2
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/app/motiontool/EndTraceRequest;

    .line 9
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/EndTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/EndTraceRequest;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getHandshake()Lcom/android/app/motiontool/HandshakeRequest;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/app/motiontool/HandshakeRequest;

    .line 9
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/HandshakeRequest;->getDefaultInstance()Lcom/android/app/motiontool/HandshakeRequest;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getPollTrace()Lcom/android/app/motiontool/PollTraceRequest;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 2
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->type_:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/app/motiontool/PollTraceRequest;

    .line 9
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/app/motiontool/PollTraceRequest;->getDefaultInstance()Lcom/android/app/motiontool/PollTraceRequest;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getTypeCase()Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/app/motiontool/MotionToolsRequest;->typeCase_:I

    .line 2
    if-eqz p0, :cond_4

    .line 4
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    const/4 v0, 0x4

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->POLL_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->END_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->BEGIN_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 26
    goto :goto_0

    .line 28
    :cond_3
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->HANDSHAKE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 29
    goto :goto_0

    .line 31
    :cond_4
    sget-object p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->TYPE_NOT_SET:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 32
    :goto_0
    return-object p0
    .line 34
.end method
