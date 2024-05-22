.class public final Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

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
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

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
    iput p1, v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 27
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 29
    return-void

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Float;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 41
    move-result p1

    .line 44
    iput p1, v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 49
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 54
.end method
