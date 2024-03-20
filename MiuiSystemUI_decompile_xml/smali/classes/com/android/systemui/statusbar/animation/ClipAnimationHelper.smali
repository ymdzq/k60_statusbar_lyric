.class public final Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBoostModeTargetLayers:I

.field public final mClipRectF:Landroid/graphics/RectF;

.field public final mCurrentRect:Landroid/graphics/RectF;

.field public final mCurrentRectWithInsets:Landroid/graphics/RectF;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field public final mSourceInsets:Landroid/graphics/Rect;

.field public final mSourceRect:Landroid/graphics/RectF;

.field public final mSourceStackBounds:Landroid/graphics/Rect;

.field public final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field public final mTargetRect:Landroid/graphics/RectF;

.field public final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    .line 33
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    .line 47
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    .line 54
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    .line 61
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    .line 68
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    .line 73
    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/systemui/statusbar/animation/ClipAnimationHelper;->mBoostModeTargetLayers:I

    .line 76
    return-void
    .line 78
.end method
