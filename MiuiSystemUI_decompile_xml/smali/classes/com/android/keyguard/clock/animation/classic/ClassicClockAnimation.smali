.class public final Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;
.super Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAodTransY:I

.field public final mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

.field public final mColorAodState:Lmiuix/animation/controller/AnimState;

.field public final mColorLockState:Lmiuix/animation/controller/AnimState;

.field public final mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mContainer:Landroid/view/View;

.field public mContainerAodState:Lmiuix/animation/controller/AnimState;

.field public mContainerLockState:Lmiuix/animation/controller/AnimState;

.field public mContainerNoticeState:Lmiuix/animation/controller/AnimState;

.field public mContentArea1:Landroid/view/View;

.field public mContentArea2:Landroid/view/View;

.field public mDensity:F

.field public final mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mMagazineAodState:Lmiuix/animation/controller/AnimState;

.field public mMagazineInfo:Landroid/view/View;

.field public mMagazineLockState:Lmiuix/animation/controller/AnimState;

.field public mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

.field public mNotificationTransX:F

.field public final mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mSignatureArea:Landroid/view/View;

.field public mTextArea:Landroid/view/View;

.field public mTimeArea:Landroid/view/View;

.field public final mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 3

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
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 19
    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_1

    .line 23
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 26
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 31
    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_2

    .line 35
    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 41
    const/16 p1, 0x28

    .line 43
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mAodTransY:I

    .line 45
    const/high16 p1, 0x40300000    # 2.75f

    .line 47
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mDensity:F

    .line 49
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTextArea:Landroid/view/View;

    .line 52
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTimeArea:Landroid/view/View;

    .line 54
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 58
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 64
    const-string p1, "colorLock"

    .line 66
    const-wide/16 v0, 0x0

    .line 68
    const-string v2, "fraction"

    .line 70
    invoke-static {p1, v2, v0, v1}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 72
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 76
    const-string p1, "colorAod"

    .line 78
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 80
    invoke-static {p1, v2, v0, v1}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 82
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 86
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 88
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 93
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 95
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 100
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data

    .line 112
    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data
    .line 120
