.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$RotationWatcher$onRotationChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $newRotation:I

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$RotationWatcher$onRotationChanged$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 2
    iput p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$RotationWatcher$onRotationChanged$1;->$newRotation:I

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$RotationWatcher$onRotationChanged$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 2
    iget p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$RotationWatcher$onRotationChanged$1;->$newRotation:I

    .line 4
    const-wide/16 v1, 0x1000

    .line 6
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 8
    move-result v3

    .line 11
    if-eqz v3, :cond_2

    .line 12
    const-string v3, "UnfoldLightRevealOverlayAnimation#onRotationChanged"

    .line 14
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    :try_start_0
    iget v3, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->currentRotation:I

    .line 19
    if-eq v3, p0, :cond_1

    .line 21
    iput p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->currentRotation:I

    .line 23
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->scrimView:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 25
    if-nez p0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->createLightRevealEffect()Lcom/android/systemui/statusbar/LinearLightRevealEffect;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 34
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->root:Landroid/view/SurfaceControlViewHost;

    .line 37
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    throw p0

    .line 56
    :cond_2
    iget v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->currentRotation:I

    .line 57
    if-eq v1, p0, :cond_4

    .line 59
    iput p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->currentRotation:I

    .line 61
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->scrimView:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 63
    if-nez p0, :cond_3

    .line 65
    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->createLightRevealEffect()Lcom/android/systemui/statusbar/LinearLightRevealEffect;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 72
    :goto_1
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->root:Landroid/view/SurfaceControlViewHost;

    .line 75
    if-eqz p0, :cond_4

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    return-object p0
    .line 88
.end method
