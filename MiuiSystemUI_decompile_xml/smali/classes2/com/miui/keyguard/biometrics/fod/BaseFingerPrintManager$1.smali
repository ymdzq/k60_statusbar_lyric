.class public final Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mSideFingerprintGuideView:Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;

    .line 4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 12
    move-result p0

    .line 15
    const-string/jumbo v1, "translationY"

    .line 16
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez p0, :cond_0

    .line 22
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 24
    new-array v3, v3, [F

    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    .line 28
    move-result v5

    .line 31
    aput v5, v3, v2

    .line 32
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 34
    neg-int v2, v2

    .line 36
    int-to-float v2, v2

    .line 37
    aput v2, v3, v4

    .line 38
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 40
    move-result-object p0

    .line 43
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 44
    goto/16 :goto_0

    .line 46
    :cond_0
    const-string/jumbo v5, "translationX"

    .line 48
    const/high16 v6, 0x40000000    # 2.0f

    .line 51
    if-ne p0, v4, :cond_1

    .line 53
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 55
    new-array v1, v3, [F

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    .line 59
    move-result v3

    .line 62
    aput v3, v1, v2

    .line 63
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 67
    move-result v2

    .line 70
    neg-int v2, v2

    .line 71
    int-to-float v2, v2

    .line 72
    div-float/2addr v2, v6

    .line 73
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 76
    move-result v3

    .line 79
    int-to-float v3, v3

    .line 80
    div-float/2addr v3, v6

    .line 81
    add-float/2addr v3, v2

    .line 82
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 83
    int-to-float v2, v2

    .line 85
    sub-float/2addr v3, v2

    .line 86
    aput v3, v1, v4

    .line 87
    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 89
    move-result-object p0

    .line 92
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    if-ne p0, v3, :cond_2

    .line 96
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 98
    new-array v3, v3, [F

    .line 100
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    .line 102
    move-result v5

    .line 105
    aput v5, v3, v2

    .line 106
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 110
    move-result v2

    .line 113
    int-to-float v2, v2

    .line 114
    div-float/2addr v2, v6

    .line 115
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 116
    int-to-float v5, v5

    .line 118
    add-float/2addr v2, v5

    .line 119
    aput v2, v3, v4

    .line 120
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 122
    move-result-object p0

    .line 125
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    const/4 v1, 0x3

    .line 129
    if-ne p0, v1, :cond_3

    .line 130
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 132
    new-array v1, v3, [F

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    .line 136
    move-result v3

    .line 139
    aput v3, v1, v2

    .line 140
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 144
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    div-float/2addr v2, v6

    .line 149
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 152
    move-result v3

    .line 155
    int-to-float v3, v3

    .line 156
    div-float/2addr v3, v6

    .line 157
    sub-float/2addr v2, v3

    .line 158
    iget v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 159
    int-to-float v3, v3

    .line 161
    add-float/2addr v2, v3

    .line 162
    aput v2, v1, v4

    .line 163
    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 165
    move-result-object p0

    .line 168
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 169
    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 171
    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    .line 173
    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 175
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 181
    const-wide/16 v1, 0x12c

    .line 183
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageHideAnim:Landroid/animation/ObjectAnimator;

    .line 188
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    return-void
    .line 193
.end method

.method public final onStartedWakingUp()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mSideFingerprintGuideView:Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;

    .line 4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/BaseFingerPrintManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 12
    move-result p0

    .line 15
    const-string/jumbo v1, "translationY"

    .line 16
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez p0, :cond_0

    .line 22
    iget p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWidthPixels:I

    .line 24
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideWidth:I

    .line 26
    sub-int/2addr p0, v5

    .line 28
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 29
    sub-int/2addr p0, v5

    .line 31
    invoke-virtual {v0, p0, v2, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 32
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 35
    new-array v3, v3, [F

    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    .line 39
    move-result v5

    .line 42
    aput v5, v3, v2

    .line 43
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideHeight:I

    .line 45
    neg-int v2, v2

    .line 47
    int-to-float v2, v2

    .line 48
    aput v2, v3, v4

    .line 49
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 51
    move-result-object p0

    .line 54
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_0
    const-string/jumbo v5, "translationX"

    .line 59
    if-ne p0, v4, :cond_1

    .line 62
    iget p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 64
    invoke-virtual {v0, v2, p0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 66
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 69
    new-array v1, v3, [F

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    .line 73
    move-result v6

    .line 76
    aput v6, v1, v2

    .line 77
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 81
    move-result v2

    .line 84
    neg-int v2, v2

    .line 85
    div-int/2addr v2, v3

    .line 86
    iget-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    .line 89
    move-result v6

    .line 92
    div-int/2addr v6, v3

    .line 93
    add-int/2addr v6, v2

    .line 94
    int-to-float v2, v6

    .line 95
    aput v2, v1, v4

    .line 96
    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 98
    move-result-object p0

    .line 101
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    if-ne p0, v3, :cond_2

    .line 105
    iget p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 107
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mHeightPixels:I

    .line 109
    iget-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    .line 113
    move-result v6

    .line 116
    sub-int/2addr v5, v6

    .line 117
    invoke-virtual {v0, p0, v5, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 118
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 121
    new-array v3, v3, [F

    .line 123
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    .line 125
    move-result v5

    .line 128
    aput v5, v3, v2

    .line 129
    const/4 v2, 0x0

    .line 131
    aput v2, v3, v4

    .line 132
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 134
    move-result-object p0

    .line 137
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x3

    .line 141
    if-ne p0, v1, :cond_3

    .line 142
    iget p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mHeightPixels:I

    .line 144
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    .line 148
    move-result v1

    .line 151
    sub-int/2addr p0, v1

    .line 152
    iget v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mWidthPixels:I

    .line 153
    iget-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    .line 157
    move-result v6

    .line 160
    sub-int/2addr v1, v6

    .line 161
    iget v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideMargin:I

    .line 162
    sub-int/2addr v1, v6

    .line 164
    invoke-virtual {v0, p0, v1, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->updateView(IIZ)V

    .line 165
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 168
    new-array v1, v3, [F

    .line 170
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    .line 172
    move-result v3

    .line 175
    aput v3, v1, v2

    .line 176
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 180
    move-result v2

    .line 183
    int-to-float v2, v2

    .line 184
    const/high16 v3, 0x40000000    # 2.0f

    .line 185
    div-float/2addr v2, v3

    .line 187
    iget-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mFingerGuideImage:Landroid/widget/ImageView;

    .line 188
    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    .line 190
    move-result v6

    .line 193
    int-to-float v6, v6

    .line 194
    div-float/2addr v6, v3

    .line 195
    sub-float/2addr v2, v6

    .line 196
    aput v2, v1, v4

    .line 197
    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 199
    move-result-object p0

    .line 202
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 203
    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 205
    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    .line 207
    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 209
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 215
    const-wide/16 v1, 0x12c

    .line 217
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiSideFingerprintGuideView;->mGuideImageShowAnim:Landroid/animation/ObjectAnimator;

    .line 222
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 224
    return-void
    .line 227
.end method
