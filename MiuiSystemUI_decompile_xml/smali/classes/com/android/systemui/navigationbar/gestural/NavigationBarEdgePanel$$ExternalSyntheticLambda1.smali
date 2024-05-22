.class public final synthetic Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

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
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 8
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 10
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 14
    move-result p1

    .line 17
    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 22
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    return-void

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 33
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Float;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 46
    move-result p1

    .line 49
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
