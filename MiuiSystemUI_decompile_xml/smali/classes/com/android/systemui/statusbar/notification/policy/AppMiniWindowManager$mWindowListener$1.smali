.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;
.super Lmiui/process/IForegroundWindowListener$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $handler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;->$handler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0}, Lmiui/process/IForegroundWindowListener$Stub;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 2
    const-string v0, "onForegroundWindowChanged: "

    .line 4
    const-string v1, "AppMiniWindowManager"

    .line 6
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;

    .line 11
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;->mTopWindowPackage:Ljava/lang/String;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;->mOneshotForegroundListeners:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_3

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    move-object v5, v3

    .line 37
    check-cast v5, Lcom/android/systemui/statusbar/notification/policy/WindowForegroundListener;

    .line 38
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/policy/WindowForegroundListener;->packageName:Ljava/lang/String;

    .line 40
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    const-string v5, "com.miui.securitycenter"

    .line 48
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    goto :goto_1

    .line 56
    :cond_1
    const/4 v4, 0x0

    .line 57
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 67
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/statusbar/notification/policy/WindowForegroundListener;

    .line 78
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/policy/WindowForegroundListener;->callback:Lkotlin/jvm/functions/Function0;

    .line 80
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 82
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;->$handler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$1$onTopActivityMayChanged$1;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$mWindowListener$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;

    .line 93
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$1$onTopActivityMayChanged$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;I)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
    .line 101
.end method
