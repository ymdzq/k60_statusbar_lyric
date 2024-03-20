.class public abstract Lcom/android/settings/backup/AgentBase;
.super Ljava/lang/Object;
.source "AgentBase.java"


# instance fields
.field protected mAgent:Lmiui/app/backup/FullBackupAgent;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    return-void
.end method


# virtual methods
.method public abstract endRestore(Lmiui/app/backup/BackupMeta;)I
.end method

.method public abstract fullBackup(Landroid/os/ParcelFileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBackupVersion()I
.end method

.method public abstract restoreAttaches(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
.end method

.method public abstract restoreData(Landroid/os/ParcelFileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method
