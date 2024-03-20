.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $isIconRipple:Z

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->$isIconRipple:Z

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->$isIconRipple:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 11
    invoke-static {v0, p1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V

    .line 20
    :goto_0
    sget v0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->$r8$clinit:I

    .line 23
    const-wide/16 v0, 0x14d

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setDuration(J)V

    .line 27
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->isStarted:Z

    .line 31
    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 42
    iget-wide v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 49
    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;

    .line 51
    invoke-direct {v1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleView;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 59
    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$2;

    .line 61
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$2;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    return-void
    .line 78
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
