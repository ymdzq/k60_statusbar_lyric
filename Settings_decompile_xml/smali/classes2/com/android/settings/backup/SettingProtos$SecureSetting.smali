.class public final Lcom/android/settings/backup/SettingProtos$SecureSetting;
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
    name = "SecureSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

.field public static final GUID_FIELD_NUMBER:I = 0x1

.field public static final LUID_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
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

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalue_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$SecureSetting;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2138
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

    .line 2146
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SecureSetting$1;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1184
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const-string v0, ""

    .line 1213
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 1262
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 1311
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 1360
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 1408
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 1185
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 1186
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 1187
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 1188
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1182
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const-string p1, ""

    .line 1213
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 1262
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 1311
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 1360
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 1408
    iput-byte p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$SecureSetting-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 1

    .line 2142
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1200
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SecureSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 1

    .line 1597
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1465
    :cond_0
    instance-of v1, p1, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    if-nez v1, :cond_1

    .line 1466
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1468
    :cond_1
    check-cast p1, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasGuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasGuid()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 1471
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasGuid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1472
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1475
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasLuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasLuid()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 1476
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasLuid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1477
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getLuid()Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getLuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 1480
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 1481
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1482
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 1485
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 1486
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1487
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1488
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 1490
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

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 0

    .line 2178
    sget-object p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 2

    .line 1229
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 1230
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1231
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1233
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1235
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLuid()Ljava/lang/String;
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 1279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1280
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1282
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1284
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1285
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 1328
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1329
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1331
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1333
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation

    .line 2173
    sget-object p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1439
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1443
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1446
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1447
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1449
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 1450
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1452
    :cond_3
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 1453
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1455
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 1456
    iput v2, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v2
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 1377
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1378
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1380
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1382
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasGuid()Z
    .locals 1

    .line 1221
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

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

    .line 1270
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

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

    .line 1319
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

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

    .line 1368
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

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
    .locals 2

    .line 1496
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1497
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedHashCode:I

    return p0

    .line 1500
    :cond_0
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1501
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1503
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1505
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1507
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1509
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1511
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1513
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1515
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 1517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1518
    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 1206
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SecureSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    .line 1207
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1411
    iget-byte v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1415
    :cond_1
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 0

    .line 1595
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->newBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 1

    .line 1611
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder-IA;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1195
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 2

    .line 1604
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SecureSetting;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1605
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1425
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1428
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 1429
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1431
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1432
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1434
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
