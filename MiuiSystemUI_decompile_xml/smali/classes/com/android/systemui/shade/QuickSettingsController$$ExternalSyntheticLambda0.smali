.class public final synthetic Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;IIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 5
    iput p2, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    iput p5, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;->f$5:Z

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 17
    move-result p0

    .line 20
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 21
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-static {v1, v6, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 25
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 30
    invoke-static {v2, v6, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 32
    move-result v2

    .line 35
    float-to-int v2, v2

    .line 36
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 37
    invoke-static {v3, v6, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 39
    move-result v3

    .line 42
    float-to-int v3, v3

    .line 43
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    invoke-static {v4, p1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 46
    move-result p0

    .line 49
    float-to-int v4, p0

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shade/QuickSettingsController;->applyClippingImmediately(IIIIZ)V

    .line 51
    return-void
    .line 54
.end method
