.class public final Lcom/android/settings/backup/SettingProtos;
.super Ljava/lang/Object;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingProtos$Settings;,
        Lcom/android/settings/backup/SettingProtos$LockSetting;,
        Lcom/android/settings/backup/SettingProtos$SecureSetting;,
        Lcom/android/settings/backup/SettingProtos$SystemSetting;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_setting_LockSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_setting_LockSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_setting_SecureSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_setting_SecureSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_setting_Settings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_setting_Settings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_setting_SystemSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_setting_SystemSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_LockSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_LockSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_LockSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_LockSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_SecureSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SecureSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_SecureSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SecureSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_Settings_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_Settings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_Settings_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_Settings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_SystemSetting_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SystemSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_setting_SystemSetting_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SystemSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\n\rsetting.proto\u0012\u0007setting\"H\n\rSystemSetting\u0012\u000c\n\u0004guid\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004luid\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\t\"H\n\rSecureSetting\u0012\u000c\n\u0004guid\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004luid\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\t\"F\n\u000bLockSetting\u0012\u000c\n\u0004guid\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004luid\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\u0012\"~\n\u0008Settings\u0012&\n\u0006system\u0018\u0001 \u0003(\u000b2\u0016.setting.SystemSetting\u0012&\n\u0006secure\u0018\u0002 \u0003(\u000b2\u0016.setting.SecureSetting\u0012\"\n\u0004lock\u0018\u0003 \u0003(\u000b2\u0014.setting.LockSettingB.\n\u001bcom.android.settings.backupB\rSettingProtosH\u0003"

    .line 4715
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4729
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/SettingProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4733
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SystemSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4734
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Guid"

    const-string v3, "Luid"

    const-string v4, "Name"

    const-string v5, "Value"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SystemSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4739
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SecureSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4740
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_SecureSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4745
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_LockSetting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4746
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_LockSetting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4751
    invoke-static {}, Lcom/android/settings/backup/SettingProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_Settings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4752
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Secure"

    const-string v3, "Lock"

    const-string v4, "System"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/backup/SettingProtos;->internal_static_setting_Settings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 4710
    sget-object v0, Lcom/android/settings/backup/SettingProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
