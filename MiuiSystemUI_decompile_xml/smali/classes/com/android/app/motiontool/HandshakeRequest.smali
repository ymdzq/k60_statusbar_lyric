.class public final Lcom/android/app/motiontool/HandshakeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final WINDOW_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clientVersion_:I

.field private window_:Lcom/android/app/motiontool/WindowIdentifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/motiontool/HandshakeRequest;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/HandshakeRequest;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/HandshakeRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

    .line 7
    const-class v1, Lcom/android/app/motiontool/HandshakeRequest;

    .line 9
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    return-void
    .line 14
.end method

.method public static synthetic access$000()Lcom/android/app/motiontool/HandshakeRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/HandshakeRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

    .line 2
    return-object v0
    .line 4
.end method

.method public static getDefaultInstance()Lcom/android/app/motiontool/HandshakeRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/HandshakeRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

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
    sget-object p0, Lcom/android/app/motiontool/HandshakeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/motiontool/HandshakeRequest;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/motiontool/HandshakeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/motiontool/HandshakeRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/motiontool/HandshakeRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/motiontool/HandshakeRequest$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/motiontool/HandshakeRequest$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/motiontool/HandshakeRequest;

    .line 48
    invoke-direct {p0}, Lcom/android/app/motiontool/HandshakeRequest;-><init>()V

    .line 50
    return-object p0

    .line 53
    :pswitch_4
    const-string p0, "bitField0_"

    .line 54
    const-string/jumbo p1, "window_"

    .line 56
    const-string v0, "clientVersion_"

    .line 59
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1004\u0001"

    .line 65
    sget-object v0, Lcom/android/app/motiontool/HandshakeRequest;->DEFAULT_INSTANCE:Lcom/android/app/motiontool/HandshakeRequest;

    .line 67
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 69
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-object v1

    .line 74
    :pswitch_5
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    :pswitch_6
    const/4 p0, 0x1

    .line 77
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 78
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

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

.method public final getWindow()Lcom/android/app/motiontool/WindowIdentifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/app/motiontool/HandshakeRequest;->window_:Lcom/android/app/motiontool/WindowIdentifier;

    .line 2
    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/app/motiontool/WindowIdentifier;->getDefaultInstance()Lcom/android/app/motiontool/WindowIdentifier;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
    .line 10
.end method
