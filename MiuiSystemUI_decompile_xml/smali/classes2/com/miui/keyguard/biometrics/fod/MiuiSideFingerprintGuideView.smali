.class public Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mFingerGuideImage:Landroid/widget/ImageView;

.field public mGuideHeight:I

.field public mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

.field public mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

.field public mGuideMargin:I

.field public mGuideWidth:I

.field public mHeightPixels:I

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mWidthPixels:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, "MiuiSideFingerprintGuideView"

    .line 5
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 19
    const-string/jumbo v1, "window"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/WindowManager;

    .line 27
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->getDisplayPixels()V

    .line 31
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    const/4 v1, -0x1

    .line 36
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    const/16 v1, 0xd

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 54
    const v1, 0x7f080b91    # @drawable/broadsize_finger_guide_image 'res/drawable/broadsize_finger_guide_image.xml'

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 62
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    const/4 v1, -0x2

    .line 71
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/16 v0, 0x1304

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v0

    .line 88
    const v1, 0x7f070346    # @dimen/fingerprint_guide_margin '25.77dp'

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 92
    move-result v0

    .line 95
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 98
    move-result-object v0

    .line 101
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 102
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 110
    const v1, 0x42871eb8    # 67.56f

    .line 112
    mul-float/2addr v1, v0

    .line 115
    float-to-double v0, v1

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 117
    move-result-wide v0

    .line 120
    double-to-int v0, v0

    .line 121
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideWidth:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 124
    move-result-object p1

    .line 127
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 128
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 136
    const v0, 0x410e3d71    # 8.89f

    .line 138
    mul-float/2addr v0, p1

    .line 141
    float-to-double v0, v0

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 143
    move-result-wide v0

    .line 146
    double-to-int p1, v0

    .line 147
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 148
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 150
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideWidth:I

    .line 152
    const/16 v3, 0x7df

    .line 154
    const v4, 0x21800638

    .line 156
    const/4 v5, -0x2

    .line 159
    move-object v0, p1

    .line 160
    move v1, v2

    .line 161
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 162
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 165
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 167
    or-int/lit8 p0, p0, 0x50

    .line 169
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    const/4 p0, 0x1

    .line 173
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 174
    const/16 p0, 0x33

    .line 176
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 178
    const/4 p0, 0x0

    .line 180
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 181
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    const-string p0, "broad_finger_guide"

    .line 185
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    return-void
    .line 190
.end method


# virtual methods
.method public getDisplayPixels()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mContext:Landroid/content/Context;

    .line 2
    const-string v1, "display"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 12
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 35
    const/4 v3, 0x1

    .line 37
    if-ne v0, v3, :cond_0

    .line 38
    move v2, v3

    .line 40
    :cond_0
    if-eqz v2, :cond_1

    .line 41
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    :goto_0
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWidthPixels:I

    .line 48
    if-eqz v2, :cond_2

    .line 50
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    :goto_1
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mHeightPixels:I

    .line 57
    return-void
    .line 59
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->TAG:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "onConfigurationChanged: "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateGuideView()V

    .line 24
    return-void
    .line 27
.end method