.end method


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->updateAnimationState()V

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->updateTimeViewAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 13
    const-string v1, "magazineAodPosition"

    .line 15
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    const-string/jumbo v4, "top"

    .line 22
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 31
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v0

    .line 42
    iget-boolean v4, v3, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 43
    if-eqz v4, :cond_0

    .line 45
    iget-object v4, v3, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 47
    invoke-interface {v4}, Lcom/miui/clock/MiuiClockController$IClockView;->getTopMargin()F

    .line 49
    move-result v4

    .line 52
    float-to-int v4, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v4, v2

    .line 55
    :goto_0
    add-int/2addr v0, v4

    .line 56
    if-eqz p2, :cond_1

    .line 57
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 59
    invoke-direct {v4, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 61
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 64
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTimeArea:Landroid/view/View;

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 68
    move-result v5

    .line 71
    add-int/2addr v5, v0

    .line 72
    int-to-double v5, v5

    .line 73
    invoke-virtual {v4, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 74
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMagazineAodPositionState:Lmiuix/animation/controller/AnimState;

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 81
    invoke-direct {v4, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 86
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 88
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 90
    move-result v5

    .line 93
    add-int/2addr v5, v0

    .line 94
    int-to-double v5, v5

    .line 95
    invoke-virtual {v4, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 96
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMagazineAodPositionState:Lmiuix/animation/controller/AnimState;

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 103
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 105
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMagazineAodPositionState:Lmiuix/animation/controller/AnimState;

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 112
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 114
    const/4 v5, 0x1

    .line 116
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 117
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 119
    if-eqz p1, :cond_3

    .line 121
    iget-object p2, v3, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 123
    check-cast p2, Lcom/miui/clock/classic/ClassicClockView;

    .line 125
    invoke-virtual {p2, v2}, Lcom/miui/clock/classic/ClassicClockView;->setShowFullTime(Z)V

    .line 127
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 130
    filled-new-array {p2}, [Landroid/view/View;

    .line 132
    move-result-object p2

    .line 135
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 136
    move-result-object p2

    .line 139
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 140
    move-result-object p2

    .line 143
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 147
    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 148
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 151
    filled-new-array {p2}, [Landroid/view/View;

    .line 153
    move-result-object p2

    .line 156
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 157
    move-result-object p2

    .line 160
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 161
    move-result-object p2

    .line 164
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 168
    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 169
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 172
    filled-new-array {p2}, [Landroid/view/View;

    .line 174
    move-result-object p2

    .line 177
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 178
    move-result-object p2

    .line 181
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 182
    move-result-object p2

    .line 185
    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 186
    move-result-object v0

    .line 189
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 190
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 193
    filled-new-array {p2}, [Landroid/view/View;

    .line 195
    move-result-object p2

    .line 198
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 199
    move-result-object p2

    .line 202
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 203
    move-result-object p2

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineAodState:Lmiuix/animation/controller/AnimState;

    .line 207
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 212
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 213
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 216
    filled-new-array {p2}, [Landroid/view/View;

    .line 218
    move-result-object p2

    .line 221
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 222
    move-result-object p2

    .line 225
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 226
    move-result-object p2

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerAodState:Lmiuix/animation/controller/AnimState;

    .line 230
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 232
    move-result-object v0

    .line 235
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 236
    goto/16 :goto_2

    .line 239
    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 241
    filled-new-array {v8}, [Landroid/view/View;

    .line 243
    move-result-object v8

    .line 246
    invoke-static {v8}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 247
    move-result-object v8

    .line 250
    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 251
    move-result-object v8

    .line 254
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMagazineAodPositionState:Lmiuix/animation/controller/AnimState;

    .line 255
    invoke-interface {v8, v9}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 257
    if-eqz p2, :cond_4

    .line 260
    iget-object p2, v3, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 262
    check-cast p2, Lcom/miui/clock/classic/ClassicClockView;

    .line 264
    invoke-virtual {p2, v5}, Lcom/miui/clock/classic/ClassicClockView;->setShowFullTime(Z)V

    .line 266
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 269
    filled-new-array {p2}, [Landroid/view/View;

    .line 271
    move-result-object p2

    .line 274
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 275
    move-result-object p2

    .line 278
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 279
    move-result-object p2

    .line 282
    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 283
    move-result-object v1

    .line 286
    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 287
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 290
    filled-new-array {p2}, [Landroid/view/View;

    .line 292
    move-result-object p2

    .line 295
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 296
    move-result-object p2

    .line 299
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 300
    move-result-object p2

    .line 303
    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 304
    move-result-object v1

    .line 307
    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 308
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 311
    filled-new-array {p2}, [Landroid/view/View;

    .line 313
    move-result-object p2

    .line 316
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 317
    move-result-object p2

    .line 320
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 321
    move-result-object p2

    .line 324
    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 328
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 329
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 332
    filled-new-array {p2}, [Landroid/view/View;

    .line 334
    move-result-object p2

    .line 337
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 338
    move-result-object p2

    .line 341
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 342
    move-result-object p2

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 346
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 348
    move-result-object v0

    .line 351
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 352
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 355
    filled-new-array {p2}, [Landroid/view/View;

    .line 357
    move-result-object p2

    .line 360
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 361
    move-result-object p2

    .line 364
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 365
    move-result-object p2

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerNoticeState:Lmiuix/animation/controller/AnimState;

    .line 369
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 371
    move-result-object v0

    .line 374
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 375
    goto :goto_2

    .line 378
    :cond_4
    iget-object p2, v3, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 379
    check-cast p2, Lcom/miui/clock/classic/ClassicClockView;

    .line 381
    invoke-virtual {p2, v2}, Lcom/miui/clock/classic/ClassicClockView;->setShowFullTime(Z)V

    .line 383
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 386
    filled-new-array {p2}, [Landroid/view/View;

    .line 388
    move-result-object p2

    .line 391
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 392
    move-result-object p2

    .line 395
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 396
    move-result-object p2

    .line 399
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    .line 400
    move-result-object v0

    .line 403
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 404
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 407
    filled-new-array {p2}, [Landroid/view/View;

    .line 409
    move-result-object p2

    .line 412
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 413
    move-result-object p2

    .line 416
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 417
    move-result-object p2

    .line 420
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    .line 421
    move-result-object v0

    .line 424
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 425
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 428
    filled-new-array {p2}, [Landroid/view/View;

    .line 430
    move-result-object p2

    .line 433
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 434
    move-result-object p2

    .line 437
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 438
    move-result-object p2

    .line 441
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    .line 442
    move-result-object v0

    .line 445
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 446
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 449
    filled-new-array {p2}, [Landroid/view/View;

    .line 451
    move-result-object p2

    .line 454
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 455
    move-result-object p2

    .line 458
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 459
    move-result-object p2

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 463
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 465
    move-result-object v0

    .line 468
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 469
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 472
    filled-new-array {p2}, [Landroid/view/View;

    .line 474
    move-result-object p2

    .line 477
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 478
    move-result-object p2

    .line 481
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 482
    move-result-object p2

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 486
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 488
    move-result-object v0

    .line 491
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 492
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 495
    move-result p2

    .line 498
    if-eqz p2, :cond_6

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 501
    move-result p2

    .line 504
    const-string v0, "alpha"

    .line 505
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 507
    move-result-object v1

    .line 510
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 511
    move-result-object v1

    .line 514
    const/4 v3, 0x3

    .line 515
    new-array v3, v3, [Ljava/lang/Object;

    .line 516
    aput-object v0, v3, v2

    .line 518
    if-eqz p1, :cond_5

    .line 520
    const/16 v2, 0xff

    .line 522
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    move-result-object p1

    .line 527
    aput-object p1, v3, v5

    .line 528
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 530
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 532
    new-instance v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;

    .line 535
    invoke-direct {v0, p0, p2}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;Z)V

    .line 537
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 540
    move-result-object p0

    .line 543
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 544
    move-result-object p0

    .line 547
    const/4 p1, 0x2

    .line 548
    aput-object p0, v3, p1

    .line 549
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 551
    goto :goto_3

    .line 554
    :cond_6
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 555
    if-eqz p1, :cond_7

    .line 557
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 559
    move-result-object p1

    .line 562
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 563
    move-result-object p1

    .line 566
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 567
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 569
    invoke-virtual {p2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 572
    move-result-object p2

    .line 575
    new-instance v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;

    .line 576
    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V

    .line 578
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 581
    move-result-object v0

    .line 584
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 585
    move-result-object p2

    .line 588
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 589
    move-result-object p2

    .line 592
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 593
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 595
    goto :goto_3

    .line 598
    :cond_7
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 599
    move-result-object p1

    .line 602
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 603
    move-result-object p1

    .line 606
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 607
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 609
    invoke-virtual {p2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 612
    move-result-object p2

    .line 615
    new-instance v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;

    .line 616
    invoke-direct {v0, p0, v5}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V

    .line 618
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 621
    move-result-object v0

    .line 624
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 625
    move-result-object p2

    .line 628
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 629
    move-result-object p2

    .line 632
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 633
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 635
    :goto_3
    return-void
    .line 638
.end method

.method public final doAnimationToNotification(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->updateAnimationState()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, v0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 13
    check-cast p1, Lcom/miui/clock/classic/ClassicClockView;

    .line 15
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicClockView;->setShowFullTime(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 21
    filled-new-array {p1}, [Landroid/view/View;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 27
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 35
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 37
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 43
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 46
    filled-new-array {p1}, [Landroid/view/View;

    .line 48
    move-result-object p1

    .line 51
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 52
    move-result-object p1

    .line 55
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 56
    move-result-object p1

    .line 59
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 67
    filled-new-array {p1}, [Landroid/view/View;

    .line 69
    move-result-object p1

    .line 72
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 73
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 77
    move-result-object p1

    .line 80
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 85
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 88
    filled-new-array {p1}, [Landroid/view/View;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object p1

    .line 97
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 102
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 107
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 108
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 111
    filled-new-array {p1}, [Landroid/view/View;

    .line 113
    move-result-object p1

    .line 116
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 117
    move-result-object p1

    .line 120
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 121
    move-result-object p1

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerNoticeState:Lmiuix/animation/controller/AnimState;

    .line 125
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 130
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 131
    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, v0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 135
    check-cast p1, Lcom/miui/clock/classic/ClassicClockView;

    .line 137
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicClockView;->setShowFullTime(Z)V

    .line 140
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 143
    filled-new-array {p1}, [Landroid/view/View;

    .line 145
    move-result-object p1

    .line 148
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 149
    move-result-object p1

    .line 152
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 153
    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 159
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 161
    move-result-object v3

    .line 164
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 165
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 168
    filled-new-array {p1}, [Landroid/view/View;

    .line 170
    move-result-object p1

    .line 173
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 174
    move-result-object p1

    .line 177
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 178
    move-result-object p1

    .line 181
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 182
    move-result-object v3

    .line 185
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 186
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 189
    filled-new-array {p1}, [Landroid/view/View;

    .line 191
    move-result-object p1

    .line 194
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 195
    move-result-object p1

    .line 198
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 199
    move-result-object p1

    .line 202
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 203
    move-result-object v0

    .line 206
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 207
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 210
    filled-new-array {p1}, [Landroid/view/View;

    .line 212
    move-result-object p1

    .line 215
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 216
    move-result-object p1

    .line 219
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 220
    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 224
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 229
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 230
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 233
    filled-new-array {p1}, [Landroid/view/View;

    .line 235
    move-result-object p1

    .line 238
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 239
    move-result-object p1

    .line 242
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 243
    move-result-object p1

    .line 246
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 247
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 249
    move-result-object p0

    .line 252
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 253
    :goto_0
    return-void
    .line 256
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mAodTransY:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mDensity:F

    .line 5
    mul-float/2addr v0, p0

    .line 7
    return v0
    .line 8
.end method

.method public final initClockNumColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 8
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 10
    move-result v2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 16
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 25
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " initClockNumColor lockColor: #"

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 45
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 47
    move-result v2

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ", aodColor: #"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 63
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, ", mColorParams.getCurrentColor(): #"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 79
    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 93
    const-string v0, "ClockBaseAnimation"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
    .line 99
.end method

.method public final initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->initView()V

    .line 2
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->TEXT_AREA:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTextArea:Landroid/view/View;

    .line 13
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->TIME_AREA:Lcom/miui/clock/module/ClockViewType;

    .line 15
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTimeArea:Landroid/view/View;

    .line 21
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CONTENT_AREA1:Lcom/miui/clock/module/ClockViewType;

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 29
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CONTENT_AREA2:Lcom/miui/clock/module/ClockViewType;

    .line 31
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 37
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->SIGNATURE_AREA:Lcom/miui/clock/module/ClockViewType;

    .line 39
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mSignatureArea:Landroid/view/View;

    .line 45
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 47
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 53
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 55
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v0

    .line 66
    const v2, 0x7f0701c5    # @dimen/classic_notification_trans_x '0.0dp'

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    iput v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 75
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 83
    neg-float v0, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 87
    :goto_0
    iput v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    move-result-object v0

    .line 100
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 101
    iput v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mDensity:F

    .line 103
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 105
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->initClockNumColor()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 114
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 120
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 124
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 126
    const-string v0, "alpha"

    .line 129
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 134
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 135
    move-result-object v1

    .line 138
    const/4 v2, 0x0

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v3

    .line 143
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 147
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 153
    move-result-object v0

    .line 156
    new-instance v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;

    .line 157
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 162
    return-void
    .line 165
.end method

.method public final resetColorOnSuperSaveChange(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 11
    iget v0, p1, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 13
    iput v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 15
    iget p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 17
    iput p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 24
    if-eqz p1, :cond_1

    .line 26
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 31
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 38
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 45
    check-cast p1, Lcom/miui/clock/classic/ClassicClockView;

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 49
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 51
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 54
    iget p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 58
    :cond_1
    :goto_0
    return-void
    .line 61
.end method

.method public final updateAnimationState()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 3
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getMagazinePositionY(Z)I

    .line 5
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiClockController;->getMagazinePositionY(Z)I

    .line 10
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 15
    const-string v2, "magazineNotice"

    .line 17
    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 19
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 22
    int-to-double v3, v0

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 29
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 37
    const-string v0, "magazineLock"

    .line 39
    const-wide/16 v5, 0x0

    .line 41
    invoke-static {v0, v2, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 51
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 53
    const-string v3, "containerAod"

    .line 55
    invoke-direct {v0, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 57
    iget v3, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mAodTransY:I

    .line 60
    int-to-float v4, v3

    .line 62
    iget v7, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mDensity:F

    .line 63
    mul-float/2addr v4, v7

    .line 65
    float-to-double v7, v4

    .line 66
    invoke-virtual {v0, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 67
    move-result-object v0

    .line 70
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 71
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 73
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerAodState:Lmiuix/animation/controller/AnimState;

    .line 77
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 79
    const-string v7, "magazineAod"

    .line 81
    invoke-direct {v0, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 83
    int-to-float v3, v3

    .line 86
    iget v7, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mDensity:F

    .line 87
    mul-float/2addr v3, v7

    .line 89
    float-to-double v7, v3

    .line 90
    invoke-virtual {v0, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 95
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineAodState:Lmiuix/animation/controller/AnimState;

    .line 99
    const-string v0, "containerLock"

    .line 101
    invoke-static {v0, v2, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 103
    move-result-object v0

    .line 106
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 107
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 111
    const-string v0, "containerNotice"

    .line 113
    invoke-static {v0, v2, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 115
    move-result-object v0

    .line 118
    iget v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 119
    float-to-double v1, v1

    .line 121
    invoke-virtual {v0, v4, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 122
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainerNoticeState:Lmiuix/animation/controller/AnimState;

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 128
    iget v1, v0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 130
    const/4 v2, -0x1

    .line 132
    if-nez v1, :cond_0

    .line 133
    move v1, v2

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 138
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 141
    if-nez v0, :cond_1

    .line 143
    goto :goto_0

    .line 145
    :cond_1
    move v2, v0

    .line 146
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 147
    return-void
    .line 150
.end method

.method public final updateColorInfo(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->initClockNumColor()V

    .line 2
    return-void
    .line 5
.end method

.method public final updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 15
    :goto_0
    return-void
    .line 17
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 5
    filled-new-array {v0}, [Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p1

    .line 24
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 29
    return-void
    .line 32
.end method

.method public final updateTimeViewByConfigChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    const v0, 0x7f0701c5    # @dimen/classic_notification_trans_x '0.0dp'

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 16
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 24
    neg-float p1, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 28
    :goto_0
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mNotificationTransX:F

    .line 30
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 32
    if-eqz p1, :cond_1

    .line 34
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;

    .line 43
    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 49
    return-void
    .line 52
.end method
