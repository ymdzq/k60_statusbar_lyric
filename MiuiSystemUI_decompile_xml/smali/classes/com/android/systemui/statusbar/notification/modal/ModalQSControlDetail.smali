.class public Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public detailCornerRadius:F

.field public mAnim:Lmiuix/animation/IStateStyle;

.field public final mAnimateHideRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

.field public final mAnimateShowRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDetailIndex:I

.field public mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public mDetailContainer:Landroid/view/View;

.field public mDetailContent:Landroid/view/ViewGroup;

.field public final mDetailViews:Landroid/util/SparseArray;

.field public mFromView:Landroid/view/View;

.field public final mFromViewFrame:[I

.field public final mFromViewLocation:[I

.field public mIsAnimating:Z

.field public mToView:Landroid/view/View;

.field public final mToViewFrame:[I

.field public final mToViewLocation:[I

.field public mTranslateView:Landroid/view/View;

.field public final pluginListener:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;


# direct methods
.method public static -$$Nest$smsetViewFrame(Landroid/view/View;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    .line 3
    const/4 v1, 0x1

    .line 5
    aget v2, p1, v1

    .line 6
    const/4 v3, 0x2

    .line 8
    aget v3, p1, v3

    .line 9
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result v3

    .line 14
    aget v1, p1, v1

    .line 15
    const/4 v4, 0x3

    .line 17
    aget p1, p1, v4

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p1

    .line 23
    invoke-virtual {p0, v0, v2, v3, p1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 24
    return-void
    .line 27
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 10
    const/4 p2, 0x4

    .line 12
    new-array v0, p2, [I

    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 15
    new-array v0, p2, [I

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 19
    new-array v0, p2, [I

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 23
    new-array p2, p2, [I

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 27
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;

    .line 29
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;)V

    .line 31
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->pluginListener:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;

    .line 34
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 36
    const/4 v0, 0x0

    .line 38
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnimateShowRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 42
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 44
    const/4 v0, 0x1

    .line 46
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnimateHideRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 52
    return-void
    .line 54
.end method

.method public static getLocationInWindowWithoutTransform(Landroid/view/View;[I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput v1, p1, v0

    .line 10
    aput v1, p1, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    aput v2, p1, v1

    .line 19
    aget v2, p1, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 23
    move-result v3

    .line 26
    add-int/2addr v3, v2

    .line 27
    aput v3, p1, v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object p0

    .line 33
    :goto_0
    instance-of v2, p0, Landroid/view/View;

    .line 34
    if-eqz v2, :cond_0

    .line 36
    check-cast p0, Landroid/view/View;

    .line 38
    aget v2, p1, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 42
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    aput v2, p1, v1

    .line 47
    aget v2, p1, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 51
    move-result v3

    .line 54
    sub-int/2addr v2, v3

    .line 55
    aput v2, p1, v0

    .line 56
    aget v2, p1, v1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 60
    move-result v3

    .line 63
    add-int/2addr v3, v2

    .line 64
    aput v3, p1, v1

    .line 65
    aget v2, p1, v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 69
    move-result v3

    .line 72
    add-int/2addr v3, v2

    .line 73
    aput v3, p1, v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    move-result-object p0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    aget p0, p1, v1

    .line 81
    int-to-float p0, p0

    .line 83
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 84
    move-result p0

    .line 87
    aput p0, p1, v1

    .line 88
    aget p0, p1, v0

    .line 90
    int-to-float p0, p0

    .line 92
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 93
    move-result p0

    .line 96
    aput p0, p1, v0

    .line 97
    return-void

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string p1, "inOutLocation must be an array of two integers"

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0
    .line 107
.end method


# virtual methods
.method public final animateDetailAlphaWithRotation(Landroid/view/View;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x2

    .line 3
    const-string v2, "detail_container_alpha"

    .line 4
    const-wide/16 v3, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 10
    filled-new-array {p2}, [Landroid/view/View;

    .line 12
    move-result-object p2

    .line 15
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 16
    move-result-object p2

    .line 19
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 20
    move-result-object p2

    .line 23
    invoke-interface {p2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 24
    if-eqz p1, :cond_0

    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 31
    move-result v5

    .line 34
    invoke-virtual {p2, v5}, Landroid/view/View;->setRotationX(F)V

    .line 35
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    .line 40
    move-result v5

    .line 43
    invoke-virtual {p2, v5}, Landroid/view/View;->setRotationY(F)V

    .line 44
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 49
    move-result p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 56
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 62
    filled-new-array {p1}, [Landroid/view/View;

    .line 64
    move-result-object p1

    .line 67
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 68
    move-result-object p1

    .line 71
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 72
    move-result-object p1

    .line 75
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 76
    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 78
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 81
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-virtual {p2, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 85
    move-result-object p2

    .line 88
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 89
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 91
    move-result-object p2

    .line 94
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 95
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 97
    move-result-object p2

    .line 100
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    .line 101
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 103
    move-result-object p2

    .line 106
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 107
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 109
    new-array v0, v0, [F

    .line 112
    fill-array-data v0, :array_0

    .line 114
    invoke-virtual {v2, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 117
    move-result-object v0

    .line 120
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$11;

    .line 121
    const/4 v2, 0x0

    .line 123
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$11;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 124
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 127
    move-result-object p0

    .line 130
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 131
    move-result-object p0

    .line 134
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 135
    move-result-object p0

    .line 138
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 139
    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

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
    invoke-interface {p1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 160
    filled-new-array {p1}, [Landroid/view/View;

    .line 162
    move-result-object p1

    .line 165
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 166
    move-result-object p1

    .line 169
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 170
    move-result-object p1

    .line 173
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 174
    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 176
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 179
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 181
    move-result-object p2

    .line 184
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 185
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 187
    move-result-object p2

    .line 190
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 191
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 193
    move-result-object p2

    .line 196
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    .line 197
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 199
    move-result-object p2

    .line 202
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 203
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 205
    new-array v0, v0, [F

    .line 208
    fill-array-data v0, :array_1

    .line 210
    invoke-virtual {v2, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 213
    move-result-object v0

    .line 216
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$11;

    .line 217
    const/4 v2, 0x1

    .line 219
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$11;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 220
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 223
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 227
    move-result-object p0

    .line 230
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 231
    move-result-object p0

    .line 234
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 235
    :goto_0
    return-void

    .line 238
    nop

    .line 239
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
    .end array-data

    .line 240
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
    .end array-data
    .line 248
.end method

.method public final computeAnimationParams()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 4
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 9
    const/4 v1, 0x1

    .line 11
    aget v2, v0, v1

    .line 12
    int-to-float v2, v2

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 17
    move-result v3

    .line 20
    add-float/2addr v3, v2

    .line 21
    float-to-int v2, v3

    .line 22
    aput v2, v0, v1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 25
    aget v2, v0, v1

    .line 27
    int-to-float v2, v2

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 32
    move-result v3

    .line 35
    add-float/2addr v3, v2

    .line 36
    float-to-int v2, v3

    .line 37
    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 42
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v0

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 53
    const/4 v3, 0x0

    .line 55
    aget v4, v2, v3

    .line 56
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v5

    .line 63
    const v6, 0x7f070e57    # @dimen/panel_content_margin '12.0dp'

    .line 64
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    move-result v5

    .line 70
    add-int/2addr v5, v4

    .line 71
    aput v5, v2, v3

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v2

    .line 79
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 80
    move-result v2

    .line 83
    const/4 v4, 0x2

    .line 84
    mul-int/2addr v2, v4

    .line 85
    sub-int/2addr v0, v2

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 89
    move-result v2

    .line 92
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 95
    move-result v5

    .line 98
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 101
    move-result v6

    .line 104
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 105
    aget v8, v7, v3

    .line 107
    add-int/2addr v8, v0

    .line 109
    aput v8, v7, v4

    .line 110
    aget v0, v7, v1

    .line 112
    add-int/2addr v0, v2

    .line 114
    const/4 v2, 0x3

    .line 115
    aput v0, v7, v2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 118
    aget v7, v0, v3

    .line 120
    add-int/2addr v7, v5

    .line 122
    aput v7, v0, v4

    .line 123
    aget v5, v0, v1

    .line 125
    add-int/2addr v5, v6

    .line 127
    aput v5, v0, v2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 130
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 134
    move-result v5

    .line 137
    aput v5, v0, v3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 140
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 142
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 144
    move-result v5

    .line 147
    aput v5, v0, v1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 150
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 152
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 154
    move-result v5

    .line 157
    aput v5, v0, v4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 160
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 162
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 164
    move-result v5

    .line 167
    aput v5, v0, v2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 170
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 172
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 174
    move-result v5

    .line 177
    aput v5, v0, v3

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 182
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 184
    move-result v3

    .line 187
    aput v3, v0, v1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 194
    move-result v1

    .line 197
    aput v1, v0, v4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 204
    move-result p0

    .line 207
    aput p0, v0, v2

    .line 208
    return-void
    .line 210
.end method

.method public getVisualBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p0

    .line 16
    add-int/2addr p0, v1

    .line 17
    return p0
    .line 18
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->pluginListener:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mExtraListener:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->updateContainerHeight()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->pluginListener:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$1;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mExtraListener:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 6
    const v0, 0x1020002    # @android:id/content

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 18
    const v0, 0x7f0a0758    # @id/qs_detail_container

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 33
    sget-object v2, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const v2, 0x7f08171e    # @drawable/qs_control_detail_bg 'res/drawable/qs_control_detail_bg.xml'

    .line 39
    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v3

    .line 45
    instance-of v3, v3, Lcom/android/systemui/controlcenter/utils/SmoothRoundDrawable;

    .line 46
    if-nez v3, :cond_0

    .line 48
    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 59
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    if-eqz v0, :cond_2

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 75
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v0

    .line 85
    const v2, 0x7f070f37    # @dimen/qs_control_mi_play_detail_corner_radius '30.0dp'

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    move-result v0

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->detailCornerRadius:F

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$2;

    .line 102
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$2;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->updateContainerHeight()V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 113
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 119
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnim:Lmiuix/animation/IStateStyle;

    .line 123
    return-void
    .line 125
.end method

.method public final requestLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInLayout()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    instance-of v1, v0, Landroid/view/View;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    move-object v1, v0

    .line 24
    check-cast v1, Landroid/view/View;

    .line 25
    iget v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 27
    and-int/lit16 v2, v2, -0x1001

    .line 29
    iput v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 31
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 33
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 38
    return-void
    .line 41
.end method

.method public final updateContainerHeight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    const/4 v1, -0x2

    .line 10
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    return-void
    .line 18
.end method
