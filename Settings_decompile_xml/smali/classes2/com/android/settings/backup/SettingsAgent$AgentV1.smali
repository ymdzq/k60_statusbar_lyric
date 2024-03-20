.class Lcom/android/settings/backup/SettingsAgent$AgentV1;
.super Ljava/lang/Object;
.source "SettingsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgentV1"
.end annotation


# instance fields
.field private mAttachDir:Ljava/io/File;

.field private mFileName2Path:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingManager:Lcom/android/settings/backup/SettingManager;

.field final synthetic this$0:Lcom/android/settings/backup/SettingsAgent;


# direct methods
.method private constructor <init>(Lcom/android/settings/backup/SettingsAgent;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->this$0:Lcom/android/settings/backup/SettingsAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV1-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsAgent$AgentV1;-><init>(Lcom/android/settings/backup/SettingsAgent;)V

    return-void
.end method


# virtual methods
.method public endRestore()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mFileName2Path:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/SettingManager;->setFileName2Path(Ljava/util/HashMap;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingManager;->restoreSysData()V

    .line 363
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    invoke-virtual {p0}, Lcom/android/settings/backup/SettingManager;->restoreRingtone()V

    const/4 p0, 0x0

    return p0
.end method

.method public restoreAttaches(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 6

    const-string v0, "IOException"

    const-string v1, "Backup:SettingsAgent"

    .line 323
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mAttachDir:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 328
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 329
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x2000

    :try_start_2
    new-array p1, p1, [B

    .line 333
    :goto_0
    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 334
    invoke-virtual {v4, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mFileName2Path:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 346
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v5, v3

    :goto_2
    move-object v3, v4

    goto :goto_a

    :catch_3
    move-exception p0

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v5, v3

    :goto_4
    move-object v3, v4

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto :goto_a

    :catch_5
    move-exception p0

    move-object v5, v3

    .line 340
    :goto_5
    :try_start_5
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1

    .line 344
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 346
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_6
    if-eqz v5, :cond_3

    .line 351
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    :catch_7
    move-exception p0

    move-object v5, v3

    :goto_7
    :try_start_8
    const-string p1, "IllegalArgumentException"

    .line 338
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_2

    .line 344
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 346
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_8
    if-eqz v5, :cond_3

    .line 351
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p0

    .line 353
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_9
    return p2

    :catchall_3
    move-exception p0

    :goto_a
    if-eqz v3, :cond_4

    .line 344
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    .line 346
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_b
    if-eqz v5, :cond_5

    .line 351
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    .line 353
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_5
    :goto_c
    throw p0
.end method

.method public restoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/android/settings/backup/SettingManager;

    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->this$0:Lcom/android/settings/backup/SettingsAgent;

    iget-object v1, v1, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    const/4 v0, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    :try_start_1
    invoke-static {v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 310
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x6

    return p0

    .line 287
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "Backup:SettingsAgent"

    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/backup/SettingProtos$SystemSetting;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    invoke-virtual {v4, v2}, Lcom/android/settings/backup/SettingManager;->addSystemSetting(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    const-string v4, "Cannot add system setting "

    .line 291
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/backup/SettingProtos$SecureSetting;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    :try_start_6
    iget-object v4, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    invoke-virtual {v4, v2}, Lcom/android/settings/backup/SettingManager;->addSecureSetting(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    const-string v4, "Cannot add secure setting "

    .line 298
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->getLockList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/SettingProtos$LockSetting;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    :try_start_8
    iget-object v2, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mSettingManager:Lcom/android/settings/backup/SettingManager;

    invoke-virtual {v2, v0}, Lcom/android/settings/backup/SettingManager;->addLockSetting(Lcom/android/settings/backup/SettingProtos$LockSetting;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_9
    const-string v2, "Cannot add lock setting "

    .line 305
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 310
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 314
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mFileName2Path:Ljava/util/HashMap;

    .line 315
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->this$0:Lcom/android/settings/backup/SettingsAgent;

    iget-object v0, v0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v0}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "_tmp_attach"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mAttachDir:Ljava/io/File;

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 317
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV1;->mAttachDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_6

    .line 310
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 312
    :cond_6
    throw p0
.end method
