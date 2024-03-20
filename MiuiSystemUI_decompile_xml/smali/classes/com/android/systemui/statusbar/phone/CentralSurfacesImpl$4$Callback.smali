.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/OverlayPlugin$Callback;


# instance fields
.field public final mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

.field public final synthetic this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onHoldStatusBarOpenChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    .line 4
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 18
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;

    .line 27
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 30
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
    .line 38
.end method
