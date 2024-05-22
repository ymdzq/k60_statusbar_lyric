.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public drawHorizontallyInverse:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->$r8$clinit:I

    .line 2
    const v0, 0x7f1407f8    # @style/Widget.MaterialComponents.LinearProgressIndicator

    .line 4
    const v1, 0x7f040471    # @attr/linearProgressIndicatorStyle

    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    sget-object v4, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    .line 13
    const v5, 0x7f040471    # @attr/linearProgressIndicatorStyle

    .line 15
    const v6, 0x7f1407f8    # @style/Widget.MaterialComponents.LinearProgressIndicator

    .line 18
    const/4 v0, 0x0

    .line 21
    new-array v7, v0, [I

    .line 22
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    move-result v1

    .line 34
    iput v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    .line 46
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    .line 49
    if-ne p1, p2, :cond_0

    .line 51
    move v0, p2

    .line 53
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final validateSpec()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 6
    if-gtz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 10
    array-length p0, p0

    .line 12
    const/4 v0, 0x3

    .line 13
    if-lt p0, v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v0, "Rounded corners are not supported in contiguous indeterminate animation."

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 32
    :cond_2
    :goto_0
    return-void
    .line 33
.end method
