.class public final Lcom/android/systemui/SwipeHelper$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field public final synthetic val$animView:Landroid/view/View;

.field public final synthetic val$canBeDismissed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$2;->val$animView:Landroid/view/View;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$2;->val$canBeDismissed:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$2;->val$animView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper$2;->val$canBeDismissed:Z

    .line 16
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    .line 18
    return-void
    .line 21
.end method
