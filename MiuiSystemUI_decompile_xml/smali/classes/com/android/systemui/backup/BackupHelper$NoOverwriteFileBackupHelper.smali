.class public final Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;
.super Landroid/app/backup/FileBackupHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public final fileNamesAndPostProcess:Ljava/util/Map;

.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, [Ljava/lang/String;

    .line 15
    array-length v2, v1

    .line 17
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, [Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, v1}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->lock:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->fileNamesAndPostProcess:Ljava/util/Map;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/FileBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    .line 11
    throw p0
    .line 12
.end method

.method public final restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const-string p0, "BackupHelper"

    .line 26
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "File "

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " already exists. Skipping restore."

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->lock:Ljava/lang/Object;

    .line 55
    monitor-enter v0

    .line 57
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;->fileNamesAndPostProcess:Ljava/util/Map;

    .line 61
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 70
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 71
    if-eqz p0, :cond_1

    .line 73
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    .line 81
    throw p0
    .line 82
.end method
