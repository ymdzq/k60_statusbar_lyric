.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Float;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 33
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    .line 37
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method
