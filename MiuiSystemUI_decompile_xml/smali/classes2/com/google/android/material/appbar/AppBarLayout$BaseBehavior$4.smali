.class public final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$expand:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$expand:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$expand:Z

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0
    .line 10
.end method