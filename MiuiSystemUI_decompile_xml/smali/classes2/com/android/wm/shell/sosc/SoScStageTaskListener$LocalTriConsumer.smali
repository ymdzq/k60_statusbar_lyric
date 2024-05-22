.class Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mFirstAppeared:Z

.field mLeash:Landroid/view/SurfaceControl;

.field mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->this$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mFirstAppeared:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public accept()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->this$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mLeash:Landroid/view/SurfaceControl;

    .line 21
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$LocalTriConsumer;->mFirstAppeared:Z

    .line 23
    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->-$$Nest$mupdateChildTaskSurface(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 25
    :cond_1
    :goto_0
    return-void
    .line 28
.end method
