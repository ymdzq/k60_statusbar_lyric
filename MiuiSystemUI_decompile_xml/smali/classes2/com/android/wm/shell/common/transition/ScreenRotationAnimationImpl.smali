.class public final Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAlphaDuration:I

.field public mAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

.field public mContext:Landroid/content/Context;

.field public mFirstPhaseDuration:I

.field public mFirstPhaseInterpolator:Landroid/view/animation/Interpolator;

.field public mLongDuration:I

.field public mLongEaseInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

.field public mMiddleDuration:I

.field public mMiddleEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

.field public mMiuiScreenRotationMode:I

.field public final mQuartEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

.field public mScaleDelayTime:I

.field public mScaleDuration:I

.field public mScaleFactor:F

.field public mScreenRotationDuration:I

.field public mShortAlphaDuration:I

.field public mShortAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

.field public mShortDuration:I

.field public mShortEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

.field public final mSinEaseInOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

.field public final mSinEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

.field public mWithinApp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 5
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mSinEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 11
    new-instance v0, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;-><init>(I)V

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mQuartEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 19
    new-instance v0, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 21
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mSinEaseInOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    const v0, 0x10e000d    # @android:integer/config_activityShortDur

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    .line 15
    new-instance p1, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    const v1, 0x10500ad    # @android:dimen/config_backGestureInset

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 28
    move-result v0

    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v2

    .line 37
    const v3, 0x10500ae    # @android:dimen/config_bottomDialogCornerRadius

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 41
    move-result v2

    .line 44
    invoke-direct {p1, v0, v2}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;-><init>(FF)V

    .line 45
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongEaseInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 48
    new-instance p1, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 58
    move-result v0

    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v2

    .line 67
    const v3, 0x10500af    # @android:dimen/config_buttonCornerRadius

    .line 68
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 71
    move-result v2

    .line 74
    invoke-direct {p1, v0, v2}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;-><init>(FF)V

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 78
    new-instance p1, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 88
    move-result v0

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v1

    .line 97
    const v2, 0x10500b0    # @android:dimen/config_closeToSquareDisplayMaxAspectRatio

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 101
    move-result v1

    .line 104
    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;-><init>(FF)V

    .line 105
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 108
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mSinEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 110
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 112
    new-instance v1, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 114
    const/4 v2, 0x0

    .line 116
    invoke-direct {v1, v2}, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;-><init>(I)V

    .line 117
    iput-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 120
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    .line 122
    const/4 v2, 0x2

    .line 124
    if-ne v1, v2, :cond_0

    .line 125
    move-object p1, v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object p1

    .line 135
    const v0, 0x10e000a    # @android:integer/config_accessibilityColorMode

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 139
    move-result p1

    .line 142
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongDuration:I

    .line 143
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object p1

    .line 150
    const v0, 0x10e000c    # @android:integer/config_activityDefaultDur

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 154
    move-result p1

    .line 157
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleDuration:I

    .line 158
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object p1

    .line 165
    const v0, 0x10e0011    # @android:integer/config_attentionMaximumExtension

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 169
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortDuration:I

    .line 173
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    move-result-object p1

    .line 180
    const v0, 0x10e000e    # @android:integer/config_alertDialogController

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 184
    move-result p1

    .line 187
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDuration:I

    .line 188
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    move-result-object p1

    .line 195
    const v0, 0x10e000f    # @android:integer/config_allowedUnprivilegedKeepalivePerUid

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 199
    move-result p1

    .line 202
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDelayTime:I

    .line 203
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object p1

    .line 210
    const v0, 0x10e0009    # @android:integer/config_MaxConcurrentDownloadsAllowed

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 214
    move-result p1

    .line 217
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaDuration:I

    .line 218
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object p1

    .line 225
    const v0, 0x10e0010    # @android:integer/config_app_exit_info_history_list_size

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 229
    move-result p1

    .line 232
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortAlphaDuration:I

    .line 233
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    .line 235
    if-ne p1, v2, :cond_1

    .line 237
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDuration:I

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortDuration:I

    .line 242
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseDuration:I

    .line 244
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    move-result-object p1

    .line 251
    const v0, 0x10500b1    # @android:dimen/config_defaultBinderHeavyHitterAutoSamplerThreshold

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 255
    move-result p1

    .line 258
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleFactor:F

    .line 259
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDelayTime:I

    .line 261
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongDuration:I

    .line 263
    add-int/2addr p1, v0

    .line 265
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScreenRotationDuration:I

    .line 266
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mContext:Landroid/content/Context;

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    move-result-object p0

    .line 273
    const p1, 0x1110158    # @android:bool/config_enableSecondaryLocationTimeZoneProvider

    .line 274
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 277
    return-void
    .line 280
.end method
