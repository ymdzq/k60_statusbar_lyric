.class public final Lcom/google/android/material/chip/ChipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# static fields
.field public static final DEFAULT_STATE:[I

.field public static final closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public alpha:I

.field public checkable:Z

.field public checkedIcon:Landroid/graphics/drawable/Drawable;

.field public checkedIconTint:Landroid/content/res/ColorStateList;

.field public checkedIconVisible:Z

.field public chipBackgroundColor:Landroid/content/res/ColorStateList;

.field public chipCornerRadius:F

.field public chipEndPadding:F

.field public chipIcon:Landroid/graphics/drawable/Drawable;

.field public chipIconSize:F

.field public chipIconTint:Landroid/content/res/ColorStateList;

.field public chipIconVisible:Z

.field public chipMinHeight:F

.field public final chipPaint:Landroid/graphics/Paint;

.field public chipStartPadding:F

.field public chipStrokeColor:Landroid/content/res/ColorStateList;

.field public chipStrokeWidth:F

.field public chipSurfaceColor:Landroid/content/res/ColorStateList;

.field public closeIcon:Landroid/graphics/drawable/Drawable;

.field public closeIconContentDescription:Ljava/lang/CharSequence;

.field public closeIconEndPadding:F

.field public closeIconRipple:Landroid/graphics/drawable/Drawable;

.field public closeIconSize:F

.field public closeIconStartPadding:F

.field public closeIconStateSet:[I

.field public closeIconTint:Landroid/content/res/ColorStateList;

.field public closeIconVisible:Z

.field public colorFilter:Landroid/graphics/ColorFilter;

.field public compatRippleColor:Landroid/content/res/ColorStateList;

.field public final context:Landroid/content/Context;

.field public currentChecked:Z

.field public currentChipBackgroundColor:I

.field public currentChipStrokeColor:I

.field public currentChipSurfaceColor:I

.field public currentCompatRippleColor:I

.field public currentCompositeSurfaceBackgroundColor:I

.field public currentTextColor:I

.field public currentTint:I

.field public delegate:Ljava/lang/ref/WeakReference;

.field public final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field public hasChipIconTint:Z

.field public hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field public iconEndPadding:F

.field public iconStartPadding:F

.field public isShapeThemingEnabled:Z

.field public maxWidth:I

.field public final pointF:Landroid/graphics/PointF;

.field public final rectF:Landroid/graphics/RectF;

.field public rippleColor:Landroid/content/res/ColorStateList;

.field public final shapePath:Landroid/graphics/Path;

.field public shouldDrawText:Z

.field public showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field public text:Ljava/lang/CharSequence;

.field public final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field public textEndPadding:F

.field public textStartPadding:F

.field public tint:Landroid/content/res/ColorStateList;

.field public tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field public tintMode:Landroid/graphics/PorterDuff$Mode;

.field public truncateAt:Landroid/text/TextUtils$TruncateAt;

.field public useCompatRipple:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x101009e    # @android:attr/state_enabled

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    .line 9
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 11
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 13
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 18
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    const v0, 0x7f1407e7    # @style/Widget.MaterialComponents.Chip.Action

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    const/high16 p2, -0x40800000    # -1.0f

    .line 8
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    .line 12
    const/4 p3, 0x1

    .line 14
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 20
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 25
    new-instance p2, Landroid/graphics/RectF;

    .line 27
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 32
    new-instance p2, Landroid/graphics/PointF;

    .line 34
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 39
    new-instance p2, Landroid/graphics/Path;

    .line 41
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 46
    const/16 p2, 0xff

    .line 48
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 50
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 54
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 56
    const/4 v0, 0x0

    .line 58
    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 67
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    .line 69
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 71
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 74
    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 78
    iget-object p2, p2, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    move-result-object p1

    .line 89
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 90
    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 92
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    .line 94
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 96
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 99
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 101
    move-result p2

    .line 104
    if-nez p2, :cond_0

    .line 105
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 109
    move-result p2

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 115
    move-result-object p2

    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    .line 119
    :cond_0
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 122
    sget-object p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 124
    const/4 p1, -0x1

    .line 126
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 127
    return-void
    .line 130
.end method

.method public static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_0
    return-void
    .line 8
.end method


# virtual methods
.method public final applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 22
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 30
    if-ne p1, v0, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 45
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    if-ne p1, v0, :cond_3

    .line 53
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    .line 55
    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 74
    :cond_4
    return-void
    .line 77
.end method

.method public final calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 17
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 19
    add-float/2addr v0, v1

    .line 21
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    :goto_0
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 31
    const/4 v3, 0x0

    .line 33
    cmpg-float v4, v2, v3

    .line 34
    if-gtz v4, :cond_2

    .line 36
    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 40
    move-result v1

    .line 43
    int-to-float v2, v1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 45
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 51
    int-to-float v1, v1

    .line 53
    add-float/2addr v1, v0

    .line 54
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 55
    add-float/2addr v1, v2

    .line 57
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 61
    int-to-float v1, v1

    .line 63
    sub-float/2addr v1, v0

    .line 64
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 65
    sub-float/2addr v1, v2

    .line 67
    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 68
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 70
    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    goto :goto_2

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    :goto_2
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 79
    cmpg-float v2, v1, v3

    .line 81
    if-gtz v2, :cond_6

    .line 83
    if-eqz v0, :cond_6

    .line 85
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 87
    const/16 v1, 0x18

    .line 89
    invoke-static {v1, p0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    .line 91
    move-result p0

    .line 94
    float-to-double v1, p0

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 96
    move-result-wide v1

    .line 99
    double-to-float p0, v1

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 101
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    cmpg-float v1, v1, p0

    .line 106
    if-gtz v1, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 110
    move-result p0

    .line 113
    int-to-float p0, p0

    .line 114
    :cond_5
    move v1, p0

    .line 115
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 116
    move-result p0

    .line 119
    const/high16 p1, 0x40000000    # 2.0f

    .line 120
    div-float p1, v1, p1

    .line 122
    sub-float/2addr p0, p1

    .line 124
    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 125
    add-float/2addr p0, v1

    .line 127
    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    .line 128
    :cond_7
    return-void
    .line 130
.end method

.method public final calculateChipIconWidth()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 17
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 19
    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    goto :goto_1

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    :goto_1
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 28
    cmpg-float v1, v3, v1

    .line 30
    if-gtz v1, :cond_3

    .line 32
    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    move-result v1

    .line 39
    int-to-float v3, v1

    .line 40
    :cond_3
    add-float/2addr v3, v0

    .line 41
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 42
    add-float/2addr v3, p0

    .line 44
    return v3
    .line 45
.end method

.method public final calculateCloseIconWidth()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 8
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 10
    add-float/2addr v0, v1

    .line 12
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 13
    add-float/2addr v0, p0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v14, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v15

    .line 9
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_19

    .line 14
    iget v5, v6, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 16
    if-nez v5, :cond_0

    .line 18
    goto/16 :goto_a

    .line 20
    :cond_0
    const/16 v13, 0xff

    .line 22
    const/4 v12, 0x0

    .line 24
    if-ge v5, v13, :cond_1

    .line 25
    iget v0, v15, Landroid/graphics/Rect;->left:I

    .line 27
    int-to-float v1, v0

    .line 29
    iget v0, v15, Landroid/graphics/Rect;->top:I

    .line 30
    int-to-float v2, v0

    .line 32
    iget v0, v15, Landroid/graphics/Rect;->right:I

    .line 33
    int-to-float v3, v0

    .line 35
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 36
    int-to-float v4, v0

    .line 38
    move-object/from16 v0, p1

    .line 39
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 41
    move-result v0

    .line 44
    move v11, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v11, v12

    .line 47
    :goto_0
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 48
    if-nez v0, :cond_2

    .line 50
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 52
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 73
    move-result v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 77
    move-result v2

    .line 80
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 83
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 86
    if-nez v0, :cond_4

    .line 88
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 90
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 97
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 106
    if-eqz v1, :cond_3

    .line 108
    goto :goto_1

    .line 110
    :cond_3
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 111
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 113
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 116
    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 118
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 123
    move-result v1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 127
    move-result v2

    .line 130
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_4
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 136
    if-eqz v0, :cond_5

    .line 138
    invoke-super/range {p0 .. p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_5
    iget v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 143
    const/4 v7, 0x0

    .line 145
    cmpl-float v0, v0, v7

    .line 146
    const/high16 v16, 0x40000000    # 2.0f

    .line 148
    if-lez v0, :cond_8

    .line 150
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 152
    if-nez v0, :cond_8

    .line 154
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 156
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 163
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 165
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 170
    if-nez v0, :cond_7

    .line 172
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 174
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 176
    if-eqz v1, :cond_6

    .line 178
    goto :goto_2

    .line 180
    :cond_6
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 181
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 183
    :cond_7
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 186
    iget v1, v15, Landroid/graphics/Rect;->left:I

    .line 188
    int-to-float v1, v1

    .line 190
    iget v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 191
    div-float v2, v2, v16

    .line 193
    add-float/2addr v1, v2

    .line 195
    iget v3, v15, Landroid/graphics/Rect;->top:I

    .line 196
    int-to-float v3, v3

    .line 198
    add-float/2addr v3, v2

    .line 199
    iget v4, v15, Landroid/graphics/Rect;->right:I

    .line 200
    int-to-float v4, v4

    .line 202
    sub-float/2addr v4, v2

    .line 203
    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    .line 204
    int-to-float v5, v5

    .line 206
    sub-float/2addr v5, v2

    .line 207
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 211
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 213
    div-float v1, v1, v16

    .line 215
    sub-float/2addr v0, v1

    .line 217
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 218
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 220
    invoke-virtual {v14, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    :cond_8
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 225
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 232
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 234
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 239
    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 244
    if-nez v0, :cond_9

    .line 246
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 250
    move-result v1

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    .line 254
    move-result v2

    .line 257
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 258
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 260
    goto :goto_3

    .line 263
    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    .line 264
    invoke-direct {v0, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 266
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 269
    iget-object v2, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 271
    iget-object v3, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 273
    iget-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 275
    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 277
    iget-object v5, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 279
    move-object/from16 v17, v2

    .line 281
    move-object/from16 v18, v4

    .line 283
    move/from16 v19, v3

    .line 285
    move-object/from16 v20, v0

    .line 287
    move-object/from16 v21, v5

    .line 289
    move-object/from16 v22, v1

    .line 291
    invoke-virtual/range {v17 .. v22}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/MaterialShapeDrawable$1;Landroid/graphics/Path;)V

    .line 293
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 300
    move-result-object v5

    .line 303
    iget-object v0, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 304
    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 306
    move-object/from16 v0, p0

    .line 308
    move-object/from16 v1, p1

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    .line 312
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 315
    move-result v0

    .line 318
    if-eqz v0, :cond_a

    .line 319
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 321
    invoke-virtual {v6, v15, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 323
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 326
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 328
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 330
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 332
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 337
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 339
    move-result v3

    .line 342
    float-to-int v3, v3

    .line 343
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 344
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 346
    move-result v4

    .line 349
    float-to-int v4, v4

    .line 350
    invoke-virtual {v2, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    neg-float v1, v1

    .line 359
    neg-float v0, v0

    .line 360
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 361
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 364
    move-result v0

    .line 367
    if-eqz v0, :cond_b

    .line 368
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 370
    invoke-virtual {v6, v15, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 372
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 375
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 377
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 379
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 381
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 384
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 386
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 388
    move-result v3

    .line 391
    float-to-int v3, v3

    .line 392
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 393
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 395
    move-result v4

    .line 398
    float-to-int v4, v4

    .line 399
    invoke-virtual {v2, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    neg-float v1, v1

    .line 408
    neg-float v0, v0

    .line 409
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    :cond_b
    iget-boolean v0, v6, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 413
    if-eqz v0, :cond_14

    .line 415
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 417
    if-eqz v0, :cond_14

    .line 419
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 421
    invoke-virtual {v0, v7, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 423
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 426
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 428
    if-eqz v2, :cond_d

    .line 430
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 434
    move-result v2

    .line 437
    add-float/2addr v2, v1

    .line 438
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 439
    add-float/2addr v2, v1

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 442
    move-result v1

    .line 445
    if-nez v1, :cond_c

    .line 446
    iget v1, v15, Landroid/graphics/Rect;->left:I

    .line 448
    int-to-float v1, v1

    .line 450
    add-float/2addr v1, v2

    .line 451
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 452
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 454
    goto :goto_4

    .line 456
    :cond_c
    iget v1, v15, Landroid/graphics/Rect;->right:I

    .line 457
    int-to-float v1, v1

    .line 459
    sub-float/2addr v1, v2

    .line 460
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 461
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 463
    :goto_4
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    .line 465
    move-result v2

    .line 468
    int-to-float v2, v2

    .line 469
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 470
    iget-object v3, v3, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 472
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 474
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 476
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 479
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 481
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 483
    add-float/2addr v4, v3

    .line 485
    div-float v4, v4, v16

    .line 486
    sub-float/2addr v2, v4

    .line 488
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 489
    :cond_d
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 491
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 493
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 496
    if-eqz v2, :cond_f

    .line 498
    iget v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 502
    move-result v3

    .line 505
    add-float/2addr v3, v2

    .line 506
    iget v2, v6, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 507
    add-float/2addr v3, v2

    .line 509
    iget v2, v6, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 512
    move-result v4

    .line 515
    add-float/2addr v4, v2

    .line 516
    iget v2, v6, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 517
    add-float/2addr v4, v2

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 520
    move-result v2

    .line 523
    if-nez v2, :cond_e

    .line 524
    iget v2, v15, Landroid/graphics/Rect;->left:I

    .line 526
    int-to-float v2, v2

    .line 528
    add-float/2addr v2, v3

    .line 529
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 530
    iget v2, v15, Landroid/graphics/Rect;->right:I

    .line 532
    int-to-float v2, v2

    .line 534
    sub-float/2addr v2, v4

    .line 535
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 536
    goto :goto_5

    .line 538
    :cond_e
    iget v2, v15, Landroid/graphics/Rect;->left:I

    .line 539
    int-to-float v2, v2

    .line 541
    add-float/2addr v2, v4

    .line 542
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 543
    iget v2, v15, Landroid/graphics/Rect;->right:I

    .line 545
    int-to-float v2, v2

    .line 547
    sub-float/2addr v2, v3

    .line 548
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 549
    :goto_5
    iget v2, v15, Landroid/graphics/Rect;->top:I

    .line 551
    int-to-float v2, v2

    .line 553
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 554
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    .line 556
    int-to-float v2, v2

    .line 558
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 559
    :cond_f
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 561
    iget-object v2, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 563
    if-eqz v2, :cond_10

    .line 565
    iget-object v0, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 569
    move-result-object v2

    .line 572
    iput-object v2, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 573
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 575
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 577
    iget-object v3, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 579
    iget-object v4, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 581
    iget-object v0, v0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/internal/TextDrawableHelper$1;

    .line 583
    invoke-virtual {v3, v2, v4, v0}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 585
    :cond_10
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 588
    iget-object v0, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 590
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 592
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 595
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 597
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 603
    move-result v0

    .line 606
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 607
    move-result v0

    .line 610
    iget-object v1, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 611
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 613
    move-result v1

    .line 616
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 617
    move-result v1

    .line 620
    if-le v0, v1, :cond_11

    .line 621
    const/4 v0, 0x1

    .line 623
    goto :goto_6

    .line 624
    :cond_11
    move v0, v12

    .line 625
    :goto_6
    if-eqz v0, :cond_12

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 628
    move-result v1

    .line 631
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 632
    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 634
    goto :goto_7

    .line 637
    :cond_12
    move v1, v12

    .line 638
    :goto_7
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 639
    if-eqz v0, :cond_13

    .line 641
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 643
    if-eqz v3, :cond_13

    .line 645
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 647
    iget-object v3, v3, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 649
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 651
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 653
    move-result v4

    .line 656
    iget-object v5, v6, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 657
    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 659
    move-result-object v2

    .line 662
    :cond_13
    move-object v8, v2

    .line 663
    const/4 v9, 0x0

    .line 664
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 665
    move-result v10

    .line 668
    iget-object v2, v6, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 669
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 671
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 673
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 675
    iget-object v4, v4, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 677
    move-object/from16 v7, p1

    .line 679
    move v5, v11

    .line 681
    move v11, v3

    .line 682
    move v3, v12

    .line 683
    move v12, v2

    .line 684
    move v2, v13

    .line 685
    move-object v13, v4

    .line 686
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 687
    if-eqz v0, :cond_15

    .line 690
    invoke-virtual {v14, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 692
    goto :goto_8

    .line 695
    :cond_14
    move v5, v11

    .line 696
    move v3, v12

    .line 697
    move v2, v13

    .line 698
    :cond_15
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 699
    move-result v0

    .line 702
    if-eqz v0, :cond_18

    .line 703
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 705
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 710
    move-result v1

    .line 713
    if-eqz v1, :cond_17

    .line 714
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 716
    iget v4, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 718
    add-float/2addr v1, v4

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 721
    move-result v4

    .line 724
    if-nez v4, :cond_16

    .line 725
    iget v4, v15, Landroid/graphics/Rect;->right:I

    .line 727
    int-to-float v4, v4

    .line 729
    sub-float/2addr v4, v1

    .line 730
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 731
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 733
    sub-float/2addr v4, v1

    .line 735
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 736
    goto :goto_9

    .line 738
    :cond_16
    iget v4, v15, Landroid/graphics/Rect;->left:I

    .line 739
    int-to-float v4, v4

    .line 741
    add-float/2addr v4, v1

    .line 742
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 743
    iget v1, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 745
    add-float/2addr v4, v1

    .line 747
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 748
    :goto_9
    invoke-virtual {v15}, Landroid/graphics/Rect;->exactCenterY()F

    .line 750
    move-result v1

    .line 753
    iget v4, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 754
    div-float v7, v4, v16

    .line 756
    sub-float/2addr v1, v7

    .line 758
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 759
    add-float/2addr v1, v4

    .line 761
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 762
    :cond_17
    iget-object v0, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 764
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 766
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 768
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 770
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 773
    iget-object v7, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 775
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 777
    move-result v7

    .line 780
    float-to-int v7, v7

    .line 781
    iget-object v8, v6, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 782
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 784
    move-result v8

    .line 787
    float-to-int v8, v8

    .line 788
    invoke-virtual {v4, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 789
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 792
    iget-object v4, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 794
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 796
    move-result-object v4

    .line 799
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 800
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 803
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 805
    iget-object v3, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 808
    invoke-virtual {v3, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 810
    neg-float v1, v1

    .line 813
    neg-float v0, v0

    .line 814
    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 815
    :cond_18
    iget v0, v6, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 818
    if-ge v0, v2, :cond_19

    .line 820
    invoke-virtual {v14, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 822
    :cond_19
    :goto_a
    return-void
    .line 825
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 2
    return p0
    .line 4
.end method

.method public final getChipCornerRadius()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 11
    :goto_0
    return p0
    .line 13
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 2
    float-to-int p0, p0

    .line 4
    return p0
    .line 5
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 4
    move-result v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 9
    add-float/2addr v1, v0

    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 12
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 20
    move-result v0

    .line 23
    add-float/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 25
    add-float/2addr v0, v1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 28
    move-result v1

    .line 31
    add-float/2addr v1, v0

    .line 32
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 33
    add-float/2addr v1, v0

    .line 35
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 36
    move-result v0

    .line 39
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    .line 40
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 42
    move-result p0

    .line 45
    return p0
    .line 46
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 6
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 28
    move-result v5

    .line 31
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 32
    float-to-int v6, v0

    .line 34
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 35
    move-object v2, p1

    .line 37
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 38
    :goto_0
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 41
    int-to-float p0, p0

    .line 43
    const/high16 v0, 0x437f0000    # 255.0f

    .line 44
    div-float/2addr p0, v0

    .line 46
    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 47
    return-void
    .line 50
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final isStateful()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 5
    iget-object v0, v0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 12
    invoke-static {p0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 14
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 27
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 40
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 47
    :cond_3
    const/4 p0, 0x1

    .line 50
    return p0
    .line 51
.end method

.method public final onLevelChange(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 14
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 27
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 40
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 47
    :cond_3
    return v0
    .line 50
.end method

.method public final onSizeChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    check-cast p0, Lcom/google/android/material/chip/Chip;

    .line 12
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    .line 19
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidateOutline()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onStateChange([I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p0

    return p0
.end method

.method public final onStateChange([I[I)Z
    .locals 8

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 8
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v1

    .line 9
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 10
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    move v0, v4

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 12
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 13
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v3

    .line 14
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v5, v3, :cond_3

    .line 15
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    move v0, v4

    .line 16
    :cond_3
    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    .line 17
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    .line 18
    :goto_2
    iget-object v5, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 19
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    .line 20
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 21
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 22
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    .line 23
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v3, v1, :cond_8

    .line 24
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    move v0, v4

    .line 25
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    .line 27
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v3, v1, :cond_a

    .line 28
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 29
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v1, :cond_a

    move v0, v4

    .line 30
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 31
    iget-object v1, v1, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz v1, :cond_b

    .line 32
    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    .line 33
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    .line 34
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    .line 35
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    if-eq v3, v1, :cond_c

    .line 36
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    move v0, v4

    .line 37
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    .line 38
    :cond_d
    array-length v3, v1

    move v5, v2

    :goto_7
    if-ge v5, v3, :cond_f

    aget v6, v1, v5

    const v7, 0x10100a0    # @android:attr/state_checked

    if-ne v6, v7, :cond_e

    move v1, v4

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    move v1, v2

    :goto_9
    if-eqz v1, :cond_10

    .line 39
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_a

    :cond_10
    move v1, v2

    .line 40
    :goto_a
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eq v3, v1, :cond_12

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 42
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    move v0, v4

    move v1, v0

    goto :goto_b

    :cond_11
    move v1, v2

    move v0, v4

    goto :goto_b

    :cond_12
    move v1, v2

    .line 44
    :goto_b
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_13

    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_c

    :cond_13
    move v3, v2

    .line 45
    :goto_c
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    if-eq v5, v3, :cond_16

    .line 46
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    .line 47
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_15

    if-nez v3, :cond_14

    goto :goto_d

    .line 48
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 49
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v5, 0x0

    .line 50
    :goto_e
    iput-object v5, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_f

    :cond_16
    move v4, v0

    .line 51
    :goto_f
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 53
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 56
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 57
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 60
    :cond_19
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 61
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1a
    if-eqz v4, :cond_1b

    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1b
    if-eqz v1, :cond_1c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1c
    return v4
.end method

.method public final onTextSizeChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 5
    return-void
    .line 8
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setCheckable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 8
    move-result v0

    .line 11
    if-nez p1, :cond_0

    .line 12
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 21
    move-result p1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 25
    cmpl-float p1, v0, p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public final setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 6
    move-result v0

    .line 9
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 12
    move-result p1

    .line 15
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 26
    cmpl-float p1, v0, p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public final setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public final setCheckedIconVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 6
    move-result v0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 12
    move-result p1

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method

.method public final setChipCornerRadius(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 8
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 10
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    instance-of v2, v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 7
    if-eqz v2, :cond_1

    .line 9
    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 11
    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;

    .line 13
    iget-object v0, v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 21
    move-result v2

    .line 24
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 30
    :cond_2
    iput-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 33
    move-result p1

    .line 36
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 51
    cmpl-float p1, v2, p1

    .line 54
    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 58
    :cond_4
    return-void
    .line 61
.end method

.method public final setChipIconSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 8
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 18
    cmpl-float p1, v0, p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final setChipIconVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 6
    move-result v0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 12
    move-result p1

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method

.method public final setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final setChipStrokeWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 8
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 19
    iput p1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    instance-of v2, v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 7
    if-eqz v2, :cond_1

    .line 9
    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 11
    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;

    .line 13
    iget-object v0, v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 21
    move-result v2

    .line 24
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 30
    :cond_2
    iput-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 33
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 35
    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 37
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    sget-object v4, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    .line 43
    invoke-direct {p1, v1, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 45
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    .line 50
    move-result p1

    .line 53
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 68
    cmpl-float p1, v2, p1

    .line 71
    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 75
    :cond_4
    return-void
    .line 78
.end method

.method public final setCloseIconEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final setCloseIconSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final setCloseIconStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final setCloseIconVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 6
    move-result v0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 12
    move-result p1

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setIconEndPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 8
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 18
    cmpl-float p1, v0, p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final setIconStartPadding(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 8
    move-result v0

    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 18
    cmpl-float p1, v0, p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    move-result v0

    .line 23
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 24
    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    iput-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 33
    :cond_2
    return-void
    .line 36
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 14
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 40
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 47
    :cond_3
    return v0
    .line 50
.end method

.method public final showsCheckedIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final showsChipIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz p0, :cond_0

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

.method public final showsCloseIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz p0, :cond_0

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

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
