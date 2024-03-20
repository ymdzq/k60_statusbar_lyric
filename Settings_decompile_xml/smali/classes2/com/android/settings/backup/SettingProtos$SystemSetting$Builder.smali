.class public final Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingProtos$SystemSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 552
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 717
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 797
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 877
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 957
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 717
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 797
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 877
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 957
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/settings/backup/SettingProtos$SystemSetting;)V
    .locals 3

    .line 601
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 612
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 616
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$SystemSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x8

    .line 619
    :cond_3
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$SystemSetting;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 587
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 2

    .line 594
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$SystemSetting-IA;)V

    .line 595
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->buildPartial0(Lcom/android/settings/backup/SettingProtos$SystemSetting;)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 1

    .line 563
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 564
    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    const-string v0, ""

    .line 565
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 566
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 567
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 568
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 0

    .line 580
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 575
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SystemSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 546
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SystemSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    .line 547
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

.method public mergeFrom(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 1

    .line 633
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 634
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 636
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 639
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 641
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 642
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 644
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 646
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 647
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 649
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->-$$Nest$fgetvalue_(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    .line 651
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 652
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 654
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    .line 655
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 675
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

    const/16 v3, 0x22

    if-eq v1, v3, :cond_1

    .line 701
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    .line 697
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 691
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 692
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 686
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 687
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 681
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 682
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->bitField0_:I
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

    .line 709
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 712
    throw p1

    .line 711
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 1

    .line 624
    instance-of v0, p1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    if-eqz v0, :cond_0

    .line 625
    check-cast p1, Lcom/android/settings/backup/SettingProtos$SystemSetting;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0

    .line 627
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

    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

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

    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

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

    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

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

    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 0

    .line 1045
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;
    .locals 0

    .line 1039
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SystemSetting$Builder;

    move-result-object p0

    return-object p0
.end method
