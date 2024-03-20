.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $from:F

.field public final synthetic $positions:I

.field public final synthetic $to:F

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$positions:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$to:F

    .line 8
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$from:F

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    iget v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$to:F

    .line 6
    iget v3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$from:F

    .line 8
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/animation/ValueAnimator;FF)V

    .line 10
    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;->$positions:I

    .line 13
    invoke-static {p0, v0}, Lcom/android/systemui/complication/ComplicationLayoutParams;->iteratePositions(ILjava/util/function/Consumer;)V

    .line 15
    return-void
    .line 18
.end method
