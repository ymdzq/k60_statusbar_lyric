.class public final Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SettingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingProtos$SecureSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;",
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

    .line 1635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1800
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    .line 1880
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    .line 1960
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    .line 2040
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1641
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1800
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    .line 1880
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    .line 1960
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    .line 2040
    iput-object p1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/settings/backup/SettingProtos$SecureSetting;)V
    .locals 3

    .line 1684
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fputguid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 1691
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fputluid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 1695
    iget-object v2, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fputname_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1699
    iget-object p0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fputvalue_(Lcom/android/settings/backup/SettingProtos$SecureSetting;Ljava/lang/Object;)V

    or-int/lit8 v1, v1, 0x8

    .line 1702
    :cond_3
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fgetbitField0_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fputbitField0_(Lcom/android/settings/backup/SettingProtos$SecureSetting;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 1

    .line 1668
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    .line 1669
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1670
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->build()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 2

    .line 1677
    new-instance v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SettingProtos$SecureSetting-IA;)V

    .line 1678
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->buildPartial0(Lcom/android/settings/backup/SettingProtos$SecureSetting;)V

    .line 1679
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->buildPartial()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 1

    .line 1646
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1647
    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    const-string v0, ""

    .line 1648
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    .line 1649
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    .line 1650
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    .line 1651
    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->clear()Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 0

    .line 1663
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 1617
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 1658
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SecureSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 1629
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->-$$Nest$sfgetinternal_static_setting_SecureSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    const-class v1, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    .line 1630
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

.method public mergeFrom(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 1

    .line 1716
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1717
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1718
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fgetguid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    .line 1719
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    .line 1720
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1722
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1723
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fgetluid_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    .line 1724
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    .line 1725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1727
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1728
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fgetname_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    .line 1729
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    .line 1730
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1732
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1733
    invoke-static {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->-$$Nest$fgetvalue_(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    .line 1734
    iget v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    .line 1735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1737
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    .line 1738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1753
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 1758
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

    .line 1784
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1779
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->value_:Ljava/lang/Object;

    .line 1780
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 1774
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->name_:Ljava/lang/Object;

    .line 1775
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 1769
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->luid_:Ljava/lang/Object;

    .line 1770
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    goto :goto_0

    .line 1764
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->guid_:Ljava/lang/Object;

    .line 1765
    iget v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->bitField0_:I
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

    .line 1792
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1795
    throw p1

    .line 1794
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 1

    .line 1707
    instance-of v0, p1, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    if-eqz v0, :cond_0

    .line 1708
    check-cast p1, Lcom/android/settings/backup/SettingProtos$SecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0

    .line 1710
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

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

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

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

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

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

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

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 0

    .line 2128
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;
    .locals 0

    .line 2122
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SettingProtos$SecureSetting$Builder;

    move-result-object p0

    return-object p0
.end method
