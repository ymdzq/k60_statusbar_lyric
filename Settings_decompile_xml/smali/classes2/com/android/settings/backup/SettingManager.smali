.class public Lcom/android/settings/backup/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

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

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/settings/backup/SettingManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/SettingManager;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/backup/SettingManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/SettingManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method


# virtual methods
.method public addLockSetting(Lcom/android/settings/backup/SettingProtos$LockSetting;)Z
    .locals 3

    .line 188
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v1

    const/4 p1, 0x0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/backup/SettingManager;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return p1
.end method

.method public addSecureSetting(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 179
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "value"

    .line 181
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot add secure setting which has empty name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSystemSetting(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 166
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "value"

    .line 168
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 163
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot add system setting which has empty name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyRingtone(Ljava/lang/String;I)V
    .locals 3

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/SettingManager;->mFileName2Path:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 301
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 303
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "ringtone"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 307
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    invoke-static {v0, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    iget-object p0, p0, Lcom/android/settings/backup/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 312
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method public restoreRingtone()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/settings/backup/SettingManager;->mFileName2Path:Ljava/util/HashMap;

    const-string/jumbo v1, "settings_descript.xml"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Lcom/android/settings/backup/RingtoneDescript;

    invoke-direct {v0}, Lcom/android/settings/backup/RingtoneDescript;-><init>()V

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/settings/backup/RingtoneDescript;->read(Ljava/io/File;)Z

    .line 285
    iget-object v1, v0, Lcom/android/settings/backup/RingtoneDescript;->mRingtone:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/SettingManager;->applyRingtone(Ljava/lang/String;I)V

    .line 286
    iget-object v1, v0, Lcom/android/settings/backup/RingtoneDescript;->mNotification:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/SettingManager;->applyRingtone(Ljava/lang/String;I)V

    .line 287
    iget-object v1, v0, Lcom/android/settings/backup/RingtoneDescript;->mAlarm:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/SettingManager;->applyRingtone(Ljava/lang/String;I)V

    .line 288
    iget-object v1, v0, Lcom/android/settings/backup/RingtoneDescript;->mSmsDelivered:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/SettingManager;->applyRingtone(Ljava/lang/String;I)V

    .line 289
    iget-object v0, v0, Lcom/android/settings/backup/RingtoneDescript;->mSmsReceived:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/backup/SettingManager;->applyRingtone(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public restoreSysData()V
    .locals 5

    .line 263
    sget-object v0, Lcom/android/settings/backup/Customization;->DATA_SYSTEM_PARTITION:[Lcom/android/settings/backup/SystemData;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 264
    iget-object v4, p0, Lcom/android/settings/backup/SettingManager;->mFileName2Path:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/android/settings/backup/SystemData;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFileName2Path(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/android/settings/backup/SettingManager;->mFileName2Path:Ljava/util/HashMap;

    return-void
.end method
