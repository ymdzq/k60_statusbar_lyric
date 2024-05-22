.class public final synthetic Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 14
    move-result p1

    .line 17
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 28
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 30
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 34
    move-result p1

    .line 37
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    .line 38
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 44
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
