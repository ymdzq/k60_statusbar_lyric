.class public Lcom/google/android/material/materialswitch/MaterialSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final STATE_SET_WITH_ICON:[I


# instance fields
.field public currentStateChecked:[I

.field public currentStateUnchecked:[I

.field public thumbDrawable:Landroid/graphics/drawable/Drawable;

.field public thumbIconDrawable:Landroid/graphics/drawable/Drawable;

.field public thumbIconTintList:Landroid/content/res/ColorStateList;

.field public thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public thumbTintList:Landroid/content/res/ColorStateList;

.field public trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

.field public trackDecorationTintList:Landroid/content/res/ColorStateList;

.field public trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

.field public trackDrawable:Landroid/graphics/drawable/Drawable;

.field public trackTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f040716    # @attr/state_with_icon

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0404d3    # @attr/materialSwitchStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v0, 0x7f14076b    # @style/Widget.Material3.CompoundButton.MaterialSwitch

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialSwitch:[I

    const v4, 0x7f14076b    # @style/Widget.Material3.CompoundButton.MaterialSwitch

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    const/4 p3, 0x2

    const/4 v0, -0x1

    .line 15
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-static {p3, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p3, 0x3

    .line 17
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x4

    .line 18
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    const/4 p3, 0x5

    .line 19
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-static {p3, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 21
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 22
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->invalidate()V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 14
    :cond_1
    return-object p0
    .line 17
.end method

.method public static setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 8
    move-result p2

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result p1

    .line 15
    invoke-static {p4, p2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 16
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 23
.end method


# virtual methods
.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackDecorationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackDecorationTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackDecorationTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final invalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    .line 2
    invoke-super {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public final onCreateDrawableState(I)[I
    .locals 7

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    .line 12
    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 14
    :cond_0
    array-length v0, p1

    .line 17
    new-array v0, v0, [I

    .line 18
    array-length v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    move v4, v3

    .line 23
    :goto_0
    const v5, 0x10100a0    # @android:attr/state_checked

    .line 24
    if-ge v3, v1, :cond_2

    .line 27
    aget v6, p1, v3

    .line 29
    if-eq v6, v5, :cond_1

    .line 31
    add-int/lit8 v5, v4, 0x1

    .line 33
    aput v6, v0, v4

    .line 35
    move v4, v5

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    .line 41
    :goto_1
    array-length v0, p1

    .line 43
    if-ge v2, v0, :cond_5

    .line 44
    aget v0, p1, v2

    .line 46
    if-ne v0, v5, :cond_3

    .line 48
    move-object v0, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-nez v0, :cond_4

    .line 52
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, [I

    .line 58
    aput v5, v0, v2

    .line 60
    goto :goto_2

    .line 62
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_5
    array-length v0, p1

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 69
    move-result-object v0

    .line 72
    array-length v1, p1

    .line 73
    aput v5, v0, v1

    .line 74
    :goto_2
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    .line 76
    return-object p1
    .line 78
.end method

.method public final refreshThumbDrawable()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/material/materialswitch/MaterialSwitch;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-static {v0, v1, v2}, Lcom/google/android/material/materialswitch/MaterialSwitch;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    .line 28
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    if-nez v0, :cond_0

    .line 35
    move-object v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    if-nez v1, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    .line 42
    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v3

    .line 47
    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 51
    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 55
    move-result v4

    .line 58
    if-gt v3, v4, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 61
    move-result v3

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 65
    move-result v4

    .line 68
    if-gt v3, v4, :cond_2

    .line 69
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 71
    move-result v0

    .line 74
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 75
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 80
    move-result v3

    .line 83
    int-to-float v3, v3

    .line 84
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 85
    move-result v1

    .line 88
    int-to-float v1, v1

    .line 89
    div-float/2addr v3, v1

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 91
    move-result v1

    .line 94
    int-to-float v1, v1

    .line 95
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    move-result v4

    .line 99
    int-to-float v4, v4

    .line 100
    div-float/2addr v1, v4

    .line 101
    cmpl-float v1, v3, v1

    .line 102
    if-ltz v1, :cond_3

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 106
    move-result v0

    .line 109
    int-to-float v1, v0

    .line 110
    div-float/2addr v1, v3

    .line 111
    float-to-int v1, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 114
    move-result v1

    .line 117
    int-to-float v0, v1

    .line 118
    mul-float/2addr v3, v0

    .line 119
    float-to-int v0, v3

    .line 120
    :goto_0
    const/4 v3, 0x1

    .line 121
    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 122
    const/16 v0, 0x11

    .line 125
    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 127
    move-object v0, v2

    .line 130
    :goto_1
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 134
    return-void
    .line 137
.end method

.method public final refreshTrackDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/material/materialswitch/MaterialSwitch;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-static {v0, v1, v2}, Lcom/google/android/material/materialswitch/MaterialSwitch;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    .line 28
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    filled-new-array {v1, v2}, [Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 60
    move-result v1

    .line 63
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchMinWidth(I)V

    .line 64
    :cond_2
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
    .line 70
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbIconResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setThumbIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    .line 5
    return-void
    .line 8
.end method

.method public setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setTrackDecorationResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setTrackDecorationTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setTrackDecorationTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 4
    return-void
    .line 7
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateDrawableTints()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbPosition()F

    .line 19
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    .line 29
    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    .line 31
    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    .line 36
    if-eqz v1, :cond_2

    .line 38
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    .line 42
    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    .line 44
    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    .line 49
    if-eqz v1, :cond_3

    .line 51
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    .line 55
    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    .line 57
    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    .line 62
    if-eqz v1, :cond_4

    .line 64
    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    .line 68
    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    .line 70
    invoke-static {v2, v1, v3, p0, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 72
    :cond_4
    return-void
    .line 75
.end method
