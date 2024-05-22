.class public final Lcom/android/systemui/DessertCaseView$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field public final synthetic val$squatter:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$4;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$4;->val$squatter:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/DessertCaseView$4;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$4;->val$squatter:Landroid/view/View;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
