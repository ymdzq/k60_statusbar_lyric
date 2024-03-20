.class public final Lcom/android/app/motiontool/MotionToolsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BEGIN_TRACE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

.field public static final END_TRACE_FIELD_NUMBER:I = 0x4

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final HANDSHAKE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final POLL_TRACE_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private typeCase_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/MotionToolsResponse;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    .line 7
    const-class v1, Lcom/android/app/motiontool/MotionToolsResponse;

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
    iput v0, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 6
    return-void
    .line 8
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/MotionToolsResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    .line 2
    return-object v0
    .line 4
.end method

.method public static access$1100(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/EndTraceResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 8
    return-void
    .line 10
.end method

.method public static access$1400(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/PollTraceResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 8
    return-void
    .line 10
.end method

.method public static access$200(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/ErrorResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 8
    return-void
    .line 10
.end method

.method public static access$500(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/HandshakeResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 8
    return-void
    .line 10
.end method

.method public static access$800(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/BeginTraceResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->type_:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/android/app/motiontool/MotionToolsResponse;->typeCase_:I

    .line 8
    return-void
    .line 10
.end method

.method public static newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 8

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 48
    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsResponse;-><init>()V

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
    const-class v3, Lcom/android/app/motiontool/ErrorResponse;

    .line 62
    const-class v4, Lcom/android/app/motiontool/HandshakeResponse;

    .line 64
    const-class v5, Lcom/android/app/motiontool/BeginTraceResponse;

    .line 66
    const-class v6, Lcom/android/app/motiontool/EndTraceResponse;

    .line 68
    const-class v7, Lcom/android/app/motiontool/PollTraceResponse;

    .line 70
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    const-string p1, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000"

    .line 76
    sget-object v0, Lcom/android/app/motiontool/MotionToolsResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/MotionToolsResponse;

    .line 78
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 80
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-object v1

    .line 85
    :pswitch_5
    const/4 p0, 0x0

    .line 86
    return-object p0

    .line 87
    :pswitch_6
    const/4 p0, 0x1

    .line 88
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    move-result-object p0

    .line 92
    return-object p0

    .line 93
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
    .line 94
.end method
