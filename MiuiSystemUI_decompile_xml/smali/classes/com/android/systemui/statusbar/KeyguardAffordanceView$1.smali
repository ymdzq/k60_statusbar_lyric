.class public final Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 11
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 16
    return-void

    .line 18
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 21
    return-void

    .line 23
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 26
    return-void

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 31
    const/4 p1, 0x4

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 38
.end method
