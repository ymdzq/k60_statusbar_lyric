.class public final Lcom/android/settings/backup/SettingProtos$Settings;
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
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

.field public static final LOCK_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$Settings;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECURE_FIELD_NUMBER:I = 0x2

.field public static final SYSTEM_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private lock_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private secure_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation
.end field

.field private system_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlock_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsecure_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsystem_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 4642
    new-instance v0, Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$Settings;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$Settings;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 4650
    new-instance v0, Lcom/android/settings/backup/SettingProtos$Settings$1;

    invoke-direct {v0}, Lcom/android/settings/backup/SettingProtos$Settings$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SettingProtos$Settings;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3426
    iput-byte v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 3278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    .line 3279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    .line 3280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

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

    .line 3275
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3426
    iput-byte p1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$Settings-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 3268
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 3268
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 3268
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 1

    .line 4646
    sget-object v0, Lcom/android/settings/backup/SettingProtos$Settings;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3292
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_Settings_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 1

    .line 3594
    sget-object v0, Lcom/android/settings/backup/SettingProtos$Settings;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->toBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3480
    :cond_0
    instance-of v1, p1, Lcom/android/settings/backup/SettingProtos$Settings;

    if-nez v1, :cond_1

    .line 3481
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3483
    :cond_1
    check-cast p1, Lcom/android/settings/backup/SettingProtos$Settings;

    .line 3485
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object v1

    .line 3486
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3487
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object v1

    .line 3488
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3489
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getLockList()Ljava/util/List;

    move-result-object v1

    .line 3490
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->getLockList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 3491
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 0

    .line 4682
    sget-object p0, Lcom/android/settings/backup/SettingProtos$Settings;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public getLockCount()I
    .locals 0

    .line 3408
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLockList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            ">;"
        }
    .end annotation

    .line 3393
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SettingProtos$Settings;",
            ">;"
        }
    .end annotation

    .line 4677
    sget-object p0, Lcom/android/settings/backup/SettingProtos$Settings;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSecureCount()I
    .locals 0

    .line 3367
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSecureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation

    .line 3352
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3454
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3458
    :goto_0
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3459
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    .line 3460
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 3462
    :goto_1
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3463
    iget-object v3, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    .line 3464
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3466
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3467
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    .line 3468
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3470
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 3471
    iput v2, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v2
.end method

.method public getSystemCount()I
    .locals 0

    .line 3326
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSystemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
            ">;"
        }
    .end annotation

    .line 3311
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 3497
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3498
    iget p0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedHashCode:I

    return p0

    .line 3501
    :cond_0
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3502
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSystemCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3504
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3506
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSecureCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3508
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3510
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getLockCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3512
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->getLockList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 3514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3515
    iput v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 3298
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_Settings_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$Settings;

    const-class v1, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    .line 3299
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3429
    iget-byte v0, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3433
    :cond_1
    iput-byte v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 0

    .line 3592
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->newBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 1

    .line 3608
    new-instance p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$Settings$Builder-IA;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3268
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->newBuilderForType()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3287
    new-instance p0, Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 2

    .line 3601
    sget-object v0, Lcom/android/settings/backup/SettingProtos$Settings;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SettingProtos$Settings;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3602
    new-instance p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$Settings$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;-><init>(Lcom/android/settings/backup/SettingProtos$Settings$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->toBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3268
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->toBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

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

    const/4 v0, 0x0

    move v1, v0

    .line 3440
    :goto_0
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3441
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3443
    :goto_1
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3444
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3446
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3447
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings;->lock_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3449
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
