.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final key:I

.field public mFreeformBounds:Landroid/graphics/Rect;

.field public final mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

.field public final mFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field public final mTopActivity:Landroid/content/ComponentName;

.field public final packageName:Ljava/lang/String;

.field public final pinFloatingWindowPos:Landroid/graphics/Rect;

.field public final userId:I

.field public final windowRoundCorner:F

.field public final windowScaleX:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 7
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, ""

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 29
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 35
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 48
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 52
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 58
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 60
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 62
    move-result-object v0

    .line 65
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 68
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mTopActivity:Landroid/content/ComponentName;

    .line 70
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->updateFreeformBounds()V

    .line 72
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 75
    move-result v0

    .line 78
    const/4 v1, 0x3

    .line 79
    sget-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 80
    if-ne v0, v1, :cond_1

    .line 82
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_MINI:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 84
    goto :goto_1

    .line 86
    :cond_1
    move-object v0, v2

    .line 87
    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 88
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 90
    move-result v1

    .line 93
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowScaleX:F

    .line 94
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 99
    move-result p1

    .line 102
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowRoundCorner:F

    .line 103
    const/4 v1, 0x0

    .line 105
    cmpg-float p1, p1, v1

    .line 106
    if-gtz p1, :cond_3

    .line 108
    if-ne v0, v2, :cond_2

    .line 110
    const p1, 0x4248b50b

    .line 112
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowRoundCorner:F

    .line 115
    goto :goto_2

    .line 117
    :cond_2
    const p1, 0x421cb01c

    .line 118
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowRoundCorner:F

    .line 121
    :cond_3
    :goto_2
    return-void
    .line 123
.end method


# virtual methods
.method public final updateFreeformBounds()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformBounds:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 15
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformBounds:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 24
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 28
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v1

    .line 33
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 36
    return-void
    .line 39
.end method
