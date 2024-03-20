.class public Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCustomBpHeight:I

.field public final mCustomBpWidth:I

.field public mScaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

.field public mUdfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

.field public final mUseCustomBpSize:Z

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500b6    # @bool/use_custom_bp_size 'false'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUseCustomBpSize:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f5    # @dimen/biometric_dialog_width '240.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpWidth:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f2    # @dimen/biometric_dialog_height '240.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpHeight:I

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUdfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 9
    int-to-float p1, p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    const-string p3, "bottomSpacerHeight: "

    .line 14
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 25
    const-string p3, "BiometricPromptLayout"

    .line 26
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 p2, 0x0

    .line 31
    cmpg-float p2, p1, p2

    .line 32
    if-gez p2, :cond_0

    .line 34
    const p2, 0x7f0a0137    # @id/biometric_icon_frame

    .line 36
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 42
    check-cast p2, Landroid/widget/FrameLayout;

    .line 43
    neg-float p1, p1

    .line 45
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 46
    const p2, 0x7f0a0439    # @id/indicator

    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p0

    .line 55
    check-cast p0, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 58
    :cond_0
    return-void
    .line 61
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result p2

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUseCustomBpSize:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpWidth:I

    .line 14
    iget p2, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpHeight:I

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result p1

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 33
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 41
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    :goto_1
    if-ge v2, v1, :cond_6

    .line 47
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 53
    move-result v5

    .line 56
    const v6, 0x7f0a08ab    # @id/space_above_icon

    .line 57
    const/high16 v7, 0x40000000    # 2.0f

    .line 60
    if-eq v5, v6, :cond_4

    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 64
    move-result v5

    .line 67
    const v6, 0x7f0a08ac    # @id/space_below_icon

    .line 68
    if-eq v5, v6, :cond_4

    .line 71
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 73
    move-result v5

    .line 76
    const v6, 0x7f0a01a9    # @id/button_bar

    .line 77
    if-ne v5, v6, :cond_1

    .line 80
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 83
    move-result v5

    .line 86
    const v6, 0x7f0a0137    # @id/biometric_icon_frame

    .line 87
    const v8, 0x7f0a0136    # @id/biometric_icon

    .line 90
    if-ne v5, v6, :cond_2

    .line 93
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    move-result-object v6

    .line 102
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 105
    move-result v6

    .line 108
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    move-result-object v5

    .line 112
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 115
    move-result v5

    .line 118
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 119
    goto :goto_3

    .line 122
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 123
    move-result v5

    .line 126
    const/high16 v6, -0x80000000

    .line 127
    if-ne v5, v8, :cond_3

    .line 129
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 131
    move-result v5

    .line 134
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 135
    move-result v6

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 139
    goto :goto_3

    .line 142
    :cond_3
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 143
    move-result v5

    .line 146
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 147
    move-result v6

    .line 150
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 151
    goto :goto_3

    .line 154
    :cond_4
    :goto_2
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 155
    move-result v5

    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    move-result-object v6

    .line 162
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 165
    move-result v6

    .line 168
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 169
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 172
    move-result v5

    .line 175
    const/16 v6, 0x8

    .line 176
    if-eq v5, v6, :cond_5

    .line 178
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 180
    move-result v4

    .line 183
    add-int/2addr v4, v3

    .line 184
    move v3, v4

    .line 185
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto/16 :goto_1

    .line 188
    :cond_6
    new-instance v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 190
    invoke-direct {v1, p1, v3}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUdfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 195
    if-eqz v2, :cond_8

    .line 197
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mScaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

    .line 199
    if-eqz v3, :cond_7

    .line 201
    invoke-interface {v3}, Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;->provide()F

    .line 203
    move-result v3

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    :goto_4
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;F)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 210
    move-result-object v1

    .line 213
    :cond_8
    iget p1, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 214
    iget p2, v0, Landroid/graphics/Insets;->left:I

    .line 216
    add-int/2addr p1, p2

    .line 218
    iget p2, v0, Landroid/graphics/Insets;->right:I

    .line 219
    add-int/2addr p1, p2

    .line 221
    iget p2, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    .line 222
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 224
    add-int/2addr p2, v0

    .line 226
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 227
    return-void
    .line 230
.end method

.method public setUdfpsAdapter(Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUdfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {p2}, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout$$ExternalSyntheticLambda0;-><init>()V

    .line 9
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mScaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

    .line 12
    return-void
    .line 14
.end method
