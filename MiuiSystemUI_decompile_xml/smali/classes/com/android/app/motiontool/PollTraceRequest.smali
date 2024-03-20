.class public final Lcom/android/app/motiontool/PollTraceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final TRACE_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private traceId_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/PollTraceRequest;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/PollTraceRequest;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/PollTraceRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

    .line 7
    const-class v1, Lcom/android/app/motiontool/PollTraceRequest;

    .line 9
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    return-void
    .line 14
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/PollTraceRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/PollTraceRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

    .line 2
    return-object v0
    .line 4
.end method

.method public static getDefaultInstance()Lcom/android/app/motiontool/PollTraceRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/PollTraceRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

    .line 2
    return-object v0
    .line 4
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

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
    sget-object p0, Lcom/android/app/motiontool/PollTraceRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/motiontool/PollTraceRequest;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/PollTraceRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/motiontool/PollTraceRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/PollTraceRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/motiontool/PollTraceRequest$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/motiontool/PollTraceRequest$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/motiontool/PollTraceRequest;

    .line 48
    invoke-direct {p0}, Lcom/android/app/motiontool/PollTraceRequest;-><init>()V

    .line 50
    return-object p0

    .line 53
    :pswitch_4
    const-string p0, "bitField0_"

    .line 54
    const-string/jumbo p1, "traceId_"

    .line 56
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1004\u0000"

    .line 63
    sget-object v0, Lcom/android/app/motiontool/PollTraceRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/PollTraceRequest;

    .line 65
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 67
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-object v1

    .line 72
    :pswitch_5
    const/4 p0, 0x0

    .line 73
    return-object p0

    .line 74
    :pswitch_6
    const/4 p0, 0x1

    .line 75
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
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
    .line 82
.end method

.method public final getTraceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/app/motiontool/PollTraceRequest;->traceId_:I

    .line 2
    return p0
    .line 4
.end method
