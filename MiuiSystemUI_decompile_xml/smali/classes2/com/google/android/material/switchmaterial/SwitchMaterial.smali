.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field public final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field public materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

.field public materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

.field public useMaterialThemeColors:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x101009e    # @android:attr/state_enabled

    .line 2
    const v1, 0x10100a0    # @android:attr/state_checked

    .line 5
    filled-new-array {v0, v1}, [I

    .line 8
    move-result-object v2

    .line 11
    const v3, -0x10100a0

    .line 12
    filled-new-array {v0, v3}, [I

    .line 15
    move-result-object v0

    .line 18
    const v4, -0x101009e

    .line 19
    filled-new-array {v4, v1}, [I

    .line 22
    move-result-object v1

    .line 25
    filled-new-array {v4, v3}, [I

    .line 26
    move-result-object v3

    .line 29
    filled-new-array {v2, v0, v1, v3}, [[I

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0407ba    # @attr/switchStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v0, 0x7f1407f3    # @style/Widget.MaterialComponents.CompoundButton.Switch

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance p1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {p1, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 6
    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    const v4, 0x7f1407f3    # @style/Widget.MaterialComponents.CompoundButton.Switch

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    if-nez v0, :cond_2

    .line 4
    const v0, 0x7f0401c6    # @attr/colorSurface

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 9
    move-result v0

    .line 12
    const v1, 0x7f0401a8    # @attr/colorControlActivated

    .line 13
    invoke-static {v1, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v2

    .line 23
    const v3, 0x7f070cef    # @dimen/mtrl_switch_thumb_elevation '4.0dp'

    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 31
    iget-boolean v3, v3, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    instance-of v5, v3, Landroid/view/View;

    .line 42
    if-eqz v5, :cond_0

    .line 44
    move-object v5, v3

    .line 46
    check-cast v5, Landroid/view/View;

    .line 47
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 49
    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    .line 51
    move-result v5

    .line 54
    add-float/2addr v4, v5

    .line 55
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 56
    move-result-object v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    add-float/2addr v2, v4

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 62
    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(FI)I

    .line 64
    move-result v2

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    invoke-static {v3, v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 70
    move-result v3

    .line 73
    const v4, 0x3ec28f5c    # 0.38f

    .line 74
    invoke-static {v4, v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 77
    move-result v0

    .line 80
    filled-new-array {v3, v2, v0, v2}, [I

    .line 81
    move-result-object v0

    .line 84
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 85
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 87
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 89
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 94
    return-object p0
    .line 96
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const v0, 0x7f0401c6    # @attr/colorSurface

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 9
    move-result v0

    .line 12
    const v1, 0x7f0401a8    # @attr/colorControlActivated

    .line 13
    invoke-static {v1, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 16
    move-result v1

    .line 19
    const v2, 0x7f0401b7    # @attr/colorOnSurface

    .line 20
    invoke-static {v2, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 23
    move-result v2

    .line 26
    const v3, 0x3f0a3d71    # 0.54f

    .line 27
    invoke-static {v3, v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 30
    move-result v3

    .line 33
    const v4, 0x3ea3d70a    # 0.32f

    .line 34
    invoke-static {v4, v0, v2}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 37
    move-result v4

    .line 40
    const v5, 0x3df5c28f    # 0.12f

    .line 41
    invoke-static {v5, v0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 44
    move-result v1

    .line 47
    invoke-static {v5, v0, v2}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 48
    move-result v0

    .line 51
    filled-new-array {v3, v4, v1, v0}, [I

    .line 52
    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 56
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 58
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 60
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 65
    return-object p0
    .line 67
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 9
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 26
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    :cond_1
    return-void
    .line 39
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    :goto_0
    return-void
    .line 28
.end method
