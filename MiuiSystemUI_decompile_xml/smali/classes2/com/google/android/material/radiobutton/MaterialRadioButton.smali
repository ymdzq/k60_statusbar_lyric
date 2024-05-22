.class public Lcom/google/android/material/radiobutton/MaterialRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field public materialThemeColorsTintList:Landroid/content/res/ColorStateList;

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
    sput-object v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->ENABLED_CHECKED_STATES:[[I

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04062f    # @attr/radioButtonStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const v0, 0x7f1407f2    # @style/Widget.MaterialComponents.CompoundButton.RadioButton

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialRadioButton:[I

    const v4, 0x7f1407f2    # @style/Widget.MaterialComponents.CompoundButton.RadioButton

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    invoke-static {p1, p2, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const v0, 0x7f0401a8    # @attr/colorControlActivated

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 9
    move-result v0

    .line 12
    const v1, 0x7f0401b7    # @attr/colorOnSurface

    .line 13
    invoke-static {v1, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 16
    move-result v1

    .line 19
    const v2, 0x7f0401c6    # @attr/colorSurface

    .line 20
    invoke-static {v2, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(ILandroid/view/View;)I

    .line 23
    move-result v2

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    invoke-static {v3, v2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 29
    move-result v0

    .line 32
    const v3, 0x3f0a3d71    # 0.54f

    .line 33
    invoke-static {v3, v2, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 36
    move-result v3

    .line 39
    const v4, 0x3ec28f5c    # 0.38f

    .line 40
    invoke-static {v4, v2, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 43
    move-result v5

    .line 46
    invoke-static {v4, v2, v1}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    .line 47
    move-result v1

    .line 50
    filled-new-array {v0, v3, v5, v1}, [I

    .line 51
    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 55
    sget-object v2, Lcom/google/android/material/radiobutton/MaterialRadioButton;->ENABLED_CHECKED_STATES:[[I

    .line 57
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 59
    iput-object v1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 64
    return-object p0
    .line 66
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RadioButton;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    .line 9
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setUseMaterialThemeColors(Z)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method
