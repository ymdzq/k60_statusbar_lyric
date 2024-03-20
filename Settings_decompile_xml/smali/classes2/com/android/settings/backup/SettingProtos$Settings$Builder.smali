.class public final Lcom/android/settings/backup/SettingProtos$Settings$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingProtos$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/settings/backup/SettingProtos$Settings$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            "Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lock_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            ">;"
        }
    .end annotation
.end field

.field private secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private secure_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation
.end field

.field private systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;",
            "Ljava/lang/Object;",
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
.method private constructor <init>()V
    .locals 1

    .line 3632
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 4145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 4385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingProtos$Settings$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3638
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 4145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 4385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$Settings$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/settings/backup/SettingProtos$Settings;)V
    .locals 0

    .line 0
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/settings/backup/SettingProtos$Settings;)V
    .locals 1

    .line 3699
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3700
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3701
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 3702
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3704
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputsystem_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    goto :goto_0

    .line 3706
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputsystem_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    .line 3708
    :goto_0
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 3709
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3710
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 3711
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3713
    :cond_2
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputsecure_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    goto :goto_1

    .line 3715
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputsecure_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    .line 3717
    :goto_1
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 3718
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 3719
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 3720
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3722
    :cond_4
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputlock_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    goto :goto_2

    .line 3724
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fputlock_(Lcom/android/settings/backup/SettingProtos$Settings;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method private ensureLockIsMutable()V
    .locals 2

    .line 4387
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 4388
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 4389
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSecureIsMutable()V
    .locals 2

    .line 4147
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 4149
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSystemIsMutable()V
    .locals 2

    .line 3907
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 3908
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 3909
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getLockFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$LockSetting;",
            "Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4612
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4613
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4617
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4619
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 4621
    :cond_1
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method private getSecureFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting;",
            "Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4372
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4373
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4377
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4379
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 4381
    :cond_1
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method private getSystemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting;",
            "Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4132
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4133
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4137
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4139
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 4141
    :cond_1
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 1

    .line 3682
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    .line 3683
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3684
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->build()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->build()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 2

    .line 3691
    new-instance v0, Lcom/android/settings/backup/SettingProtos$Settings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingProtos$Settings;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$Settings-IA;)V

    .line 3692
    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->buildPartialRepeatedFields(Lcom/android/settings/backup/SettingProtos$Settings;)V

    .line 3693
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->buildPartial0(Lcom/android/settings/backup/SettingProtos$Settings;)V

    .line 3694
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 2

    .line 3643
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 3644
    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3645
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    goto :goto_0

    .line 3648
    :cond_0
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 3649
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3651
    :goto_0
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3652
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    goto :goto_1

    .line 3655
    :cond_1
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 3656
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3658
    :goto_1
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3659
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 3660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    goto :goto_2

    .line 3662
    :cond_2
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 3663
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 3665
    :goto_2
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->clear()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->clear()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->clear()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->clear()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 0

    .line 3677
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 3614
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 3672
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_Settings_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 3626
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_Settings_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$Settings;

    const-class v1, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    .line 3627
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public mergeFrom(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 3

    .line 3743
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3745
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3746
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3747
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 3748
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    goto :goto_0

    .line 3750
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureSystemIsMutable()V

    .line 3751
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3753
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 3756
    :cond_2
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3757
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3758
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 3759
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3760
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 3761
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3763
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3764
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->getSystemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 3766
    :cond_4
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsystem_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3770
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7

    .line 3771
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3772
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3773
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 3774
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    goto :goto_3

    .line 3776
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureSecureIsMutable()V

    .line 3777
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3779
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_5

    .line 3782
    :cond_7
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3783
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3784
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 3785
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3786
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 3787
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3789
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3790
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->getSecureFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 3792
    :cond_9
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetsecure_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3796
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    .line 3797
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3798
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3799
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 3800
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    goto :goto_6

    .line 3802
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureLockIsMutable()V

    .line 3803
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3805
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_7

    .line 3808
    :cond_c
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3809
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3810
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 3811
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3812
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    .line 3813
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->bitField0_:I

    .line 3815
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3816
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->getLockFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 3818
    :cond_e
    iget-object v0, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$Settings;->-$$Nest$fgetlock_(Lcom/android/settings/backup/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 3822
    :cond_f
    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    .line 3823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3838
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    .line 3843
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_1

    .line 3888
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3875
    :cond_1
    sget-object v1, Lcom/android/settings/backup/SettingProtos$LockSetting;->PARSER:Lcom/google/protobuf/Parser;

    .line 3876
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/backup/SettingProtos$LockSetting;

    .line 3879
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lockBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    .line 3880
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureLockIsMutable()V

    .line 3881
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->lock_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3883
    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_0

    .line 3862
    :cond_3
    sget-object v1, Lcom/android/settings/backup/SettingProtos$SecureSetting;->PARSER:Lcom/google/protobuf/Parser;

    .line 3863
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    .line 3866
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secureBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_4

    .line 3867
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureSecureIsMutable()V

    .line 3868
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3870
    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_0

    .line 3849
    :cond_5
    sget-object v1, Lcom/android/settings/backup/SettingProtos$SystemSetting;->PARSER:Lcom/google/protobuf/Parser;

    .line 3850
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    .line 3853
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->systemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_6

    .line 3854
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->ensureSystemIsMutable()V

    .line 3855
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3857
    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3896
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3898
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3899
    throw p1

    .line 3898
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 1

    .line 3734
    instance-of v0, p1, Lcom/android/settings/backup/SettingProtos$Settings;

    if-eqz v0, :cond_0

    .line 3735
    check-cast p1, Lcom/android/settings/backup/SettingProtos$Settings;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0

    .line 3737
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3614
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3614
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3614
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3614
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 0

    .line 4632
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 0

    .line 4626
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object p0

    return-object p0
.end method
