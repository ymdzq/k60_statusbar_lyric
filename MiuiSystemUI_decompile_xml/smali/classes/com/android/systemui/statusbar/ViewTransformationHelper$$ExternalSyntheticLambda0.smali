.class public final synthetic Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/TransformableView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 30
    move-result p1

    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
