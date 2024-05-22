.class public final Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFromRadius:F

.field public final mToRadius:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;->mFromRadius:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;->mToRadius:F

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;->mFromRadius:F

    .line 2
    instance-of v1, p2, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast p2, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 8
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$RadiusAnimation;->mToRadius:F

    .line 10
    invoke-static {p0, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 12
    move-result p0

    .line 15
    iput p0, p2, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "RadiusAnimation"

    .line 19
    const-string p1, "RadiusAnimation must use for ScaleTransformation"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void
    .line 26
.end method

.method public final willChangeBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final willChangeTransformationMatrix()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
