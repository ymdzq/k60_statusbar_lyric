.class public final Lcom/android/settings/backup/SettingProtos$LockSetting;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SettingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

.field public static final GUID_FIELD_NUMBER:I = 0x1

.field public static final LUID_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile guid_:Ljava/lang/Object;

.field private volatile luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private value_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$LockSetting;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$LockSetting;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$LockSetting;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 3144
    new-instance v0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$LockSetting;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$LockSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

    .line 3152
    new-instance v0, Lcom/android/settings/backup/SettingProtos$LockSetting$1;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$LockSetting$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$LockSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2261
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const-string v0, ""

    .line 2289
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 2338
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 2387
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 2436
    iput-wide v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    const/4 v1, -0x1

    .line 2454
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    .line 2262
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 2263
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 2264
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 2259
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const-string p1, ""

    .line 2289
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 2338
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 2387
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 2436
    iput-wide v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    const/4 p1, -0x1

    .line 2454
    iput-byte p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$LockSetting-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/backup/SettingProtos$LockSetting;
    .locals 1

    .line 3148
    sget-object v0, Lcom/android/settings/backup/SettingProtos$LockSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2276
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_LockSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 1

    .line 2645
    sget-object v0, Lcom/android/settings/backup/SettingProtos$LockSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2512
    :cond_0
    instance-of v1, p1, Lcom/android/settings/backup/SettingProtos$LockSetting;

    if-nez v1, :cond_1

    .line 2513
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2515
    :cond_1
    check-cast p1, Lcom/android/settings/backup/SettingProtos$LockSetting;

    .line 2517
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasGuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasGuid()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 2518
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasGuid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2519
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 2520
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 2522
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasLuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasLuid()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 2523
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasLuid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2524
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getLuid()Ljava/lang/String;

    move-result-object v1

    .line 2525
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getLuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 2527
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 2528
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2529
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2530
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 2532
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 2533
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v1

    .line 2535
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    return v3

    .line 2537
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;
    .locals 0

    .line 3184
    sget-object p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 2

    .line 2305
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    .line 2306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2307
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2309
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2311
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2312
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2313
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLuid()Ljava/lang/String;
    .locals 2

    .line 2354
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    .line 2355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2356
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2358
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2360
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2361
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 2403
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    .line 2404
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2405
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2407
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2409
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2410
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            ">;"
        }
    .end annotation

    .line 3179
    sget-object p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 2485
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2489
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2492
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2493
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2495
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 2496
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2498
    :cond_3
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 2499
    iget-wide v3, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    .line 2500
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 2502
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 2503
    iput v2, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v2
.end method

.method public getValue()J
    .locals 2

    .line 2451
    iget-wide v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    return-wide v0
.end method

.method public hasGuid()Z
    .locals 1

    .line 2297
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLuid()Z
    .locals 0

    .line 2346
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasName()Z
    .locals 0

    .line 2395
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValue()Z
    .locals 0

    .line 2443
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 2543
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2544
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedHashCode:I

    return p0

    .line 2547
    :cond_0
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2548
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2550
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2552
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2554
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2556
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 2558
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2560
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 2563
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v2

    .line 2562
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 2565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2566
    iput v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 2282
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_LockSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    .line 2283
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2457
    iget-byte v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2461
    :cond_1
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 0

    .line 2643
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->newBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 1

    .line 2659
    new-instance p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$LockSetting$Builder-IA;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2271
    new-instance p0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 2

    .line 2652
    sget-object v0, Lcom/android/settings/backup/SettingProtos$LockSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$LockSetting;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2653
    new-instance p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$LockSetting$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$LockSetting$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$LockSetting;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2252
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2468
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2471
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2472
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->luid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2474
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 2475
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2477
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2478
    iget-wide v2, p0, Lcom/android/settings/backup/SettingProtos$LockSetting;->value_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 2480
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
