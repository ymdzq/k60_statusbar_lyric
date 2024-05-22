.class public final synthetic Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public final synthetic f$1:Landroidx/core/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroidx/core/animation/ValueAnimator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->f$1:Landroidx/core/animation/ValueAnimator;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->f$1:Landroidx/core/animation/ValueAnimator;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setFocusAnimationScaleY(F)V

    .line 27
    return-void

    .line 30
    :goto_0
    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Float;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 42
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setFocusAnimationScaleY(F)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
