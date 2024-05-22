.class public final Lcom/android/wm/shell/pip/PipUiEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageName:Ljava/lang/String;

.field public mPackageUid:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    .line 6
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 12
    invoke-interface {p0, p1, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 14
    :cond_1
    :goto_0
    return-void
    .line 17
.end method

.method public final setTaskInfo(Landroid/app/TaskInfo;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    .line 13
    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 20
    move-result-object p1

    .line 23
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    .line 30
    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    .line 32
    :goto_0
    return-void
    .line 34
.end method
