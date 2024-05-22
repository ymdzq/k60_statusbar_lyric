.class public final Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReleasedInTarget()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->hideMenuAndShowMessage()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mDismissAnimationController:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 16
    return-void
    .line 19
.end method

.method public final onStuckToTarget()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mDismissAnimationController:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 8
    return-void
    .line 11
.end method

.method public final onUnstuckFromTarget(FFZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mDismissAnimationController:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 8
    return-void
    .line 11
.end method
