.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mLeash:Landroid/view/SurfaceControl;

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public getLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "DragTaskInfo{mLeash="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string v1, ", mLeash.isValid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 23
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 25
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    if-nez v1, :cond_1

    .line 34
    const-string p0, ", mTaskInfo=null"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, ", mTaskInfo.taskId="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mTaskInfo.topActivity="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    :goto_0
    const-string/jumbo p0, "}"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    return-object p0
    .line 76
.end method
