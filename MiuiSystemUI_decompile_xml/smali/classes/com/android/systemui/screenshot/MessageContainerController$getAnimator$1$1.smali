.class public final Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $offset:I

.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 2
    iput p2, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->$offset:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

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
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    .line 14
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    move-object v0, v1

    .line 19
    :cond_0
    iget v2, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->$offset:I

    .line 20
    int-to-float v2, v2

    .line 22
    mul-float/2addr v2, p1

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 30
    if-nez p0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, p0

    .line 35
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 36
    return-void
    .line 39
.end method
