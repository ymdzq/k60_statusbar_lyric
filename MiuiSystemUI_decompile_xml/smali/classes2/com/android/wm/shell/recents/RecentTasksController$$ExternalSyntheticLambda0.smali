.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentTasksController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 12
    const-string v2, "extra_shell_recent_tasks"

    .line 14
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda2;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 24
    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 31
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->setTaskStackListener(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V

    .line 38
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 49
    return-void
    .line 52
.end method
