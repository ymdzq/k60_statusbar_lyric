.class Lcom/android/settings/backup/SyncRootProtos$SyncRoot$1;
.super Lcom/google/protobuf/AbstractParser;
.source "SyncRootProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lcom/android/settings/backup/SyncRootProtos$SyncRoot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 564
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    .line 566
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 572
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 570
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p1

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 558
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method
