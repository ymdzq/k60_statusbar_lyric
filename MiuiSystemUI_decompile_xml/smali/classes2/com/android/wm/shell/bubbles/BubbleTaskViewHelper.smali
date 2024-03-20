.class public final Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

.field public final mParentView:Landroid/view/View;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mTaskId:I

.field public mTaskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

.field public final mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    .line 6
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 17
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 19
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    .line 21
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    .line 23
    new-instance p3, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 25
    iget-object p4, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 27
    iget-object v2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 29
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 31
    invoke-direct {p3, p1, p2, p4, v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 33
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 36
    new-instance p2, Lcom/android/wm/shell/taskview/TaskView;

    .line 38
    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/taskview/TaskView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 43
    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    .line 45
    return-void
    .line 48
.end method
