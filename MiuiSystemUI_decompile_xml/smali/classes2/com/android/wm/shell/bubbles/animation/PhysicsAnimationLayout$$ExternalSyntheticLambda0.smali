.class public final synthetic Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 3

    .line 1
    sget p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->$r8$clinit:I

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 8
    move-result p2

    .line 11
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda0;->f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 14
    invoke-virtual {v1, p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I

    .line 16
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    if-gez p2, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 26
    invoke-virtual {p2, p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F

    .line 28
    move-result p2

    .line 31
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 32
    move-result v2

    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {p0, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getSpringAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 42
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    add-float/2addr p1, p2

    .line 48
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 49
    :cond_1
    :goto_0
    return-void
    .line 52
.end method
