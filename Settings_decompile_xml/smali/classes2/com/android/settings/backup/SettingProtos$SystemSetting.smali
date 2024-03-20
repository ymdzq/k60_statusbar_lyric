.class public final Lcom/android/settings/backup/SettingProtos$SystemSetting;
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
    name = "SystemSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

.field public static final GUID_FIELD_NUMBER:I = 0x1

.field public static final LUID_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
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
.method static bridge synthetic -$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalue_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$SystemSetting;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1055
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

    .line 1063
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SystemSetting$1;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const-string v0, ""

    .line 130
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 179
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 228
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 277
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 325
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 102
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 105
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

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

    .line 99
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const-string p1, ""

    .line 130
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 228
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 277
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 325
    iput-byte p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$SystemSetting-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 1

    .line 1059
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 117
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SystemSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 1

    .line 514
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 382
    :cond_0
    instance-of v1, p1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    if-nez v1, :cond_1

    .line 383
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 385
    :cond_1
    check-cast p1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 392
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 393
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getLuid()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getLuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 397
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 402
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 403
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 407
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

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 0

    .line 1095
    sget-object p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 147
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 150
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 152
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLuid()Ljava/lang/String;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 196
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 199
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 201
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 245
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 248
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 250
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
            ">;"
        }
    .end annotation

    .line 1090
    sget-object p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 356
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 360
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 363
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 366
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 367
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 369
    :cond_3
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 372
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 373
    iput v2, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v2
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 294
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 295
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 297
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 299
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasGuid()Z
    .locals 1

    .line 138
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 187
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 236
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 285
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 413
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 414
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedHashCode:I

    return p0

    .line 417
    :cond_0
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 434
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 435
    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 123
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SystemSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 328
    iget-byte v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 332
    :cond_1
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 0

    .line 512
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->newBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 1

    .line 528
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder-IA;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 112
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 2

    .line 521
    sget-object v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$SystemSetting;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 522
    new-instance p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->toBuilder()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

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

    .line 339
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 342
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 345
    :cond_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 346
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 348
    :cond_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 351
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
