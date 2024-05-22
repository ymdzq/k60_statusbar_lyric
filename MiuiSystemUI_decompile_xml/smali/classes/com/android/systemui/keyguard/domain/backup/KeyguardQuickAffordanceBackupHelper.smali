.class public final Lcom/android/systemui/keyguard/domain/backup/KeyguardQuickAffordanceBackupHelper;
.super Landroid/app/backup/SharedPreferencesBackupHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "quick_affordance_selections"

    .line 2
    invoke-static {p2, v0}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 11
    filled-new-array {p2}, [Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method
