.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/DismissView;

.field public final synthetic f$2:Lcom/android/systemui/accessibility/floatingmenu/MenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;Lcom/android/wm/shell/bubbles/DismissView;Lcom/android/systemui/accessibility/floatingmenu/MenuView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/DismissView;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/DismissView;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
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
    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mSizePercent:F

    .line 21
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 23
    move-result v0

    .line 26
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 38
    const v0, 0x3f333333    # 0.7f

    .line 41
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 44
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 48
    return-void
    .line 51
.end method
