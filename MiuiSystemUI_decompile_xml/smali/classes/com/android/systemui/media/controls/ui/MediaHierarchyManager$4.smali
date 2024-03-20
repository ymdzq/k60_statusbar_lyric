.class public final Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullyAwake:Z

    .line 8
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullyAwake:Z

    .line 13
    const/4 v0, 0x2

    .line 15
    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullyAwake:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullyAwake:Z

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Z)V

    .line 5
    return-void
    .line 8
.end method
