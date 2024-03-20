.class public final Lcom/google/android/material/navigation/NavigationBarItemView$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

.field public final synthetic val$newProgress:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    iput p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->val$newProgress:F

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 12
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$3;->val$newProgress:F

    .line 14
    sget-object v1, Lcom/google/android/material/navigation/NavigationBarItemView;->CHECKED_STATE_SET:[I

    .line 16
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorProgress(FF)V

    .line 18
    return-void
    .line 21
.end method
