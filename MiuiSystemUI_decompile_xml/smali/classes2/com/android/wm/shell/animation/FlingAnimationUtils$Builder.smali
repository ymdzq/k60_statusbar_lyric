.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mMaxLengthSeconds:F

.field public mSpeedUpFactor:F

.field public mX2:F

.field public mY2:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final build()Lcom/android/wm/shell/animation/FlingAnimationUtils;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 6
    iget v3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 8
    iget v4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    .line 10
    iget v5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    .line 12
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FFFF)V

    .line 15
    return-object v6
    .line 18
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 3
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    .line 13
    return-void
    .line 15
.end method
