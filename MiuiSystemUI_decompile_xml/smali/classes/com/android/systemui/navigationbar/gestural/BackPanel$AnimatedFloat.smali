.class public final Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public pos:F

.field public restingPosition:F

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V
    .locals 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 p3, p5, 0x4

    if-eqz p3, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat$floatProp$1;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat$floatProp$1;-><init>()V

    .line 4
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p2, p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 6
    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 8
    iput p1, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    :cond_0
    if-eqz p5, :cond_1

    .line 9
    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 10
    iput p1, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 12
    :cond_2
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public static stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    if-eqz p3, :cond_0

    .line 4
    const/4 p2, 0x0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 7
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 11
    move-result p2

    .line 14
    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 15
    iput p2, p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 18
    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 20
    add-float/2addr p0, p1

    .line 22
    invoke-virtual {p3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 23
    return-void
    .line 26
.end method


# virtual methods
.method public final setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 4
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 7
    return-void
    .line 9
.end method

.method public final snapTo(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 4
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 7
    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 11
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 14
    cmpg-float v0, v0, p1

    .line 16
    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final snapToRestingPosition()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 4
    return-void
    .line 7
.end method

.method public final stretchBy(Ljava/lang/Float;F)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 10
    sub-float/2addr p1, v0

    .line 12
    mul-float/2addr p1, p2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 14
    add-float/2addr v0, p1

    .line 16
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 17
    return-void
    .line 20
.end method

.method public final updateRestingPosition(Ljava/lang/Float;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 9
    if-eqz p2, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 13
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 19
    :goto_0
    return-void
    .line 22
.end method
