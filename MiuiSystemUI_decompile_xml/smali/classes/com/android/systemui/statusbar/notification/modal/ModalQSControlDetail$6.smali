.class public final Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->$r8$classId:I

    .line 2
    const v1, 0x3dcccccd    # 0.1f

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 23
    mul-float/2addr v1, p1

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    sub-float v1, v2, v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 42
    sub-float/2addr v2, p1

    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 45
    return-void

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Float;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 55
    move-result p1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 61
    mul-float/2addr v1, p1

    .line 63
    const v2, 0x3f666666    # 0.9f

    .line 64
    add-float/2addr v1, v2

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 82
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 86
.end method
