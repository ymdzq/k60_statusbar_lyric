.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$1:Z

    .line 7
    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$2:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$1:Z

    .line 4
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;->f$2:F

    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 13
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 15
    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 21
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 24
    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 26
    move-result-object v2

    .line 29
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 30
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 32
    const v5, 0x43f9ffff    # 499.99997f

    .line 34
    const/4 v6, 0x0

    .line 37
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 38
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 41
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 43
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 45
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;

    .line 48
    invoke-direct {v3, v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V

    .line 50
    iget-object p0, v2, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 58
    const/16 v1, 0xa

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 62
    filled-new-array {p0}, [Ljava/lang/Runnable;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 72
    return-void
    .line 75
.end method
