.class public final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/view/SurfaceControl$Builder;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->executor:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;

    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Landroid/view/SurfaceControl$Builder;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void

    .line 22
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->ensureOverlayRemoved()V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 36
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isUnfoldHandled:Z

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result p1

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isFolded:Z

    .line 47
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
