.class public final Lcom/android/settings/backup/SyncRootProtos;
.super Ljava/lang/Object;
.source "SyncRootProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_syncroot_SyncRoot_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_syncroot_SyncRoot_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinternal_static_syncroot_SyncRoot_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos;->internal_static_syncroot_SyncRoot_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_syncroot_SyncRoot_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos;->internal_static_syncroot_SyncRoot_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u000esyncroot.proto\u0012\u0008syncroot\u001a\rsetting.proto\".\n\u0008SyncRoot\u0012\"\n\u0007setting\u0018\u0007 \u0001(\u000b2\u0011.setting.SettingsB/\n\u001bcom.android.settings.backupB\u000eSyncRootProtosH\u0003"

    .line 608
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    filled-new-array {v1}, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 615
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/SyncRootProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 620
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/settings/backup/SyncRootProtos;->internal_static_syncroot_SyncRoot_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 621
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Setting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/backup/SyncRootProtos;->internal_static_syncroot_SyncRoot_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 625
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 603
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
