.class public final Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$Settings;",
            "Lcom/android/settings/backup/SettingProtos$Settings$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private setting_:Lcom/android/settings/backup/SettingProtos$Settings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)V
    .locals 2

    .line 337
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$Settings;

    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->-$$Nest$fputsetting_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;Lcom/android/settings/backup/SettingProtos$Settings;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 345
    :goto_1
    invoke-static {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->-$$Nest$fgetbitField0_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->-$$Nest$fputbitField0_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;I)V

    return-void
.end method

.method private getSettingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/android/settings/backup/SettingProtos$Settings;",
            "Lcom/android/settings/backup/SettingProtos$Settings$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    .line 525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 529
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 292
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getSettingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 323
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->build()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->build()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 2

    .line 330
    new-instance v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SyncRootProtos$SyncRoot-IA;)V

    .line 331
    iget v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial0(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    .line 301
    iget-object v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->dispose()V

    .line 303
    iput-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 0

    .line 316
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getDefaultInstance()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 311
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos;->-$$Nest$sfgetinternal_static_syncroot_SyncRoot_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getSetting()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 429
    iget-object p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    :cond_0
    return-object p0

    .line 431
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$Settings;

    return-object p0
.end method

.method public getSettingBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;
    .locals 1

    .line 500
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 501
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 502
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getSettingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    return-object p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 275
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos;->-$$Nest$sfgetinternal_static_syncroot_SyncRoot_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    const-class v1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    .line 276
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

.method public mergeFrom(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .line 359
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getDefaultInstance()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeSetting(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    .line 364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1

    .line 397
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getSettingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 393
    iget v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 405
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 408
    throw p1

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .line 350
    instance-of v0, p1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    if-eqz v0, :cond_0

    .line 351
    check-cast p1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0

    .line 353
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

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

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

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

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

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

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

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeSetting(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->settingBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 469
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->getSettingBuilder()Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/backup/SettingProtos$Settings$Builder;->mergeFrom(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/SettingProtos$Settings$Builder;

    goto :goto_0

    .line 474
    :cond_0
    iput-object p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 479
    :goto_0
    iget p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 480
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 0

    .line 540
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 0

    .line 534
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method
