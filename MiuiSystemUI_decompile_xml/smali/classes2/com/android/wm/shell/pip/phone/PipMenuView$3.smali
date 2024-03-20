.class public final Lcom/android/wm/shell/pip/phone/PipMenuView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final synthetic val$allowMenuTimeout:Z

.field public final synthetic val$menuState:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$menuState:I

    .line 4
    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 5
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$menuState:I

    .line 7
    iput v1, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 9
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 11
    iget v2, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 13
    if-eq v1, v2, :cond_0

    .line 15
    iget-object v2, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 17
    new-instance v3, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;

    .line 19
    invoke-direct {v3, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    :cond_0
    iput v1, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 27
    const/4 v2, 0x0

    .line 29
    iget-object v3, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 34
    iget-object v1, v3, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 42
    if-nez v1, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(ILandroid/view/View;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, v3, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 57
    if-nez p1, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(ILandroid/view/View;)V

    .line 63
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    .line 66
    if-eqz p1, :cond_4

    .line 68
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 70
    const/16 p1, 0xdac

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 74
    :cond_4
    return-void
    .line 77
.end method