.method public final updateGuideView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mHeightPixels:I

    .line 25
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 29
    move-result v2

    .line 32
    sub-int/2addr v0, v2

    .line 33
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWidthPixels:I

    .line 34
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 38
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    iget v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 43
    sub-int/2addr v2, v3

    .line 45
    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 50
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mHeightPixels:I

    .line 52
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 56
    move-result v3

    .line 59
    sub-int/2addr v2, v3

    .line 60
    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 61
    goto :goto_0

    .line 64
    :cond_2
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 65
    invoke-virtual {p0, v1, v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWidthPixels:I

    .line 71
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideWidth:I

    .line 73
    sub-int/2addr v0, v2

    .line 75
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 76
    sub-int/2addr v0, v2

    .line 78
    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 79
    :goto_0
    return-void
    .line 82
.end method

.method public final updateView(IIZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 26
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 29
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 34
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 39
    if-nez v0, :cond_2

    .line 42
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 44
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 46
    neg-int v0, v0

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 50
    const-class p3, Lmiui/stub/MiuiStub$3;

    .line 53
    invoke-static {p3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p3

    .line 58
    check-cast p3, Lmiui/stub/MiuiStub$3;

    .line 59
    invoke-virtual {p3}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 61
    move-result p3

    .line 64
    if-eqz p3, :cond_7

    .line 65
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 69
    goto/16 :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x1

    .line 74
    const/high16 v2, 0x40000000    # 2.0f

    .line 75
    if-ne v0, v1, :cond_4

    .line 77
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 81
    move-result v1

    .line 84
    int-to-float v1, v1

    .line 85
    div-float/2addr v1, v2

    .line 86
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 89
    move-result v3

    .line 92
    int-to-float v3, v3

    .line 93
    div-float/2addr v3, v2

    .line 94
    sub-float/2addr v1, v3

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 96
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 99
    const/high16 v1, 0x43870000    # 270.0f

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 103
    if-eqz p3, :cond_3

    .line 106
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    .line 110
    move-result v0

    .line 113
    neg-int v0, v0

    .line 114
    int-to-float v0, v0

    .line 115
    div-float/2addr v0, v2

    .line 116
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 119
    move-result v1

    .line 122
    int-to-float v1, v1

    .line 123
    div-float/2addr v1, v2

    .line 124
    add-float/2addr v1, v0

    .line 125
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 126
    int-to-float v0, v0

    .line 128
    sub-float/2addr v1, v0

    .line 129
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 130
    goto/16 :goto_0

    .line 133
    :cond_3
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    .line 137
    move-result v0

    .line 140
    neg-int v0, v0

    .line 141
    int-to-float v0, v0

    .line 142
    div-float/2addr v0, v2

    .line 143
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 146
    move-result v1

    .line 149
    int-to-float v1, v1

    .line 150
    div-float/2addr v1, v2

    .line 151
    add-float/2addr v1, v0

    .line 152
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 153
    goto :goto_0

    .line 156
    :cond_4
    const/4 v1, 0x2

    .line 157
    if-ne v0, v1, :cond_5

    .line 158
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 160
    const/high16 v1, 0x43340000    # 180.0f

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 164
    if-eqz p3, :cond_7

    .line 167
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 169
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 171
    int-to-float v0, v0

    .line 173
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 174
    goto :goto_0

    .line 177
    :cond_5
    const/4 v1, 0x3

    .line 178
    if-ne v0, v1, :cond_7

    .line 179
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 183
    move-result v1

    .line 186
    int-to-float v1, v1

    .line 187
    div-float/2addr v1, v2

    .line 188
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 191
    move-result v3

    .line 194
    int-to-float v3, v3

    .line 195
    div-float/2addr v3, v2

    .line 196
    sub-float/2addr v1, v3

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 198
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 201
    const/high16 v1, 0x42b40000    # 90.0f

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 205
    if-eqz p3, :cond_6

    .line 208
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    .line 212
    move-result v0

    .line 215
    int-to-float v0, v0

    .line 216
    div-float/2addr v0, v2

    .line 217
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 218
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 220
    move-result v1

    .line 223
    int-to-float v1, v1

    .line 224
    div-float/2addr v1, v2

    .line 225
    sub-float/2addr v0, v1

    .line 226
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 227
    int-to-float v1, v1

    .line 229
    add-float/2addr v0, v1

    .line 230
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 231
    goto :goto_0

    .line 234
    :cond_6
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 235
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    .line 237
    move-result v0

    .line 240
    int-to-float v0, v0

    .line 241
    div-float/2addr v0, v2

    .line 242
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 243
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 245
    move-result v1

    .line 248
    int-to-float v1, v1

    .line 249
    div-float/2addr v1, v2

    .line 250
    sub-float/2addr v0, v1

    .line 251
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 252
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 255
    move-result p3

    .line 258
    if-eqz p3, :cond_8

    .line 259
    iget-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 261
    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 265
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 267
    invoke-interface {p1, p0, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_8
    return-void
    .line 272
.end method

.method public final updateViewAddState(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 18
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 32
    :cond_1
    :goto_0
    return-void
    .line 35
.end method
