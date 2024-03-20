.class public Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT_LARGE_GENERAL_RATIO:F = 0.5625f

.field public static final DEFAULT_XLARGE_WIDE_RATIO:F = 1.3333334f

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeGirdLevel"


# instance fields
.field private final mFullGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

.field private mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

.field private final mHorizontalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

.field private mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

.field public mLevelType:F

.field public mMaxAspectRatio:F

.field public mMaxRealHeight:F

.field public mMaxRealWidth:F

.field public mMinAspectRatio:F

.field public mMinRealHeight:F

.field public mMinRealWidth:F

.field public mScalingFactor:F

.field private final mVerticalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

.field private mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;


# direct methods
.method public static synthetic $r8$lambda$0Ut8qCsYVj5ohPPx64jg6-zw1bw(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->lambda$new$0(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$ON4VNwuJ6RNWgXT6wfbAMKnur9o(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->lambda$new$2(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$dSyidIEmn7hWFgtNVH_x0Z6bKSk(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->lambda$new$1(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 10
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;I)V

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 18
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;

    .line 20
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;I)V

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 26
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;

    .line 28
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;I)V

    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 34
    return-void
    .line 36
.end method

.method private calculateRealBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->calculateScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 7
    return-object v0
    .line 10
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    const/high16 v2, 0x429c0000    # 78.0f

    .line 23
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 25
    move-result v1

    .line 28
    sub-float/2addr v0, v1

    .line 29
    const v1, 0x3e99999a    # 0.3f

    .line 30
    mul-float/2addr v1, v0

    .line 33
    const v2, 0x3ecccccd    # 0.4f

    .line 34
    mul-float v3, v0, v2

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 44
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    const v5, 0x3e851eb8    # 0.26f

    .line 49
    mul-float/2addr v0, v5

    .line 52
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 60
    const/high16 v5, 0x43d20000    # 420.0f

    .line 61
    invoke-static {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 63
    move-result p1

    .line 66
    const/high16 v5, 0x40000000    # 2.0f

    .line 67
    div-float v6, p1, v5

    .line 69
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 71
    if-nez v7, :cond_0

    .line 73
    new-instance v7, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 75
    invoke-direct {v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;-><init>()V

    .line 77
    iput-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 80
    :cond_0
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 82
    const/high16 v8, 0x3f800000    # 1.0f

    .line 84
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setLevelType(F)V

    .line 86
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 89
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setScalingFactor(F)V

    .line 91
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 94
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxAspectRatio(F)V

    .line 96
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 99
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinAspectRatio(F)V

    .line 101
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 104
    invoke-virtual {v2, v4, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMaxWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 106
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 109
    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMinWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 111
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 114
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMiniWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 117
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 120
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealHeight(F)V

    .line 127
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 130
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealWidth(F)V

    .line 132
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 135
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealHeight(F)V

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 140
    return-object p0
    .line 142
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    const/high16 v2, 0x429c0000    # 78.0f

    .line 23
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 25
    move-result v1

    .line 28
    sub-float/2addr v0, v1

    .line 29
    const v1, 0x3e99999a    # 0.3f

    .line 30
    mul-float/2addr v1, v0

    .line 33
    const v2, 0x3f0a3d71    # 0.54f

    .line 34
    mul-float/2addr v0, v2

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 43
    move-result p2

    .line 46
    int-to-float p2, p2

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 55
    const/high16 v3, 0x43d20000    # 420.0f

    .line 56
    invoke-static {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 58
    move-result p1

    .line 61
    const/high16 v3, 0x3f400000    # 0.75f

    .line 62
    div-float v4, p1, v3

    .line 64
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 66
    if-nez v5, :cond_0

    .line 68
    new-instance v5, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 70
    invoke-direct {v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;-><init>()V

    .line 72
    iput-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 75
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 77
    const/high16 v6, 0x40000000    # 2.0f

    .line 79
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setLevelType(F)V

    .line 81
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 84
    const/high16 v6, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setScalingFactor(F)V

    .line 88
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 91
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxAspectRatio(F)V

    .line 93
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 96
    const v5, 0x3ecccccd    # 0.4f

    .line 98
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinAspectRatio(F)V

    .line 101
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 104
    invoke-virtual {v3, v2, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMaxWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 106
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 109
    invoke-virtual {v3, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMinWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 114
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v0, v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMiniWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 117
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealHeight(F)V

    .line 127
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 130
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealWidth(F)V

    .line 132
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 135
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealHeight(F)V

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 140
    return-object p0
    .line 142
.end method

.method private synthetic lambda$new$2(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    const/high16 v2, 0x429c0000    # 78.0f

    .line 23
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 25
    move-result v1

    .line 28
    sub-float/2addr v0, v1

    .line 29
    const v1, 0x3ecccccd    # 0.4f

    .line 30
    mul-float/2addr v1, v0

    .line 33
    const v2, 0x3faaaaab

    .line 34
    mul-float v3, v1, v2

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 44
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    const v5, 0x3e851eb8    # 0.26f

    .line 49
    mul-float/2addr v0, v5

    .line 52
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;->getMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 60
    const/high16 v5, 0x44520000    # 840.0f

    .line 61
    invoke-static {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 63
    move-result p1

    .line 66
    const/high16 v5, 0x40000000    # 2.0f

    .line 67
    div-float v6, p1, v5

    .line 69
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 71
    if-nez v7, :cond_0

    .line 73
    new-instance v7, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 75
    invoke-direct {v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;-><init>()V

    .line 77
    iput-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 80
    :cond_0
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 82
    const/high16 v8, 0x40400000    # 3.0f

    .line 84
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setLevelType(F)V

    .line 86
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 89
    const/high16 v8, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setScalingFactor(F)V

    .line 93
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 96
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxAspectRatio(F)V

    .line 98
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 101
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinAspectRatio(F)V

    .line 103
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 106
    invoke-virtual {v2, v4, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMaxWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 108
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 111
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMinWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 113
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 116
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->setMiniWidthAndHeight(FF)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 122
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 127
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMaxRealHeight(F)V

    .line 129
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 132
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealWidth(F)V

    .line 134
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 137
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->setMinRealHeight(F)V

    .line 139
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGridLevel:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 142
    return-object p0
    .line 144
.end method


# virtual methods
.method public applyGridLevel(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;ILandroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 11
    invoke-interface {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;->onGridLevelApplied(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 13
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 18
    invoke-interface {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;->onGridLevelApplied(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 25
    invoke-interface {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;->onGridLevelApplied(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 32
    invoke-interface {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;->onGridLevelApplied(Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method

.method public calBoundsForAutoResize(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinAspectRatio()F

    .line 2
    move-result v0

    .line 5
    cmpl-float v0, p2, v0

    .line 6
    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxAspectRatio()F

    .line 10
    move-result v0

    .line 13
    cmpg-float v0, p2, v0

    .line 14
    if-gtz v0, :cond_0

    .line 16
    move v0, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->isVerticalLevel()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const v0, 0x3faaaaab

    .line 29
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->adjustPosition(Landroid/graphics/Rect;FFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public calculateScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    const v1, 0x3f8ccccd    # 1.1f

    .line 7
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealWidth:F

    .line 22
    cmpl-float v0, v0, v2

    .line 24
    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 28
    move-result p0

    .line 31
    :goto_0
    int-to-float p0, p0

    .line 32
    div-float/2addr v2, p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 35
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealHeight:F

    .line 40
    cmpl-float v0, v0, v2

    .line 42
    if-lez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 46
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 51
    move-result v0

    .line 54
    int-to-float v0, v0

    .line 55
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealWidth:F

    .line 56
    cmpg-float v0, v0, v2

    .line 58
    if-gez v0, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 62
    move-result p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 67
    move-result v0

    .line 70
    int-to-float v0, v0

    .line 71
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealHeight:F

    .line 72
    cmpg-float v0, v0, p0

    .line 74
    if-gez v0, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 78
    move-result v0

    .line 81
    int-to-float v0, v0

    .line 82
    div-float v2, p0, v0

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    move v2, v1

    .line 86
    :goto_1
    cmpl-float p0, v2, v1

    .line 87
    if-eqz p0, :cond_4

    .line 89
    new-instance p0, Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 93
    invoke-static {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    :cond_4
    return v2
    .line 103
.end method

.method public getLevelType()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mLevelType:F

    .line 2
    return p0
    .line 4
.end method

.method public getMaxAspectRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxAspectRatio:F

    .line 2
    return p0
    .line 4
.end method

.method public getMaxRealHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getMaxRealWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public getMinAspectRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinAspectRatio:F

    .line 2
    return p0
    .line 4
.end method

.method public getMinRealHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getMinRealWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public getScalingFactor()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mScalingFactor:F

    .line 2
    return p0
    .line 4
.end method

.method public isFullLevel()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mLevelType:F

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    cmpl-float p0, p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isHorizontalLevel()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mLevelType:F

    .line 2
    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    cmpl-float p0, p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isVerticalLevel()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mLevelType:F

    .line 2
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    cmpl-float p0, p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final registerAllGridLevel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->registerFullGridLevel()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->registerVerticalGridLevel()V

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->registerHorizontalGridLevel()V

    .line 8
    return-void
    .line 11
.end method

.method public final registerFullGridLevel()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mFullGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->registerGridLevelListener(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;)V

    .line 5
    return-void
    .line 8
.end method

.method public final registerHorizontalGridLevel()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mHorizontalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->registerGridLevelListener(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;)V

    .line 5
    return-void
    .line 8
.end method

.method public final registerVerticalGridLevel()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mVerticalGrid:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->registerGridLevelListener(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel$IMiuiInfinityModeGird;)V

    .line 5
    return-void
    .line 8
.end method

.method public setLevelType(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mLevelType:F

    .line 2
    return-void
    .line 4
.end method

.method public setMaxAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxAspectRatio:F

    .line 2
    return-void
    .line 4
.end method

.method public setMaxRealHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealHeight:F

    .line 2
    return-void
    .line 4
.end method

.method public setMaxRealWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealWidth:F

    .line 2
    return-void
    .line 4
.end method

.method public setMinAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinAspectRatio:F

    .line 2
    return-void
    .line 4
.end method

.method public setMinRealHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealHeight:F

    .line 2
    return-void
    .line 4
.end method

.method public setMinRealWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealWidth:F

    .line 2
    return-void
    .line 4
.end method

.method public setScalingFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mScalingFactor:F

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiInfinityModeGirdLevel{mScalingFactor="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mScalingFactor:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", mMaxAspectRatio="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxAspectRatio:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mMinAspectRatio="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinAspectRatio:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mMinRealWidth="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealWidth:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mMinRealHeight="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMinRealHeight:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mMaxRealWidth="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealWidth:F

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mMaxRealHeight="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->mMaxRealHeight:F

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-super {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 p0, 0x7d

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    return-object p0
    .line 95
.end method

.method public updateDestAttrForMinimize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->calculateRealBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    mul-float/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v0, v2

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v2, v1

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v2, v1

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 32
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 35
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMiniBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo p3, "updateDestAttrForMinimize normalScale="

    .line 43
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    const-string p3, ", freeformBounds="

    .line 52
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    const-string p2, "MiuiInfinityModeGirdLevel"

    .line 64
    invoke-static {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMiniScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 72
    const/4 p0, 0x2

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 76
    return-void
    .line 79
.end method

.method public updateDestAttrForNormalmize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->calculateRealBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    mul-float/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v0, v1

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "updateDestAttrForNormalmize normalScale="

    .line 28
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", freeformBounds="

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    const-string p2, "MiuiInfinityModeGirdLevel"

    .line 49
    invoke-static {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 54
    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 58
    return-void
    .line 61
.end method
