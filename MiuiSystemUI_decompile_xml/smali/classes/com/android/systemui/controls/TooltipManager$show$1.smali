.class public final Lcom/android/systemui/controls/TooltipManager$show$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $x:I

.field public final synthetic $y:I

.field public final synthetic this$0:Lcom/android/systemui/controls/TooltipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/TooltipManager;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 2
    iput p2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$x:I

    .line 4
    iput p3, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$y:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 5
    iget-object v2, v2, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 9
    iget-object v2, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 12
    iget-object v2, v2, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 14
    iget v3, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$x:I

    .line 16
    const/4 v4, 0x0

    .line 18
    aget v5, v1, v4

    .line 19
    sub-int/2addr v3, v5

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    .line 22
    move-result v5

    .line 25
    div-int/2addr v5, v0

    .line 26
    sub-int/2addr v3, v5

    .line 27
    int-to-float v0, v3

    .line 28
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 32
    iget-object v2, v0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 34
    iget v3, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->$y:I

    .line 36
    const/4 v5, 0x1

    .line 38
    aget v1, v1, v5

    .line 39
    sub-int/2addr v3, v1

    .line 41
    int-to-float v1, v3

    .line 42
    iget-boolean v0, v0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    .line 43
    if-nez v0, :cond_0

    .line 45
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 47
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v0, v4

    .line 52
    :goto_0
    int-to-float v0, v0

    .line 53
    sub-float/2addr v1, v0

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 62
    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 66
    cmpg-float v0, v0, v1

    .line 67
    if-nez v0, :cond_1

    .line 69
    move v4, v5

    .line 71
    :cond_1
    if-eqz v4, :cond_2

    .line 72
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$show$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 78
    move-result-object p0

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 88
    move-result-object p0

    .line 91
    const-wide/16 v0, 0x1f4

    .line 92
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    move-result-object p0

    .line 97
    const-wide/16 v0, 0x12c

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 100
    move-result-object p0

    .line 103
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 104
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 109
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 113
    :cond_2
    return-void
    .line 116
.end method
