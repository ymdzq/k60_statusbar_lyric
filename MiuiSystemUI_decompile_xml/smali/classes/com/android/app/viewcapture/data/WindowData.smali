.class public final Lcom/android/app/viewcapture/data/WindowData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

.field public static final FRAMEDATA_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private frameData_:Lcom/google/protobuf/Internal$ProtobufList;

.field private title_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/viewcapture/data/WindowData;

    .line 2
    invoke-direct {v0}, Lcom/android/app/viewcapture/data/WindowData;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    .line 7
    const-class v1, Lcom/android/app/viewcapture/data/WindowData;

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
    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    .line 5
    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->title_:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public static synthetic access$000()Lcom/android/app/viewcapture/data/WindowData;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    .line 2
    return-object v0
    .line 4
.end method

.method public static access$200(Lcom/android/app/viewcapture/data/WindowData;Lcom/android/app/viewcapture/data/FrameData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    move-object v1, v0

    .line 7
    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    .line 8
    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
    .line 25
.end method

.method public static access$700(Lcom/android/app/viewcapture/data/WindowData;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/android/app/viewcapture/data/WindowData;->bitField0_:I

    .line 8
    or-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lcom/android/app/viewcapture/data/WindowData;->bitField0_:I

    .line 12
    iput-object p1, p0, Lcom/android/app/viewcapture/data/WindowData;->title_:Ljava/lang/String;

    .line 14
    return-void
    .line 16
.end method

.method public static newBuilder()Lcom/android/app/viewcapture/data/WindowData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/app/viewcapture/data/WindowData$Builder;

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
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-class p1, Lcom/android/app/viewcapture/data/WindowData;

    .line 19
    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

    .line 22
    if-nez p0, :cond_0

    .line 24
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>()V

    .line 28
    sput-object p0, Lcom/android/app/viewcapture/data/WindowData;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    .line 39
    return-object p0

    .line 41
    :pswitch_2
    new-instance p0, Lcom/android/app/viewcapture/data/WindowData$Builder;

    .line 42
    invoke-direct {p0}, Lcom/android/app/viewcapture/data/WindowData$Builder;-><init>()V

    .line 44
    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lcom/android/app/viewcapture/data/WindowData;

    .line 48
    invoke-direct {p0}, Lcom/android/app/viewcapture/data/WindowData;-><init>()V

    .line 50
    return-object p0

    .line 53
    :pswitch_4
    const-string p0, "bitField0_"

    .line 54
    const-string p1, "frameData_"

    .line 56
    const-class v0, Lcom/android/app/viewcapture/data/FrameData;

    .line 58
    const-string/jumbo v1, "title_"

    .line 60
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000"

    .line 67
    sget-object v0, Lcom/android/app/viewcapture/data/WindowData;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/WindowData;

    .line 69
    new-instance v1, Lcom/google/protobuf/RawMessageInfo;

    .line 71
    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-object v1

    .line 76
    :pswitch_5
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :pswitch_6
    const/4 p0, 0x1

    .line 79
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    nop

    .line 85
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
    .line 86
.end method

.method public final getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/app/viewcapture/data/WindowData;->frameData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    return-object p0
    .line 4
.end method
