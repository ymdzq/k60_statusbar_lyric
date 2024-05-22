.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final synthetic f$1:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$2:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$1:Landroid/content/pm/ShortcutInfo;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$2:Landroid/app/ActivityOptions;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$1:Landroid/content/pm/ShortcutInfo;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda8;->f$2:Landroid/app/ActivityOptions;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v3, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 22
    move-result-object v4

    .line 25
    invoke-virtual {v2, v3, v1, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 26
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    .line 29
    move-result-object p0

    .line 32
    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 33
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v1, v0, v3}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    .line 36
    iget-object v4, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 39
    new-instance v5, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 41
    invoke-direct {v5, v3, v2, v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    .line 43
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    .line 49
    return-void
    .line 52
.end method
