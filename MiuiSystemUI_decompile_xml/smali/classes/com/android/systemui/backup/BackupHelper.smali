.class public Lcom/android/systemui/backup/BackupHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final controlsDataLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreate(Landroid/os/UserHandle;I)V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    move-result p2

    .line 8
    const-string v0, "controls_favorites.xml"

    .line 9
    invoke-static {p2, v0}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;

    .line 19
    invoke-direct {v1, p2, p0}, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;-><init>(ILandroid/content/Context;)V

    .line 21
    new-instance p2, Lkotlin/Pair;

    .line 24
    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {p2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    move-result-object p2

    .line 32
    new-instance v0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;

    .line 33
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 35
    const-string/jumbo p2, "systemui.files_no_overwrite"

    .line 38
    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 41
    sget p2, Lcom/android/systemui/people/widget/PeopleBackupHelper;->$r8$clinit:I

    .line 44
    const-string/jumbo p2, "shared_backup"

    .line 46
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object p2

    .line 52
    new-instance v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;

    .line 53
    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/String;

    .line 56
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 61
    check-cast p2, [Ljava/lang/String;

    .line 62
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleBackupHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 64
    const-string/jumbo p2, "systemui.people.shared_preferences"

    .line 67
    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 70
    new-instance p2, Lcom/android/systemui/keyguard/domain/backup/KeyguardQuickAffordanceBackupHelper;

    .line 73
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 75
    move-result p1

    .line 78
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/keyguard/domain/backup/KeyguardQuickAffordanceBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 79
    const-string/jumbo p1, "systemui.keyguard.quickaffordance.shared_preferences"

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 85
    return-void
    .line 88
.end method

.method public final onRestoreFinished()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 5
    const-string v1, "com.android.systemui.backup.RESTORE_FINISHED"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string v1, "android.intent.extra.USER_ID"

    .line 19
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getUserId()I

    .line 21
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 33
    const-string v2, "com.android.systemui.permission.SELF"

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/backup/BackupAgentHelper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method
