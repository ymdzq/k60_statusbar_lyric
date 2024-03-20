.class public final Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    .line 7
    const v0, 0x7fffffff

    .line 9
    invoke-direct {p1, v0}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    :goto_0
    if-nez p2, :cond_1

    .line 10
    const/4 p2, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 20
    invoke-interface {p0, p1, v0, p2, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logStart(Landroid/view/DragEvent;)Lcom/android/internal/logging/InstanceId;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 6
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 15
    move-result-object v1

    .line 18
    const-string v2, "android.intent.extra.LOGGING_INSTANCE_ID"

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/internal/logging/InstanceId;

    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 27
    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 31
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 33
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    const-string p1, "application/vnd.android.activity"

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_ACTIVITY:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "application/vnd.android.shortcut"

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 58
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_SHORTCUT:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    const-string p1, "application/vnd.android.task"

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_TASK:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 82
    return-object p0

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string p1, "Not an app drag"

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0
    .line 92
.end method
