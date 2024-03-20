.class public final synthetic Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthPanelController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

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
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 23
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 27
    return-void

    .line 30
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Float;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 42
    move-result p1

    .line 45
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    .line 46
    return-void

    .line 48
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Integer;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result p1

    .line 63
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 64
    return-void

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Integer;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result p1

    .line 81
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 82
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 86
.end method
