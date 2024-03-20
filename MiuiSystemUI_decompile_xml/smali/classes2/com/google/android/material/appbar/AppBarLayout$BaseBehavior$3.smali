.class public final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field public final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic val$dy:I

.field public final synthetic val$scrollingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    iput-object p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$scrollingView:Landroid/view/View;

    .line 8
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$dy:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$scrollingView:Landroid/view/View;

    .line 8
    iget v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$dy:I

    .line 10
    const/4 p0, 0x0

    .line 12
    filled-new-array {p0, p0}, [I

    .line 13
    move-result-object v5

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method
