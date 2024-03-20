.class Lcom/android/settings/backup/MiuiFlashDriveBackupController$1;
.super Landroid/os/storage/StorageEventListener;
.source "MiuiFlashDriveBackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/MiuiFlashDriveBackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/MiuiFlashDriveBackupController;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/MiuiFlashDriveBackupController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController$1;->this$0:Lcom/android/settings/backup/MiuiFlashDriveBackupController;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onVolumeStateChanged: type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MiuiFlashDriveBackup"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController$1;->this$0:Lcom/android/settings/backup/MiuiFlashDriveBackupController;

    invoke-static {p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->-$$Nest$mupdateFlashDriveBackupPreference(Lcom/android/settings/backup/MiuiFlashDriveBackupController;)V

    :cond_0
    return-void
.end method
