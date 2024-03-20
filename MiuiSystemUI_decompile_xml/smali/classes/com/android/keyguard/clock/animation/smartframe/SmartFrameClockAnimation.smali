.class public final Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;
.super Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAodStrokeColor:I

.field public mAodTextColor:I

.field public final mColorAodState:Lmiuix/animation/controller/AnimState;

.field public final mColorLockState:Lmiuix/animation/controller/AnimState;

.field public mContainer:Landroid/view/View;

.field public mDrawableAodState:Lmiuix/animation/controller/AnimState;

.field public final mDrawableLockState:Lmiuix/animation/controller/AnimState;

.field public final mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mFullDate:Landroid/widget/TextView;

.field public mFullWeek:Landroid/widget/TextView;

.field public mHour1:Landroid/widget/TextView;

.field public mHour1AodState:Lmiuix/animation/controller/AnimState;

.field public mHour2:Landroid/widget/TextView;

.field public mHour2AodState:Lmiuix/animation/controller/AnimState;

.field public mHourAodTransX:F

.field public mHourAodTransY:F

.field public final mHourToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mLetterSpace:F

.field public mLineView:Landroid/view/View;

.field public mLockState:Lmiuix/animation/controller/AnimState;

.field public mLockTextColor:I

.field public mMagazineInfo:Landroid/view/View;

.field public final mMaksRotateToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mMaksScaleToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mMaksScaleToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mMaksTransToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mMaksTransToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mMin1:Landroid/widget/TextView;

.field public mMin1AodState:Lmiuix/animation/controller/AnimState;

.field public mMin2:Landroid/widget/TextView;

.field public mMin2AodState:Lmiuix/animation/controller/AnimState;

.field public mMinAodTransX:F

.field public mMinAodTransY:F

.field public final mMinToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mSVGAodTransX:F

.field public mSVGAodTransY:F

.field public mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field public final mShapeMaskDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public final mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public mShapeType:I

.field public mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

.field public final mSmartFrameChangeListener:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;

.field public mSolidColor:I

.field public final mSpecialEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mStrokeDrawable:Landroid/graphics/drawable/Drawable;

.field public mSvgAodScale:F

.field public final mSvgEndState:Lmiuix/animation/controller/AnimState;

.field public mSvgScaleTrans:F

.field public final mSvgStartState:Lmiuix/animation/controller/AnimState;

.field public final mTextAodScale:F

.field public final mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public final mTextScaleTrans:F

