.class public final Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingProtos$LockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2683
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2846
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    .line 2926
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    .line 3006
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingProtos$LockSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2689
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2846
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    .line 2926
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    .line 3006
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$LockSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/settings/backup/SettingProtos$LockSetting;)V
    .locals 4

    .line 2732
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2735
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 2739
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 2743
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$LockSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2747
    iget-wide v2, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->value_:J

    invoke-static {p1, v2, v3}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$LockSetting;J)V

    or-int/lit8 v1, v1, 0x8

    .line 2750
    :cond_3
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$LockSetting;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$LockSetting;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/backup/SettingProtos$LockSetting;
    .locals 1

    .line 2716
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    .line 2717
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2718
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/settings/backup/SettingProtos$LockSetting;
    .locals 2

    .line 2725
    new-instance v0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingProtos$LockSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$LockSetting-IA;)V

    .line 2726
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->buildPartial0(Lcom/android/settings/backup/SettingProtos$LockSetting;)V

    .line 2727
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 2

    .line 2694
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 2695
    iput v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    const-string v0, ""

    .line 2696
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    .line 2697
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    .line 2698
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 2699
    iput-wide v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->value_:J

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;
    .locals 0

    .line 2711
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2665
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 2706
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_LockSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 2677
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_LockSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    .line 2678
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

.method public mergeFrom(Lcom/android/settings/backup/SettingProtos$LockSetting;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 2

    .line 2764
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2765
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2766
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    .line 2767
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    .line 2768
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2770
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2771
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    .line 2772
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    .line 2773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2775
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2776
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->-$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$LockSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    .line 2777
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    .line 2778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2780
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2781
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->setValue(J)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    .line 2783
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    .line 2784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2799
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 2804
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    .line 2830
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2825
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->value_:J

    .line 2826
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 2820
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->name_:Ljava/lang/Object;

    .line 2821
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 2815
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->luid_:Ljava/lang/Object;

    .line 2816
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 2810
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->guid_:Ljava/lang/Object;

    .line 2811
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2838
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2840
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2841
    throw p1

    .line 2840
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 1

    .line 2755
    instance-of v0, p1, Lcom/android/settings/backup/SettingProtos$LockSetting;

    if-eqz v0, :cond_0

    .line 2756
    check-cast p1, Lcom/android/settings/backup/SettingProtos$LockSetting;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$LockSetting;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0

    .line 2758
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

    .line 2665
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

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

    .line 2665
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

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

    .line 2665
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

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

    .line 2665
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 0

    .line 3134
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 0

    .line 3128
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setValue(J)Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;
    .locals 0

    .line 3110
    iput-wide p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->value_:J

    .line 3111
    iget p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/settings/backup/SettingProtos$LockSetting$Builder;->bitField0_:I

    .line 3112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
