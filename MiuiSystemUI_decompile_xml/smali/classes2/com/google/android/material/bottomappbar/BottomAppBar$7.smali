.class public final Lcom/google/android/material/bottomappbar/BottomAppBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public cancelled:Z

.field public final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field public final synthetic val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic val$targetAttached:Z

.field public final synthetic val$targetMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    .line 6
    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    .line 2
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 6
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    iput v1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 20
    move-result-object v1

    .line 23
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 24
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 30
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 32
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    .line 34
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    .line 36
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    .line 38
    :cond_2
    return-void
    .line 41
.end method
