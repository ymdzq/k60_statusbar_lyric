.class public final synthetic Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic f$2:Landroidx/dynamicanimation/animation/SpringForce;

.field public final synthetic f$3:Ljava/lang/Float;

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$1;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Float;

    .line 11
    iput p5, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$4:F

    .line 13
    iput p6, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$5:F

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 6
    if-nez p2, :cond_1

    .line 8
    iget-object p1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 10
    iget-object p2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setRestingPosition(Landroid/graphics/PointF;)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Float;

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$5:F

    .line 26
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    .line 28
    move-result p1

    .line 31
    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;->f$4:F

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 34
    move-result p0

    .line 37
    :goto_0
    move v4, p0

    .line 38
    const/4 p0, 0x0

    .line 39
    new-array v5, p0, [Ljava/lang/Runnable;

    .line 40
    move v3, p4

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :goto_1
    return-void
    .line 50
.end method
