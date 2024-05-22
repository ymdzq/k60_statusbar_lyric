.class public final Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 2
    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 7
    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 11
    move-result-object p1

    .line 14
    const/high16 p2, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 20
    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 33
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method
