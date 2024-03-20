.class public final Lcom/android/app/motiontool/ErrorResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;


# instance fields
.field private bitField0_:I

.field private code_:I

.field private message_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/ErrorResponse;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/ErrorResponse;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/ErrorResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

    .line 7
    const-class v1, Lcom/android/app/motiontool/ErrorResponse;

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
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/app/motiontool/ErrorResponse;->message_:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/ErrorResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/ErrorResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

    .line 2
    return-object v0
    .line 4
.end method

.method public static access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lcom/android/app/motiontool/ErrorResponse$Code;->getNumber()I

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/app/motiontool/ErrorResponse;->code_:I

    .line 9
    iget p1, p0, Lcom/android/app/motiontool/ErrorResponse;->bitField0_:I

    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 13
    iput p1, p0, Lcom/android/app/motiontool/ErrorResponse;->bitField0_:I

    .line 15
    return-void
    .line 17
.end method

.method public static access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/android/app/motiontool/ErrorResponse;->bitField0_:I

    .line 8
    or-int/lit8 v0, v0, 0x2

    .line 10
    iput v0, p0, Lcom/android/app/motiontool/ErrorResponse;->bitField0_:I

    .line 12
    iput-object p1, p0, Lcom/android/app/motiontool/ErrorResponse;->message_:Ljava/lang/String;

    .line 14
    return-void
    .line 16
.end method

.method public static newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/ErrorResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 8
    return-object v0
    .line 10
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
    sget-object p0, Lcom/android/app/motiontool/ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/motiontool/ErrorResponse;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/motiontool/ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/ErrorResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/motiontool/ErrorResponse$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/motiontool/ErrorResponse;

    .line 48
    invoke-direct {p0}, Lcom/android/app/motiontool/ErrorResponse;-><init>()V

    .line 50
    return-object p0

    .line 53
    :pswitch_4
    const-string p0, "bitField0_"

    .line 54
    const-string p1, "code_"

    .line 56
    sget-object v0, Lcom/android/app/motiontool/ErrorResponse$Code$CodeVerifier;->INSTANCE:Lcom/android/app/motiontool/ErrorResponse$Code$CodeVerifier;

    .line 58
    const-string v1, "message_"

    .line 60
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001"

    .line 66
    sget-object v0, Lcom/android/app/motiontool/ErrorResponse;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/ErrorResponse;

    .line 68
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 70
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-object v1

    .line 75
    :pswitch_5
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :pswitch_6
    const/4 p0, 0x1

    .line 78
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    move-result-object p0

    .line 82
    return-object p0

    .line 83
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
    .line 84
.end method
