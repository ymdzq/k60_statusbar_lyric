.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public indicatorDirection:I

.field public indicatorInset:I

.field public indicatorSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->$r8$clinit:I

    .line 2
    const v0, 0x7f1407ec    # @style/Widget.MaterialComponents.CircularProgressIndicator

    .line 4
    const v1, 0x7f04017b    # @attr/circularProgressIndicatorStyle

    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f070cd5    # @dimen/mtrl_progress_circular_size_medium '40.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    const v2, 0x7f070cd0    # @dimen/mtrl_progress_circular_inset_medium '4.0dp'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v1

    .line 34
    sget-object v4, Lcom/google/android/material/R$styleable;->CircularProgressIndicator:[I

    .line 35
    const/4 v8, 0x0

    .line 37
    new-array v7, v8, [I

    .line 38
    const v6, 0x7f1407ec    # @style/Widget.MaterialComponents.CircularProgressIndicator

    .line 40
    const v5, 0x7f04017b    # @attr/circularProgressIndicatorStyle

    .line 43
    move-object v2, p1

    .line 46
    move-object v3, p2

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 48
    move-result-object p2

    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-static {p1, p2, v2, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 53
    move-result v0

    .line 56
    iget v3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 57
    mul-int/2addr v3, v2

    .line 59
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v0

    .line 63
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 64
    const/4 v0, 0x1

    .line 66
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 67
    move-result p1

    .line 70
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 71
    invoke-virtual {p2, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 73
    move-result p1

    .line 76
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
    .line 82
.end method


# virtual methods
.method public final validateSpec()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
