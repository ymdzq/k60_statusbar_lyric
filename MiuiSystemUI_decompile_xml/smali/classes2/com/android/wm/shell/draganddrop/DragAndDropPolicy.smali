.class public final Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDisallowHitRegion:Landroid/graphics/RectF;

.field public mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

.field public mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field public final mTargets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 21
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 23
    if-eqz p3, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move-object p3, p4

    .line 28
    :goto_0
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_7

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_4

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x1

    .line 15
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 16
    if-eq p1, v0, :cond_2

    .line 18
    if-ne p1, v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    const/4 v2, -0x1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 29
    if-eqz p1, :cond_3

    .line 31
    xor-int/2addr v0, v1

    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 34
    invoke-virtual {p1, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    .line 36
    move v8, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v8, v2

    .line 41
    :goto_2
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 42
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 46
    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 48
    const-string v0, "application/vnd.android.task"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 55
    const-string v3, "application/vnd.android.shortcut"

    .line 56
    invoke-virtual {p1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 58
    move-result p1

    .line 61
    const-string v3, "android.intent.extra.ACTIVITY_OPTIONS"

    .line 62
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 70
    move-result-object v3

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    .line 75
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 77
    :goto_3
    move-object v9, v3

    .line 80
    const-string v3, "android.intent.extra.USER"

    .line 81
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 83
    move-result-object v3

    .line 86
    check-cast v3, Landroid/os/UserHandle;

    .line 87
    if-eqz v0, :cond_5

    .line 89
    const-string p1, "android.intent.extra.TASK_ID"

    .line 91
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    move-result p1

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 97
    invoke-interface {p0, p1, v8, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;)V

    .line 99
    goto :goto_4

    .line 102
    :cond_5
    if-eqz p1, :cond_6

    .line 103
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 105
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 110
    const-string p1, "android.intent.extra.shortcut.ID"

    .line 111
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 116
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 117
    move v7, v8

    .line 119
    move-object v8, v9

    .line 120
    move-object v9, v3

    .line 121
    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 122
    goto :goto_4

    .line 125
    :cond_6
    const-string p1, "android.intent.extra.PENDING_INTENT"

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 128
    move-result-object p1

    .line 131
    move-object v5, p1

    .line 132
    check-cast v5, Landroid/app/PendingIntent;

    .line 133
    const-string p1, "android.pendingIntent.backgroundActivityAllowed"

    .line 135
    invoke-virtual {v9, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string p1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    .line 140
    invoke-virtual {v9, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 145
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 147
    move-result v6

    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    .line 152
    :cond_7
    :goto_4
    return-void
    .line 155
.end method
