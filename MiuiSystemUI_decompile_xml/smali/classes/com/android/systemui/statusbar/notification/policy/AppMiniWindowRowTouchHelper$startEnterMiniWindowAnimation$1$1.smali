.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $from:Landroid/graphics/Rect;

.field public final synthetic $to:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->$from:Landroid/graphics/Rect;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->$to:Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mExpandedParams:Lcom/android/systemui/statusbar/notification/MiniWindowExpandParameters;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->$from:Landroid/graphics/Rect;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterMiniWindowAnimation$1$1;->$to:Landroid/graphics/Rect;

    .line 18
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 20
    int-to-float v4, v3

    .line 22
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 23
    sub-int/2addr v5, v3

    .line 25
    int-to-float v3, v5

    .line 26
    mul-float/2addr v3, p1

    .line 27
    add-float/2addr v3, v4

    .line 28
    float-to-int v3, v3

    .line 29
    iput v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 30
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 32
    int-to-float v4, v3

    .line 34
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 35
    sub-int/2addr v5, v3

    .line 37
    int-to-float v3, v5

    .line 38
    mul-float/2addr v3, p1

    .line 39
    add-float/2addr v3, v4

    .line 40
    float-to-int v3, v3

    .line 41
    iput v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 42
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 44
    int-to-float v4, v3

    .line 46
    iget v5, p0, Landroid/graphics/Rect;->right:I

    .line 47
    sub-int/2addr v5, v3

    .line 49
    int-to-float v3, v5

    .line 50
    mul-float/2addr v3, p1

    .line 51
    add-float/2addr v3, v4

    .line 52
    float-to-int v3, v3

    .line 53
    iput v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 54
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 56
    int-to-float v3, v2

    .line 58
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 59
    sub-int/2addr p0, v2

    .line 61
    int-to-float p0, p0

    .line 62
    mul-float/2addr p0, p1

    .line 63
    add-float/2addr p0, v3

    .line 64
    float-to-int p0, p0

    .line 65
    iput p0, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->onExpandedParamsUpdated()V

    .line 68
    return-void
    .line 71
.end method
