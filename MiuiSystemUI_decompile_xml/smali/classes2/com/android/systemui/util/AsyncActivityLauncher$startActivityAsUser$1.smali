.class public final Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $activityOptions:Landroid/os/Bundle;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $userHandle:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/util/AsyncActivityLauncher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$intent:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$activityOptions:Landroid/os/Bundle;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$userHandle:Landroid/os/UserHandle;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/util/AsyncActivityLauncher;->activityTaskManager:Landroid/app/IActivityTaskManager;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lcom/android/systemui/util/AsyncActivityLauncher;->context:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/util/AsyncActivityLauncher;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 20
    iget-object v5, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$intent:Landroid/content/Intent;

    .line 21
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    iget-object v12, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$activityOptions:Landroid/os/Bundle;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$userHandle:Landroid/os/UserHandle;

    .line 31
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 33
    move-result v13

    .line 36
    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    .line 37
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v2, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;

    .line 45
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;-><init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/app/WaitResult;)V

    .line 47
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
    .line 53
.end method
