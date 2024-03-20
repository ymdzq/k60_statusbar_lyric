.class public final Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$animationEndTag:I

.field public final synthetic val$animationStartTag:I

.field public final synthetic val$animatorTag:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    .line 6
    iput p4, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    .line 19
    invoke-virtual {p1, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    return-void
.end method
