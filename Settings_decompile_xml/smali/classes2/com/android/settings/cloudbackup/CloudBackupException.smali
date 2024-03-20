.class public Lcom/android/settings/cloudbackup/CloudBackupException;
.super Ljava/lang/Exception;
.source "CloudBackupException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static trackException()V
    .locals 1

    const-string v0, "CloudBackupException"

    .line 10
    invoke-static {v0}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException(Ljava/lang/String;)V

    return-void
.end method

.method public static trackException(Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/android/settings/cloudbackup/CloudBackupException;

    invoke-direct {v0, p0}, Lcom/android/settings/cloudbackup/CloudBackupException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackException(Ljava/lang/Throwable;)V

    return-void
.end method
