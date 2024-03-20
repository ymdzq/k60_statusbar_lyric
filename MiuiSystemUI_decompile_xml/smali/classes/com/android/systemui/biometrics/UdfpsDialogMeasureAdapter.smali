.class public final Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBottomSpacerHeight:I

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mView:Landroid/view/ViewGroup;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    sput-boolean v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    const-class p2, Landroid/view/WindowManager;

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/WindowManager;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    return-void
    .line 23
.end method

.method public static calculateBottomSpacerHeightForLandscape(IIIIIII)I
    .locals 4

    .line 1
    add-int v0, p0, p1

    .line 2
    add-int/2addr v0, p2

    .line 4
    add-int/2addr v0, p3

    .line 5
    add-int v1, p4, p5

    .line 6
    sub-int/2addr v0, v1

    .line 8
    sub-int/2addr v0, p6

    .line 9
    sget-boolean v1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string v1, "Title height: "

    .line 14
    const-string v2, ", Subtitle height: "

    .line 16
    const-string v3, ", Description height: "

    .line 18
    invoke-static {v1, p0, v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p0

    .line 23
    const-string p1, ", Top spacer height: "

    .line 24
    const-string v1, ", Text indicator height: "

    .line 26
    invoke-static {p0, p2, p1, p3, v1}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    const-string p1, ", Button bar height: "

    .line 31
    const-string p2, ", Navbar bottom inset: "

    .line 33
    invoke-static {p0, p4, p1, p5, p2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 35
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, ", Bottom spacer height (landscape): "

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const-string p1, "UdfpsDialogMeasurementAdapter"

    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return v0
    .line 58
.end method

.method public static calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIIIF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 2
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 6
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p6

    .line 9
    float-to-int v0, v0

    .line 10
    sub-int v0, p1, v0

    .line 11
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 13
    int-to-float p0, p0

    .line 15
    mul-float/2addr p0, p6

    .line 16
    float-to-int p0, p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    sub-int p0, v0, p2

    .line 19
    sub-int/2addr p0, p3

    .line 21
    sub-int/2addr p0, p4

    .line 22
    sub-int/2addr p0, p5

    .line 23
    sget-boolean p3, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 24
    if-eqz p3, :cond_0

    .line 26
    const-string p3, "Display height: "

    .line 28
    const-string v1, ", Distance from bottom: "

    .line 30
    const-string v2, ", textIndicatorHeightPx: "

    .line 32
    invoke-static {p3, p1, v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p1

    .line 37
    const-string p3, ", Bottom margin: "

    .line 38
    const-string v0, ", Navbar bottom inset: "

    .line 40
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 42
    const-string p2, ", Bottom spacer height (portrait): "

    .line 45
    const-string p3, ", Scale Factor: "

    .line 47
    invoke-static {p1, p5, p2, p0, p3}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 49
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    const-string p2, "UdfpsDialogMeasurementAdapter"

    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return p0
    .line 64
.end method

.method public static calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIF)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 2
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 6
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p4

    .line 9
    float-to-int v0, v0

    .line 10
    sub-int v0, p1, v0

    .line 11
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 13
    int-to-float p0, p0

    .line 15
    mul-float/2addr p0, p4

    .line 16
    float-to-int p0, p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    sub-int p0, v0, p2

    .line 19
    sub-int/2addr p0, p3

    .line 21
    sget-boolean v1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->DEBUG:Z

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const-string v1, "Display width: "

    .line 26
    const-string v2, ", Distance from edge: "

    .line 28
    const-string v3, ", Dialog margin: "

    .line 30
    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p1

    .line 35
    const-string v0, ", Navbar horizontal inset: "

    .line 36
    const-string v1, ", Horizontal spacer width (landscape): "

    .line 38
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string p2, ", Scale Factor: "

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    const-string p2, "UdfpsDialogMeasurementAdapter"

    .line 58
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return p0
    .line 63
.end method


# virtual methods
.method public final getSensorDiameter(F)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 8
    int-to-float p0, p0

    .line 10
    mul-float/2addr p1, p0

    .line 11
    const/high16 p0, 0x40000000    # 2.0f

    .line 12
    mul-float/2addr p1, p0

    .line 14
    float-to-int p0, p1

    .line 15
    return p0
    .line 16
.end method

.method public final getViewHeightPx(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 13
    const/16 v0, 0x8

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;F)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v10, p4

    .line 8
    iget-object v11, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mView:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    .line 12
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 16
    move-result v3

    .line 19
    const v4, 0x7f0a0137    # @id/biometric_icon_frame

    .line 20
    const v5, 0x7f0700e9    # @dimen/biometric_dialog_border_padding '4.0dp'

    .line 23
    const v12, 0x7f0a08ab    # @id/space_above_icon

    .line 26
    const/high16 v13, -0x80000000

    .line 29
    const/high16 v14, 0x40000000    # 2.0f

    .line 31
    const v6, 0x7f0a02a8    # @id/description

    .line 33
    const v7, 0x7f0a01a9    # @id/button_bar

    .line 36
    const/4 v8, 0x0

    .line 39
    const v9, 0x7f0a0439    # @id/indicator

    .line 40
    iget-object v15, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    if-eqz v3, :cond_9

    .line 45
    const/4 v1, 0x1

    .line 47
    if-eq v3, v1, :cond_0

    .line 48
    const/4 v1, 0x3

    .line 50
    if-eq v3, v1, :cond_0

    .line 51
    const-string v0, "Unsupported display rotation: "

    .line 53
    const-string v1, "UdfpsDialogMeasurementAdapter"

    .line 55
    invoke-static {v0, v3, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    return-object p3

    .line 60
    :cond_0
    invoke-interface {v15}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 61
    move-result-object v1

    .line 64
    const v3, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 68
    move-result v15

    .line 71
    const v3, 0x7f0a08ff    # @id/subtitle

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 75
    move-result v16

    .line 78
    invoke-virtual {v0, v6}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 79
    move-result v17

    .line 82
    invoke-virtual {v0, v12}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 83
    move-result v18

    .line 86
    invoke-virtual {v0, v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 87
    move-result v19

    .line 90
    invoke-virtual {v0, v7}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 91
    move-result v20

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 97
    move-result-object v3

    .line 100
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 101
    move-result v6

    .line 104
    invoke-virtual {v3, v6}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 105
    move-result-object v3

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 110
    :goto_0
    iget v6, v3, Landroid/graphics/Insets;->bottom:I

    .line 112
    move/from16 v21, v6

    .line 114
    invoke-static/range {v15 .. v21}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForLandscape(IIIIIII)I

    .line 116
    move-result v6

    .line 119
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    .line 127
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 129
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 132
    move-result v1

    .line 135
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v7

    .line 139
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    move-result v5

    .line 143
    iget v7, v3, Landroid/graphics/Insets;->left:I

    .line 144
    iget v3, v3, Landroid/graphics/Insets;->right:I

    .line 146
    add-int/2addr v7, v3

    .line 148
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 149
    invoke-static {v3, v1, v5, v7, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateHorizontalSpacerWidthForLandscape(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIF)I

    .line 151
    move-result v1

    .line 154
    invoke-virtual {v0, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorDiameter(F)I

    .line 155
    move-result v0

    .line 158
    mul-int/lit8 v1, v1, 0x2

    .line 159
    add-int/2addr v1, v0

    .line 161
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 162
    move-result v3

    .line 165
    move v5, v8

    .line 166
    move v7, v5

    .line 167
    :goto_2
    if-ge v8, v3, :cond_8

    .line 168
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 170
    move-result-object v9

    .line 173
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 174
    move-result v10

    .line 177
    if-ne v10, v4, :cond_3

    .line 178
    move-object v4, v9

    .line 180
    check-cast v4, Landroid/widget/FrameLayout;

    .line 181
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 183
    move-result-object v7

    .line 186
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    move-result v10

    .line 190
    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 191
    move-result v15

    .line 194
    invoke-virtual {v4, v10, v15}, Landroid/widget/FrameLayout;->measure(II)V

    .line 195
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 198
    move-result v4

    .line 201
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 202
    move-result v10

    .line 205
    invoke-virtual {v7, v4, v10}, Landroid/view/View;->measure(II)V

    .line 206
    goto :goto_3

    .line 209
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 210
    move-result v4

    .line 213
    if-ne v4, v12, :cond_4

    .line 214
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    move-result-object v4

    .line 219
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    const/4 v7, 0x0

    .line 222
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 223
    move-result v7

    .line 226
    sub-int/2addr v4, v7

    .line 227
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    move-result v7

    .line 231
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 232
    move-result v4

    .line 235
    invoke-virtual {v9, v7, v4}, Landroid/view/View;->measure(II)V

    .line 236
    goto :goto_3

    .line 239
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 240
    move-result v4

    .line 243
    const v7, 0x7f0a01a9    # @id/button_bar

    .line 244
    if-ne v4, v7, :cond_5

    .line 247
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 249
    move-result v4

    .line 252
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    move-result-object v7

    .line 256
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 259
    move-result v7

    .line 262
    invoke-virtual {v9, v4, v7}, Landroid/view/View;->measure(II)V

    .line 263
    goto :goto_3

    .line 266
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 267
    move-result v4

    .line 270
    const v7, 0x7f0a08ac    # @id/space_below_icon

    .line 271
    if-ne v4, v7, :cond_6

    .line 274
    const/4 v4, 0x0

    .line 276
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 277
    move-result v4

    .line 280
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 281
    move-result v7

    .line 284
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 285
    move-result v4

    .line 288
    invoke-virtual {v9, v7, v4}, Landroid/view/View;->measure(II)V

    .line 289
    goto :goto_3

    .line 292
    :cond_6
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 293
    move-result v4

    .line 296
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 297
    move-result v7

    .line 300
    invoke-virtual {v9, v4, v7}, Landroid/view/View;->measure(II)V

    .line 301
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 304
    move-result v4

    .line 307
    const/16 v7, 0x8

    .line 308
    if-eq v4, v7, :cond_7

    .line 310
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 312
    move-result v4

    .line 315
    add-int/2addr v4, v5

    .line 316
    move v5, v4

    .line 317
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 318
    const/4 v7, 0x0

    .line 320
    const v4, 0x7f0a0137    # @id/biometric_icon_frame

    .line 321
    goto/16 :goto_2

    .line 324
    :cond_8
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 326
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 328
    return-object v0

    .line 331
    :cond_9
    invoke-interface {v15}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 332
    move-result-object v3

    .line 335
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 336
    move-result v4

    .line 339
    if-eqz v4, :cond_a

    .line 340
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 342
    move-result-object v4

    .line 345
    if-eqz v4, :cond_a

    .line 346
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 348
    move-result-object v6

    .line 351
    const v7, 0x7f0700f3    # @dimen/biometric_dialog_icon_padding '16.0dp'

    .line 352
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 355
    move-result v6

    .line 358
    const/4 v7, 0x0

    .line 359
    invoke-virtual {v4, v7, v7, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    goto :goto_4

    .line 363
    :cond_a
    const/4 v7, 0x0

    .line 364
    :goto_4
    move v15, v7

    .line 365
    invoke-virtual {v0, v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 366
    move-result v6

    .line 369
    const v4, 0x7f0a01a9    # @id/button_bar

    .line 370
    invoke-virtual {v0, v4}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getViewHeightPx(I)I

    .line 373
    move-result v7

    .line 376
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 377
    move-result-object v4

    .line 380
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 381
    move-result v8

    .line 384
    if-eqz v3, :cond_b

    .line 385
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 387
    move-result-object v4

    .line 390
    goto :goto_5

    .line 391
    :cond_b
    new-instance v4, Landroid/graphics/Rect;

    .line 392
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 394
    :goto_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 397
    move-result v9

    .line 400
    if-eqz v3, :cond_c

    .line 401
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 403
    move-result-object v3

    .line 406
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 407
    move-result v4

    .line 410
    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 411
    move-result-object v3

    .line 414
    goto :goto_6

    .line 415
    :cond_c
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 416
    :goto_6
    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 418
    iget v5, v3, Landroid/graphics/Insets;->bottom:I

    .line 420
    move-object v3, v4

    .line 422
    move v4, v9

    .line 423
    move/from16 v16, v5

    .line 424
    move v5, v6

    .line 426
    move v6, v7

    .line 427
    move v7, v8

    .line 428
    move/from16 v8, v16

    .line 429
    move/from16 v22, v9

    .line 431
    move/from16 v9, p4

    .line 433
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->calculateBottomSpacerHeightForPortrait(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IIIIIF)I

    .line 435
    move-result v3

    .line 438
    iput v3, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 439
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 441
    move-result v3

    .line 444
    invoke-virtual {v0, v10}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorDiameter(F)I

    .line 445
    move-result v4

    .line 448
    move v5, v15

    .line 449
    move v6, v5

    .line 450
    :goto_7
    if-ge v15, v3, :cond_13

    .line 451
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 453
    move-result-object v7

    .line 456
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 457
    move-result v8

    .line 460
    const v9, 0x7f0a0137    # @id/biometric_icon_frame

    .line 461
    if-ne v8, v9, :cond_d

    .line 464
    move-object v8, v7

    .line 466
    check-cast v8, Landroid/widget/FrameLayout;

    .line 467
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 469
    move-result-object v5

    .line 472
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 473
    move-result-object v9

    .line 476
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 479
    move-result v9

    .line 482
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 483
    move-result v10

    .line 486
    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 487
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 490
    move-result v8

    .line 493
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 494
    move-result v9

    .line 497
    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    .line 498
    goto :goto_8

    .line 501
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 502
    move-result v5

    .line 505
    if-ne v5, v12, :cond_e

    .line 506
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 508
    move-result v5

    .line 511
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 512
    move-result-object v8

    .line 515
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 516
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 518
    move-result v8

    .line 521
    invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V

    .line 522
    goto :goto_8

    .line 525
    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 526
    move-result v5

    .line 529
    const v8, 0x7f0a01a9    # @id/button_bar

    .line 530
    if-ne v5, v8, :cond_f

    .line 533
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 535
    move-result v5

    .line 538
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 539
    move-result-object v8

    .line 542
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 543
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 545
    move-result v8

    .line 548
    invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V

    .line 549
    :goto_8
    const/4 v5, 0x0

    .line 552
    goto :goto_9

    .line 553
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 554
    move-result v5

    .line 557
    const v8, 0x7f0a08ac    # @id/space_below_icon

    .line 558
    if-ne v5, v8, :cond_10

    .line 561
    iget v5, v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 563
    const/4 v8, 0x0

    .line 565
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 566
    move-result v5

    .line 569
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 570
    move-result v9

    .line 573
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 574
    move-result v5

    .line 577
    invoke-virtual {v7, v9, v5}, Landroid/view/View;->measure(II)V

    .line 578
    move v5, v8

    .line 581
    goto :goto_9

    .line 582
    :cond_10
    const/4 v5, 0x0

    .line 583
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 584
    move-result v8

    .line 587
    const v9, 0x7f0a02a8    # @id/description

    .line 588
    if-ne v8, v9, :cond_11

    .line 591
    goto :goto_a

    .line 593
    :cond_11
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 594
    move-result v8

    .line 597
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 598
    move-result v9

    .line 601
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 602
    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 605
    move-result v8

    .line 608
    const/16 v9, 0x8

    .line 609
    if-eq v8, v9, :cond_12

    .line 611
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 613
    move-result v7

    .line 616
    add-int/2addr v7, v6

    .line 617
    move v6, v7

    .line 618
    :cond_12
    :goto_a
    add-int/lit8 v15, v15, 0x1

    .line 619
    goto/16 :goto_7

    .line 621
    :cond_13
    const v0, 0x7f0a02a8    # @id/description

    .line 623
    const/16 v2, 0x8

    .line 626
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 628
    move-result-object v0

    .line 631
    if-eqz v0, :cond_15

    .line 632
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 634
    move-result v3

    .line 637
    if-eq v3, v2, :cond_15

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 640
    move-result v2

    .line 643
    add-int/2addr v2, v6

    .line 644
    move/from16 v3, v22

    .line 645
    int-to-double v3, v3

    .line 647
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    .line 648
    mul-double/2addr v3, v7

    .line 650
    double-to-int v3, v3

    .line 651
    if-le v2, v3, :cond_14

    .line 652
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 654
    move-result v2

    .line 657
    sub-int/2addr v3, v6

    .line 658
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 659
    move-result v3

    .line 662
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 663
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 666
    move-result v0

    .line 669
    add-int/2addr v6, v0

    .line 670
    :cond_15
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 671
    invoke-direct {v0, v1, v6}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 673
    return-object v0
    .line 676
.end method
