.class final Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $userId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$userId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$context:Landroid/content/Context;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "controls_favorites.xml"

    .line 2
    iget v1, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$userId:I

    .line 4
    invoke-static {v1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_6

    .line 14
    const-string v1, "aux_controls_favorites.xml"

    .line 16
    iget v2, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$userId:I

    .line 18
    invoke-static {v2, v1}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_4

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    goto :goto_1

    .line 48
    :cond_0
    new-instance p0, Lkotlin/io/FileSystemException;

    .line 49
    const-string v2, "Failed to create target directory."

    .line 51
    invoke-direct {p0, v0, v1, v2}, Lkotlin/io/FileSystemException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 53
    throw p0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    move-result-object v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    .line 66
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 71
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    const/16 v1, 0x2000

    .line 76
    :try_start_1
    new-array v1, v1, [B

    .line 78
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 80
    move-result v3

    .line 83
    :goto_0
    if-ltz v3, :cond_3

    .line 84
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 90
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    .line 95
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$context:Landroid/content/Context;

    .line 102
    const-class v1, Landroid/app/job/JobScheduler;

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 110
    if-eqz v0, :cond_6

    .line 112
    sget v1, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->$r8$clinit:I

    .line 114
    iget-object v1, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$context:Landroid/content/Context;

    .line 116
    iget p0, p0, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;->$userId:I

    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 120
    move-result v2

    .line 123
    add-int/lit16 v2, v2, 0x3e8

    .line 124
    new-instance v3, Landroid/content/ComponentName;

    .line 126
    const-class v4, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;

    .line 128
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Landroid/os/PersistableBundle;

    .line 133
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 135
    const-string v4, "USER"

    .line 138
    invoke-virtual {v1, v4, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 143
    invoke-direct {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 145
    sget-wide v2, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->WEEK_IN_MILLIS:J

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 150
    move-result-object p0

    .line 153
    const/4 v2, 0x1

    .line 154
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 155
    move-result-object p0

    .line 158
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 159
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 163
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 167
    goto :goto_2

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :catchall_1
    move-exception v1

    .line 173
    :try_start_4
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 174
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 177
    :catchall_2
    move-exception p0

    .line 178
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 179
    :catchall_3
    move-exception v0

    .line 180
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 181
    throw v0

    .line 184
    :cond_4
    new-instance p0, Lkotlin/io/FileAlreadyExistsException;

    .line 185
    const-string v2, "The destination file already exists."

    .line 187
    invoke-direct {p0, v0, v1, v2}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 189
    throw p0

    .line 192
    :cond_5
    new-instance p0, Lkotlin/io/NoSuchFileException;

    .line 193
    invoke-direct {p0, v0}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;)V

    .line 195
    throw p0

    .line 198
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 199
    return-object p0
    .line 201
.end method
