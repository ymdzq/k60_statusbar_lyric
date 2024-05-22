.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $progress:F

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 2
    iput p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->$progress:F

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->scrimView:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 4
    if-nez v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->$progress:F

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->calculateRevealAmount(Ljava/lang/Float;)F

    .line 15
    move-result v0

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 22
    iget p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->$progress:F

    .line 24
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->overlayAddReason:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    .line 26
    sget-object v2, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->UNFOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    .line 28
    if-ne v1, v2, :cond_2

    .line 30
    const v1, 0x3f4ccccd    # 0.8f

    .line 32
    cmpg-float p0, p0, v1

    .line 35
    if-gez p0, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 42
    :goto_2
    iget-boolean v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isTouchBlocked:Z

    .line 43
    if-eq v1, p0, :cond_5

    .line 45
    iput-boolean p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isTouchBlocked:Z

    .line 47
    const-wide/16 v1, 0x1000

    .line 49
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    const-string p0, "UnfoldLightRevealOverlayAnimation#relayoutToUpdateTouch"

    .line 57
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 59
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->root:Landroid/view/SurfaceControlViewHost;

    .line 62
    if-eqz p0, :cond_3

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    goto :goto_3

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    throw p0

    .line 81
    :cond_4
    iget-object p0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->root:Landroid/view/SurfaceControlViewHost;

    .line 82
    if-eqz p0, :cond_5

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    return-object p0
    .line 95
.end method