.field public final mTranslateParams:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 5
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, -0x2

    .line 13
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 19
    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_1

    .line 23
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 26
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 31
    new-array v1, v0, [F

    .line 33
    fill-array-data v1, :array_2

    .line 35
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSpecialEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 41
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 43
    new-array v1, v0, [F

    .line 45
    fill-array-data v1, :array_3

    .line 47
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksTransToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 53
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 55
    new-array v1, v0, [F

    .line 57
    fill-array-data v1, :array_4

    .line 59
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksScaleToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 65
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 67
    new-array v1, v0, [F

    .line 69
    fill-array-data v1, :array_5

    .line 71
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksTransToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 77
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 79
    new-array v1, v0, [F

    .line 81
    fill-array-data v1, :array_6

    .line 83
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksScaleToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 89
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 91
    new-array v0, v0, [F

    .line 93
    fill-array-data v0, :array_7

    .line 95
    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksRotateToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 101
    const-string p1, "colorLock"

    .line 103
    const-string v0, "fraction"

    .line 105
    const-wide/16 v1, 0x0

    .line 107
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 109
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 113
    const-string p1, "colorAod"

    .line 115
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 117
    invoke-static {p1, v0, v3, v4}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 119
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 123
    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeType:I

    .line 126
    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 129
    const/high16 p1, 0x3f400000    # 0.75f

    .line 131
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextAodScale:F

    .line 133
    const/high16 p1, 0x3e000000    # 0.125f

    .line 135
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextScaleTrans:F

    .line 137
    const p1, 0x3f3851ec    # 0.72f

    .line 139
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgAodScale:F

    .line 142
    const p1, 0x3e0f5c29    # 0.14f

    .line 144
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 147
    const p1, -0x428a3d71    # -0.06f

    .line 149
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLetterSpace:F

    .line 152
    const/high16 p1, 0x42300000    # 44.0f

    .line 154
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransX:F

    .line 156
    const p1, 0x43f36000    # 486.75f

    .line 158
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransX:F

    .line 161
    const p1, 0x4443f000    # 783.75f

    .line 163
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransY:F

    .line 166
    const p1, 0x44413000    # 772.75f

    .line 168
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransY:F

    .line 171
    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransX:F

    .line 174
    const p1, -0x3cc0e000    # -191.125f

    .line 176
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransY:F

    .line 179
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 181
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 186
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 188
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 193
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 195
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 197
    const-string/jumbo v0, "rotationFraction"

    .line 200
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 203
    move-result-object p1

    .line 206
    const-string/jumbo v5, "scaleXFraction"

    .line 207
    invoke-virtual {p1, v5, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 210
    move-result-object p1

    .line 213
    const-string/jumbo v6, "scaleYFraction"

    .line 214
    invoke-virtual {p1, v6, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 217
    move-result-object p1

    .line 220
    const-string/jumbo v7, "strokeWidthFraction"

    .line 221
    invoke-virtual {p1, v7, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 224
    move-result-object p1

    .line 227
    const-string/jumbo v8, "strokeColorFraction"

    .line 228
    invoke-virtual {p1, v8, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 231
    move-result-object p1

    .line 234
    const-string/jumbo v9, "strokeAlphaFraction"

    .line 235
    invoke-virtual {p1, v9, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 238
    move-result-object p1

    .line 241
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 242
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 244
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 246
    invoke-virtual {p1, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 249
    move-result-object p1

    .line 252
    invoke-virtual {p1, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 253
    move-result-object p1

    .line 256
    invoke-virtual {p1, v6, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 257
    move-result-object p1

    .line 260
    invoke-virtual {p1, v7, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 261
    move-result-object p1

    .line 264
    invoke-virtual {p1, v8, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 265
    move-result-object p1

    .line 268
    invoke-virtual {p1, v9, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 269
    move-result-object p1

    .line 272
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 273
    new-instance p1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;

    .line 275
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTranslateParams:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;

    .line 280
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 282
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 284
    const-string/jumbo v0, "transY"

    .line 287
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 290
    move-result-object p1

    .line 293
    const-string/jumbo v0, "transX"

    .line 294
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 297
    move-result-object p1

    .line 300
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mDrawableLockState:Lmiuix/animation/controller/AnimState;

    .line 301
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 303
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeMaskDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 308
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 310
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 315
    new-instance p1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;

    .line 317
    invoke-direct {p1, p0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;-><init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;)V

    .line 319
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrameChangeListener:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;

    .line 322
    return-void

    .line 324
    nop

    .line 325
    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 326
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f0f5c29    # 0.56f
    .end array-data

    .line 334
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 342
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 350
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 358
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 366
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    .line 374
    :array_7
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V
    .locals 3

    .line 1
    filled-new-array {p0}, [Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 10
    move-result-object p0

    .line 13
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 14
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 16
    invoke-virtual {v0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 19
    move-result-object p2

    .line 22
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 23
    const/4 v1, 0x0

    .line 25
    new-array v2, v1, [F

    .line 26
    invoke-virtual {p2, v0, p3, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 28
    move-result-object p2

    .line 31
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 32
    new-array v2, v1, [F

    .line 34
    invoke-virtual {p2, v0, p3, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 36
    move-result-object p2

    .line 39
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 40
    new-array v1, v1, [F

    .line 42
    invoke-virtual {p2, v0, p3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 44
    move-result-object p2

    .line 47
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 48
    move-result-object p2

    .line 51
    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 12
    move-result v1

    .line 15
    iget v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLetterSpace:F

    .line 16
    const/high16 v3, 0x40000000    # 2.0f

    .line 18
    iget v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextScaleTrans:F

    .line 20
    const/4 v5, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransX:F

    .line 25
    neg-float v6, v1

    .line 27
    iget v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransX:F

    .line 28
    sub-float/2addr v7, v1

    .line 30
    sub-float v1, v6, v7

    .line 31
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    .line 35
    move-result v7

    .line 38
    int-to-float v7, v7

    .line 39
    mul-float/2addr v7, v4

    .line 40
    add-float/2addr v7, v6

    .line 41
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 42
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    .line 44
    move-result v8

    .line 47
    int-to-float v8, v8

    .line 48
    invoke-static {v8, v4, v3, v6}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 49
    move-result v6

    .line 52
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    .line 55
    move-result v8

    .line 58
    int-to-float v8, v8

    .line 59
    mul-float/2addr v8, v2

    .line 60
    sub-float/2addr v6, v8

    .line 61
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    .line 64
    move-result v8

    .line 67
    int-to-float v8, v8

    .line 68
    mul-float/2addr v8, v4

    .line 69
    add-float/2addr v8, v1

    .line 70
    iget-object v9, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    .line 73
    move-result v9

    .line 76
    int-to-float v9, v9

    .line 77
    invoke-static {v9, v4, v3, v1}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 78
    move-result v1

    .line 81
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    .line 84
    move-result v3

    .line 87
    int-to-float v3, v3

    .line 88
    mul-float/2addr v3, v2

    .line 89
    sub-float/2addr v1, v3

    .line 90
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 91
    if-eqz v2, :cond_2

    .line 93
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransX:F

    .line 95
    neg-float v3, v3

    .line 97
    invoke-virtual {v2}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableWidth()I

    .line 98
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    iget v5, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 103
    mul-float/2addr v2, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 109
    move-result v1

    .line 112
    neg-int v1, v1

    .line 113
    int-to-float v1, v1

    .line 114
    mul-float/2addr v1, v4

    .line 115
    iget v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransX:F

    .line 116
    add-float/2addr v6, v1

    .line 118
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 121
    move-result v1

    .line 124
    neg-int v1, v1

    .line 125
    int-to-float v1, v1

    .line 126
    mul-float/2addr v1, v4

    .line 127
    mul-float/2addr v1, v3

    .line 128
    iget v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransX:F

    .line 129
    add-float/2addr v1, v7

    .line 131
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    .line 134
    move-result v7

    .line 137
    int-to-float v7, v7

    .line 138
    mul-float/2addr v7, v2

    .line 139
    add-float/2addr v7, v1

    .line 140
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 143
    move-result v1

    .line 146
    neg-int v1, v1

    .line 147
    int-to-float v1, v1

    .line 148
    mul-float/2addr v1, v4

    .line 149
    iget v8, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransX:F

    .line 150
    add-float/2addr v1, v8

    .line 152
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 153
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    .line 155
    move-result v8

    .line 158
    neg-int v8, v8

    .line 159
    int-to-float v8, v8

    .line 160
    mul-float/2addr v8, v4

    .line 161
    mul-float/2addr v8, v3

    .line 162
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransX:F

    .line 163
    add-float/2addr v8, v3

    .line 165
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    .line 168
    move-result v3

    .line 171
    int-to-float v3, v3

    .line 172
    mul-float/2addr v3, v2

    .line 173
    add-float/2addr v8, v3

    .line 174
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 175
    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {v2}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableWidth()I

    .line 179
    move-result v2

    .line 182
    neg-int v2, v2

    .line 183
    int-to-float v2, v2

    .line 184
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 185
    mul-float/2addr v2, v3

    .line 187
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransX:F

    .line 188
    :goto_0
    add-float v5, v2, v3

    .line 190
    :cond_2
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 192
    const-string v3, "hourLock"

    .line 194
    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 196
    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 199
    const-wide/16 v9, 0x0

    .line 201
    invoke-virtual {v2, v3, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 203
    move-result-object v2

    .line 206
    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 207
    invoke-virtual {v2, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 209
    move-result-object v2

    .line 212
    sget-object v9, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 213
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 215
    invoke-virtual {v2, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 217
    move-result-object v2

    .line 220
    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 221
    invoke-virtual {v2, v10, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 223
    move-result-object v2

    .line 226
    iput-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 227
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 229
    const-string v12, "hour1Aod"

    .line 231
    invoke-direct {v2, v12}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 233
    float-to-double v12, v6

    .line 236
    invoke-virtual {v2, v3, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 237
    move-result-object v2

    .line 240
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 241
    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    .line 243
    move-result v6

    .line 246
    int-to-float v6, v6

    .line 247
    mul-float/2addr v6, v4

    .line 248
    iget v12, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransY:F

    .line 249
    add-float/2addr v6, v12

    .line 251
    float-to-double v12, v6

    .line 252
    invoke-virtual {v2, v11, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 253
    move-result-object v2

    .line 256
    iget v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextAodScale:F

    .line 257
    float-to-double v12, v6

    .line 259
    invoke-virtual {v2, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 260
    move-result-object v2

    .line 263
    invoke-virtual {v2, v10, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 264
    move-result-object v2

    .line 267
    iput-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1AodState:Lmiuix/animation/controller/AnimState;

    .line 268
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 270
    const-string v6, "hour2Aod"

    .line 272
    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 274
    float-to-double v6, v7

    .line 277
    invoke-virtual {v2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 278
    move-result-object v2

    .line 281
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 282
    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    .line 284
    move-result v6

    .line 287
    int-to-float v6, v6

    .line 288
    mul-float/2addr v6, v4

    .line 289
    iget v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransY:F

    .line 290
    add-float/2addr v6, v7

    .line 292
    float-to-double v6, v6

    .line 293
    invoke-virtual {v2, v11, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 294
    move-result-object v2

    .line 297
    invoke-virtual {v2, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 298
    move-result-object v2

    .line 301
    invoke-virtual {v2, v10, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 302
    move-result-object v2

    .line 305
    iput-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2AodState:Lmiuix/animation/controller/AnimState;

    .line 306
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 308
    const-string v6, "min1Aod"

    .line 310
    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 312
    float-to-double v6, v1

    .line 315
    invoke-virtual {v2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 316
    move-result-object v1

    .line 319
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    .line 322
    move-result v2

    .line 325
    int-to-float v2, v2

    .line 326
    mul-float/2addr v2, v4

    .line 327
    iget v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransY:F

    .line 328
    add-float/2addr v2, v6

    .line 330
    float-to-double v6, v2

    .line 331
    invoke-virtual {v1, v11, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 332
    move-result-object v1

    .line 335
    invoke-virtual {v1, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 336
    move-result-object v1

    .line 339
    invoke-virtual {v1, v10, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 340
    move-result-object v1

    .line 343
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1AodState:Lmiuix/animation/controller/AnimState;

    .line 344
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 346
    const-string v2, "min2Aod"

    .line 348
    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 350
    float-to-double v6, v8

    .line 353
    invoke-virtual {v1, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 354
    move-result-object v1

    .line 357
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 358
    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    .line 360
    move-result v2

    .line 363
    int-to-float v2, v2

    .line 364
    mul-float/2addr v2, v4

    .line 365
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransY:F

    .line 366
    add-float/2addr v2, v3

    .line 368
    float-to-double v2, v2

    .line 369
    invoke-virtual {v1, v11, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 370
    move-result-object v1

    .line 373
    invoke-virtual {v1, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 374
    move-result-object v1

    .line 377
    invoke-virtual {v1, v10, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 378
    move-result-object v1

    .line 381
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2AodState:Lmiuix/animation/controller/AnimState;

    .line 382
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 384
    if-eqz v1, :cond_3

    .line 386
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 388
    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 390
    const-string/jumbo v2, "transX"

    .line 393
    float-to-double v3, v5

    .line 396
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 397
    move-result-object v1

    .line 400
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 401
    invoke-virtual {v2}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableHeight()I

    .line 403
    move-result v2

    .line 406
    neg-int v2, v2

    .line 407
    int-to-float v2, v2

    .line 408
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 409
    mul-float/2addr v2, v3

    .line 411
    iget v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransY:F

    .line 412
    add-float/2addr v2, v3

    .line 414
    float-to-double v2, v2

    .line 415
    const-string/jumbo v4, "transY"

    .line 416
    invoke-virtual {v1, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 419
    move-result-object v1

    .line 422
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mDrawableAodState:Lmiuix/animation/controller/AnimState;

    .line 423
    :cond_3
    if-nez p1, :cond_4

    .line 425
    const/high16 v1, 0x3f800000    # 1.0f

    .line 427
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->updateTimeViewAlpha(F)V

    .line 429
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initClockNumColor(Z)V

    .line 432
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSpecialEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 435
    if-eqz p1, :cond_5

    .line 437
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 439
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullWeek:Landroid/widget/TextView;

    .line 441
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 443
    filled-new-array {v2, v3, v4}, [Landroid/view/View;

    .line 445
    move-result-object v2

    .line 448
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 449
    move-result-object v2

    .line 452
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 453
    move-result-object v2

    .line 456
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 457
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 459
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 461
    move-result-object v5

    .line 464
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 465
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLineView:Landroid/view/View;

    .line 468
    filled-new-array {v2}, [Landroid/view/View;

    .line 470
    move-result-object v2

    .line 473
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 474
    move-result-object v2

    .line 477
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 478
    move-result-object v2

    .line 481
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 482
    move-result-object v3

    .line 485
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 486
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 489
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1AodState:Lmiuix/animation/controller/AnimState;

    .line 491
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 493
    invoke-static {v2, v3, v4, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 495
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 498
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2AodState:Lmiuix/animation/controller/AnimState;

    .line 500
    invoke-static {v2, v3, v4, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 502
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 505
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1AodState:Lmiuix/animation/controller/AnimState;

    .line 507
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 509
    invoke-static {v2, v3, v4, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 511
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 514
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2AodState:Lmiuix/animation/controller/AnimState;

    .line 516
    invoke-static {v2, v3, v4, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 518
    goto :goto_1

    .line 521
    :cond_5
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 522
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullWeek:Landroid/widget/TextView;

    .line 524
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 526
    filled-new-array {v2, v3, v4}, [Landroid/view/View;

    .line 528
    move-result-object v2

    .line 531
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 532
    move-result-object v2

    .line 535
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 536
    move-result-object v2

    .line 539
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 540
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 542
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 544
    move-result-object v5

    .line 547
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 548
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLineView:Landroid/view/View;

    .line 551
    filled-new-array {v2}, [Landroid/view/View;

    .line 553
    move-result-object v2

    .line 556
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 557
    move-result-object v2

    .line 560
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 561
    move-result-object v2

    .line 564
    filled-new-array {v4, v4}, [Ljava/lang/Object;

    .line 565
    move-result-object v4

    .line 568
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 569
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 572
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 574
    invoke-static {v2, v4, v3, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 576
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 579
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 581
    invoke-static {v2, v4, v3, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 583
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 586
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 588
    invoke-static {v2, v4, v3, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 590
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 593
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 595
    invoke-static {v2, v4, v3, v1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doClockNumAodAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/utils/EaseManager$EaseStyle;Lmiuix/animation/utils/EaseManager$EaseStyle;)V

    .line 597
    :goto_1
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTranslateParams:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;

    .line 600
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 602
    move-result-object v1

    .line 605
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 606
    move-result-object v1

    .line 609
    if-eqz p1, :cond_6

    .line 610
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mDrawableAodState:Lmiuix/animation/controller/AnimState;

    .line 612
    goto :goto_2

    .line 614
    :cond_6
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mDrawableLockState:Lmiuix/animation/controller/AnimState;

    .line 615
    :goto_2
    const/4 v3, 0x1

    .line 617
    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    .line 618
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 620
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 622
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksTransToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 625
    if-eqz p1, :cond_7

    .line 627
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksTransToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 629
    goto :goto_3

    .line 631
    :cond_7
    move-object v7, v6

    .line 632
    :goto_3
    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 633
    move-result-object v5

    .line 636
    new-instance v7, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;

    .line 637
    const/4 v8, 0x0

    .line 639
    invoke-direct {v7, v0, v8}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;I)V

    .line 640
    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    .line 643
    move-result-object v7

    .line 646
    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 647
    move-result-object v5

    .line 650
    aput-object v5, v4, v8

    .line 651
    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 653
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 656
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 658
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksScaleToLockEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 661
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksScaleToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 663
    if-eqz p1, :cond_8

    .line 665
    move-object v5, v4

    .line 667
    goto :goto_4

    .line 668
    :cond_8
    move-object v5, v2

    .line 669
    :goto_4
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 670
    move-result-object v9

    .line 673
    const-string/jumbo v10, "scaleXFraction"

    .line 674
    if-eqz p1, :cond_9

    .line 677
    move-object v11, v4

    .line 679
    goto :goto_5

    .line 680
    :cond_9
    move-object v11, v2

    .line 681
    :goto_5
    const-wide/16 v15, 0x0

    .line 682
    const-wide/16 v17, 0x64

    .line 684
    if-eqz p1, :cond_a

    .line 686
    move-wide v12, v15

    .line 688
    goto :goto_6

    .line 689
    :cond_a
    move-wide/from16 v12, v17

    .line 690
    :goto_6
    new-array v14, v8, [F

    .line 692
    invoke-virtual/range {v9 .. v14}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    .line 694
    move-result-object v19

    .line 697
    const-string/jumbo v20, "scaleYFraction"

    .line 698
    if-eqz p1, :cond_b

    .line 701
    move-object/from16 v21, v4

    .line 703
    goto :goto_7

    .line 705
    :cond_b
    move-object/from16 v21, v2

    .line 706
    :goto_7
    if-eqz p1, :cond_c

    .line 708
    move-wide/from16 v22, v15

    .line 710
    goto :goto_8

    .line 712
    :cond_c
    move-wide/from16 v22, v17

    .line 713
    :goto_8
    new-array v1, v8, [F

    .line 715
    move-object/from16 v24, v1

    .line 717
    invoke-virtual/range {v19 .. v24}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    .line 719
    move-result-object v1

    .line 722
    if-eqz p1, :cond_d

    .line 723
    move-object v2, v4

    .line 725
    goto :goto_9

    .line 726
    :cond_d
    move-object v2, v6

    .line 727
    :goto_9
    new-array v5, v8, [F

    .line 728
    const-string/jumbo v7, "strokeAlphaFraction"

    .line 730
    invoke-virtual {v1, v7, v2, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 733
    move-result-object v1

    .line 736
    if-eqz p1, :cond_e

    .line 737
    move-object v6, v4

    .line 739
    :cond_e
    new-array v2, v8, [F

    .line 740
    const-string/jumbo v5, "strokeWidthFraction"

    .line 742
    invoke-virtual {v1, v5, v6, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 745
    move-result-object v1

    .line 748
    if-eqz p1, :cond_f

    .line 749
    goto :goto_a

    .line 751
    :cond_f
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMaksRotateToAodEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 752
    :goto_a
    new-array v2, v8, [F

    .line 754
    const-string/jumbo v5, "rotationFraction"

    .line 756
    invoke-virtual {v1, v5, v4, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 759
    move-result-object v1

    .line 762
    new-instance v2, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;

    .line 763
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;I)V

    .line 765
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 768
    move-result-object v2

    .line 771
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 772
    move-result-object v1

    .line 775
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeMaskDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 776
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 778
    move-result-object v2

    .line 781
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 782
    move-result-object v2

    .line 785
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgStartState:Lmiuix/animation/controller/AnimState;

    .line 786
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 788
    move-result-object v2

    .line 791
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 792
    move-result-object v4

    .line 795
    iget-object v5, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgEndState:Lmiuix/animation/controller/AnimState;

    .line 796
    invoke-interface {v2, v5, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 798
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 801
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 803
    move-result-object v2

    .line 806
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 807
    move-result-object v2

    .line 810
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 811
    move-result-object v2

    .line 814
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 815
    move-result-object v1

    .line 818
    invoke-interface {v2, v5, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 819
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 822
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 824
    move-result-object v1

    .line 827
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 828
    move-result-object v1

    .line 831
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 832
    iget-object v3, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 834
    if-eqz p1, :cond_10

    .line 836
    move-object v4, v2

    .line 838
    goto :goto_b

    .line 839
    :cond_10
    move-object v4, v3

    .line 840
    :goto_b
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 841
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 843
    iget-object v6, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mElegantEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 846
    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 848
    move-result-object v5

    .line 851
    new-instance v7, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;

    .line 852
    const/4 v8, 0x2

    .line 854
    invoke-direct {v7, v0, v8}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;I)V

    .line 855
    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    .line 858
    move-result-object v7

    .line 861
    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 862
    move-result-object v5

    .line 865
    filled-new-array {v5}, [Lmiuix/animation/base/AnimConfig;

    .line 866
    move-result-object v5

    .line 869
    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 870
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 873
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 875
    move-result-object v1

    .line 878
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 879
    move-result-object v1

    .line 882
    if-eqz p1, :cond_11

    .line 883
    goto :goto_c

    .line 885
    :cond_11
    move-object v2, v3

    .line 886
    :goto_c
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 887
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 889
    invoke-virtual {v3, v6}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 892
    move-result-object v3

    .line 895
    new-instance v4, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;

    .line 896
    const/4 v5, 0x3

    .line 898
    invoke-direct {v4, v0, v5}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;I)V

    .line 899
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 902
    move-result-object v0

    .line 905
    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 906
    move-result-object v0

    .line 909
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 910
    move-result-object v0

    .line 913
    invoke-interface {v1, v2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 914
    return-void
    .line 917
.end method

.method public final initAnimationParams()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "ClockBaseAnimation"

    .line 6
    const-string v0, "initAnimationParams: mSmartFrame is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 26
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 30
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 35
    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    invoke-static {v2, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 38
    move-result v2

    .line 41
    const v4, 0x7f0709ae    # @dimen/miui_smart_frame_clock_width '330.0dp'

    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v4

    .line 48
    int-to-float v4, v4

    .line 49
    mul-float/2addr v4, v1

    .line 50
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 51
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 53
    move-result v5

    .line 56
    int-to-float v5, v5

    .line 57
    sub-float/2addr v5, v4

    .line 58
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v5, v4

    .line 61
    const v6, 0x7f0709a5    # @dimen/miui_smart_frame_clock_margin_top '87.0dp'

    .line 62
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v6

    .line 68
    int-to-float v6, v6

    .line 69
    mul-float/2addr v6, v1

    .line 70
    const v7, 0x7f0709a9    # @dimen/miui_smart_frame_clock_time_margin_start '3.0dp'

    .line 71
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    move-result v7

    .line 77
    int-to-float v7, v7

    .line 78
    mul-float/2addr v7, v1

    .line 79
    const v8, 0x7f0709a1    # @dimen/miui_smart_frame_clock_hour_margin_top '58.0dp'

    .line 80
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    move-result v8

    .line 86
    int-to-float v8, v8

    .line 87
    mul-float/2addr v8, v1

    .line 88
    const v9, 0x7f0709a7    # @dimen/miui_smart_frame_clock_minute_margin_top '134.0dp'

    .line 89
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v9

    .line 95
    int-to-float v9, v9

    .line 96
    mul-float/2addr v9, v1

    .line 97
    const v10, 0x7f0709bf    # @dimen/miui_smart_frame_single_clock_width '282.0dp'

    .line 98
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    move-result v10

    .line 104
    int-to-float v10, v10

    .line 105
    mul-float/2addr v10, v1

    .line 106
    const v11, 0x7f0709b5    # @dimen/miui_smart_frame_single_clock_height '355.0dp'

    .line 107
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v11

    .line 113
    int-to-float v11, v11

    .line 114
    mul-float/2addr v11, v1

    .line 115
    sget-boolean v12, Lcom/miui/clock/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 116
    if-eqz v12, :cond_1

    .line 118
    iget-object v12, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v12

    .line 125
    invoke-static {v12}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 126
    move-result v12

    .line 129
    if-eqz v12, :cond_1

    .line 130
    const v10, 0x7f0709b7    # @dimen/miui_smart_frame_single_clock_margin_start '32.0dp'

    .line 132
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    move-result v10

    .line 138
    int-to-float v10, v10

    .line 139
    mul-float/2addr v10, v1

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-object v12, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 142
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 144
    move-result v12

    .line 147
    int-to-float v12, v12

    .line 148
    sub-float/2addr v12, v10

    .line 149
    div-float v10, v12, v4

    .line 150
    :goto_0
    iget-object v12, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 152
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 154
    move-result v12

    .line 157
    int-to-float v12, v12

    .line 158
    sub-float/2addr v12, v11

    .line 159
    div-float/2addr v12, v4

    .line 160
    const v4, 0x7f0709bc    # @dimen/miui_smart_frame_single_clock_time_margin_start '0.0dp'

    .line 161
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    move-result v4

    .line 167
    int-to-float v4, v4

    .line 168
    mul-float/2addr v4, v1

    .line 169
    const v11, 0x7f0709b8    # @dimen/miui_smart_frame_single_clock_minute1_margin_start '153.0dp'

    .line 170
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    move-result v11

    .line 176
    int-to-float v11, v11

    .line 177
    mul-float/2addr v11, v1

    .line 178
    const v13, 0x7f0709b6    # @dimen/miui_smart_frame_single_clock_hour_margin_top '164.0dp'

    .line 179
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    move-result v13

    .line 185
    int-to-float v13, v13

    .line 186
    mul-float/2addr v13, v1

    .line 187
    const v14, 0x7f0709ba    # @dimen/miui_smart_frame_single_clock_minute_margin_top '236.0dp'

    .line 188
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    move-result v14

    .line 194
    int-to-float v14, v14

    .line 195
    mul-float/2addr v14, v1

    .line 196
    add-float/2addr v5, v7

    .line 197
    add-float/2addr v8, v6

    .line 198
    add-float/2addr v6, v9

    .line 199
    add-float/2addr v4, v10

    .line 200
    sub-float/2addr v4, v5

    .line 201
    iput v4, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransX:F

    .line 202
    add-float/2addr v11, v10

    .line 204
    sub-float/2addr v11, v5

    .line 205
    iput v11, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransX:F

    .line 206
    add-float/2addr v13, v12

    .line 208
    int-to-float v1, v2

    .line 209
    sub-float/2addr v13, v1

    .line 210
    sub-float/2addr v13, v8

    .line 211
    iput v13, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransY:F

    .line 212
    add-float/2addr v14, v12

    .line 214
    sub-float/2addr v14, v1

    .line 215
    sub-float/2addr v14, v6

    .line 216
    iput v14, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransY:F

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 219
    invoke-virtual {v1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableLeft()I

    .line 221
    move-result v1

    .line 224
    int-to-float v1, v1

    .line 225
    sub-float/2addr v10, v1

    .line 226
    iput v10, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransX:F

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 229
    invoke-virtual {v1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableTop()I

    .line 231
    move-result v1

    .line 234
    int-to-float v1, v1

    .line 235
    sub-float/2addr v12, v1

    .line 236
    iput v12, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransY:F

    .line 237
    new-instance v1, Landroid/util/TypedValue;

    .line 239
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 241
    const v2, 0x7f0710ae    # @dimen/smart_frame_mask_aod_scale '0.72'

    .line 244
    const/4 v4, 0x1

    .line 247
    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 248
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 251
    move-result v0

    .line 254
    iput v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgAodScale:F

    .line 255
    sub-float/2addr v3, v0

    .line 257
    const/high16 v0, 0x3f000000    # 0.5f

    .line 258
    mul-float/2addr v3, v0

    .line 260
    iput v3, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 261
    return-void
    .line 263
.end method

.method public final initClockNumColor(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockTextColor:I

    .line 12
    const-string v0, "#D7D7D7"

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodTextColor:I

    .line 20
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockTextColor:I

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 26
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodTextColor:I

    .line 29
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    if-eqz v0, :cond_6

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 38
    if-eqz v1, :cond_6

    .line 40
    if-eqz v0, :cond_6

    .line 42
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    if-nez v1, :cond_0

    .line 46
    goto :goto_4

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    const/16 v2, 0x3e8

    .line 50
    if-eqz p1, :cond_1

    .line 52
    move v3, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v3, v2

    .line 56
    :goto_0
    if-eqz p1, :cond_2

    .line 57
    goto :goto_1

    .line 59
    :cond_2
    const/16 v2, 0x7d0

    .line 60
    :goto_1
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 64
    move-result-object v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 70
    move-result-object v0

    .line 73
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeMaskDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 74
    invoke-virtual {v4}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->clearDrawableParams()V

    .line 76
    iget v5, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgAodScale:F

    .line 79
    invoke-virtual {v4, v5}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setCustomScale(F)V

    .line 81
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 84
    invoke-virtual {v5}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getFillColor()I

    .line 86
    move-result v5

    .line 89
    invoke-static {v0, v4, v5, v3, v2}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->analyzeAnimator(Landroid/animation/Animator;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;III)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    move-object v4, v0

    .line 95
    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 96
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 98
    move-result-object v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getAnimatorSet()Landroid/animation/AnimatorSet;

    .line 104
    move-result-object v0

    .line 107
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 108
    invoke-virtual {v5}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->clearDrawableParams()V

    .line 110
    iget v6, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgAodScale:F

    .line 113
    invoke-virtual {v5, v6}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setCustomScale(F)V

    .line 115
    invoke-static {v0, v5, v1, v3, v2}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->analyzeAnimator(Landroid/animation/Animator;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;III)V

    .line 118
    if-eqz p1, :cond_4

    .line 121
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 123
    goto :goto_2

    .line 125
    :cond_4
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodStrokeColor:I

    .line 126
    :goto_2
    move v11, v0

    .line 128
    if-eqz p1, :cond_5

    .line 129
    iget p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodStrokeColor:I

    .line 131
    goto :goto_3

    .line 133
    :cond_5
    iget p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 134
    :goto_3
    move v12, p1

    .line 136
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 137
    const-string v6, "_R_G_L_0_G_D_0_P_0"

    .line 139
    const-wide/16 v7, 0x269

    .line 141
    const-wide/16 v9, 0x11

    .line 143
    invoke-static/range {v4 .. v12}, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->addStrokeColor(Landroid/graphics/drawable/AnimatedVectorDrawable;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;Ljava/lang/String;JJII)V

    .line 145
    :cond_6
    :goto_4
    iget p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 150
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 152
    const/high16 p1, -0x1000000

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, " initClockNumColor lockTextColor: #"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLockTextColor:I

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, ", aodTextColor: #"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodTextColor:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, ", solidColor: #"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, ", aodStrokeColor: #"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget p0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodStrokeColor:I

    .line 215
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 227
    const-string p1, "ClockBaseAnimation"

    .line 228
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
    .line 233
.end method

.method public final initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->initView()V

    .line 2
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_DATE:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullDate:Landroid/widget/TextView;

    .line 15
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_WEEK:Lcom/miui/clock/module/ClockViewType;

    .line 17
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFullWeek:Landroid/widget/TextView;

    .line 25
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->HOUR1:Lcom/miui/clock/module/ClockViewType;

    .line 27
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 35
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->HOUR2:Lcom/miui/clock/module/ClockViewType;

    .line 37
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 45
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MIN1:Lcom/miui/clock/module/ClockViewType;

    .line 47
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 55
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MIN2:Lcom/miui/clock/module/ClockViewType;

    .line 57
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 65
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->LINE:Lcom/miui/clock/module/ClockViewType;

    .line 67
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLineView:Landroid/view/View;

    .line 73
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 75
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 81
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 83
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 89
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initClockNumColor(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 109
    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 118
    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 125
    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    move-result-object v0

    .line 148
    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 154
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 159
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 160
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 164
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 169
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 174
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 175
    move-result-object v0

    .line 178
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTranslateParams:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;

    .line 182
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 184
    move-result-object v0

    .line 187
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 188
    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mDrawableLockState:Lmiuix/animation/controller/AnimState;

    .line 192
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initAnimationParams()V

    .line 197
    return-void
    .line 200
.end method

.method public final resetColorForTimeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 6
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLineView:Landroid/view/View;

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 41
    move-result p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setFillColor(I)V

    .line 45
    :cond_0
    return-void
    .line 48
.end method

.method public final setSmartFrameView(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    invoke-virtual {p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getShape()I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeType:I

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 10
    invoke-virtual {p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getFillColor()I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 16
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformSmartFrameAodColor(I)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodStrokeColor:I

    .line 22
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 33
    sget-object v0, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->SVG_SMART_FRAME_RESOURCE:[I

    .line 34
    iget v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeType:I

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 38
    aget v0, v0, v1

    .line 40
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p1

    .line 67
    sget-object v0, Lcom/android/keyguard/clock/animation/utils/SVGUtils;->SVG_SMART_FRAME_STROKE_RESOURCE:[I

    .line 68
    iget v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeType:I

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 72
    aget v0, v0, v1

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setShapeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setStrokeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initClockNumColor(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initAnimationParams()V

    .line 111
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 114
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrameChangeListener:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;

    .line 116
    invoke-virtual {p1, p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setSmartFrameChangeListener(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;)V

    .line 118
    return-void
    .line 121
.end method

.method public final setSmartFrameViewFillColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSolidColor:I

    .line 2
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformSmartFrameAodColor(I)I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mAodStrokeColor:I

    .line 8
    return-void
    .line 10
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const-string/jumbo v1, "top"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    cmpl-float v0, p1, v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 40
    invoke-virtual {v1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableTop()I

    .line 42
    move-result v1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    .line 49
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    iget v2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextScaleTrans:F

    .line 54
    mul-float/2addr v1, v2

    .line 56
    iget v3, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHourAodTransY:F

    .line 57
    add-float/2addr v1, v3

    .line 59
    int-to-float v0, v0

    .line 60
    add-float/2addr v1, v0

    .line 61
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    .line 64
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    mul-float/2addr v3, v2

    .line 69
    iget v2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMinAodTransY:F

    .line 70
    add-float/2addr v3, v2

    .line 72
    add-float/2addr v3, v0

    .line 73
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 74
    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 76
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 79
    float-to-double v5, v1

    .line 81
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 82
    move-result-object v1

    .line 85
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 86
    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 88
    float-to-double v5, v3

    .line 91
    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 92
    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 96
    filled-new-array {v3}, [Landroid/view/View;

    .line 98
    move-result-object v3

    .line 101
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 102
    move-result-object v3

    .line 105
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 106
    move-result-object v3

    .line 109
    invoke-interface {v3, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 110
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 113
    filled-new-array {v3}, [Landroid/view/View;

    .line 115
    move-result-object v3

    .line 118
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 119
    move-result-object v3

    .line 122
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 123
    move-result-object v3

    .line 126
    invoke-interface {v3, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 130
    filled-new-array {v1}, [Landroid/view/View;

    .line 132
    move-result-object v1

    .line 135
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 136
    move-result-object v1

    .line 139
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 140
    move-result-object v1

    .line 143
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 144
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 147
    filled-new-array {v1}, [Landroid/view/View;

    .line 149
    move-result-object v1

    .line 152
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 153
    move-result-object v1

    .line 156
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 157
    move-result-object v1

    .line 160
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 161
    iget v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransY:F

    .line 164
    add-float/2addr v1, v0

    .line 166
    float-to-int v0, v1

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 168
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableWidth()I

    .line 172
    move-result v1

    .line 175
    neg-int v1, v1

    .line 176
    int-to-float v1, v1

    .line 177
    iget v2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSvgScaleTrans:F

    .line 178
    mul-float/2addr v1, v2

    .line 180
    iget v2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSVGAodTransX:F

    .line 181
    add-float/2addr v1, v2

    .line 183
    goto :goto_0

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 185
    :goto_0
    new-instance v2, Lmiuix/animation/controller/AnimState;

    .line 186
    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 188
    const-string/jumbo v3, "transX"

    .line 191
    float-to-double v4, v1

    .line 194
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 195
    move-result-object v1

    .line 198
    const-string/jumbo v2, "transY"

    .line 199
    int-to-double v3, v0

    .line 202
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 203
    move-result-object v1

    .line 206
    iput-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTranslateParams:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$TranslateParams;

    .line 209
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 211
    move-result-object v1

    .line 214
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 215
    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 219
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 221
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 224
    invoke-virtual {v1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mContainer:Landroid/view/View;

    .line 234
    filled-new-array {v0}, [Landroid/view/View;

    .line 236
    move-result-object v0

    .line 239
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 240
    move-result-object v0

    .line 243
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 244
    move-result-object v0

    .line 247
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 248
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    move-result-object v2

    .line 253
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 254
    move-result-object v2

    .line 257
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 258
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 261
    if-eqz p0, :cond_2

    .line 263
    filled-new-array {p0}, [Landroid/view/View;

    .line 265
    move-result-object p0

    .line 268
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 269
    move-result-object p0

    .line 272
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 273
    move-result-object p0

    .line 276
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    move-result-object p1

    .line 280
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 281
    move-result-object p1

    .line 284
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 285
    :cond_2
    return-void
    .line 288
.end method

.method public final updateTimeViewByConfigChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->initDrawablePositionParams()V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initAnimationParams()V

    .line 12
    return-void
    .line 15
.end method
