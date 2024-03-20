.class public final Lcom/android/systemui/privacy/television/TvPrivacyChipsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# static fields
.field public static final CHIPS:Ljava/util/List;


# instance fields
.field public final mAccessibilityRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

.field public final mBounds:[Landroid/graphics/Rect;

.field public mChips:Ljava/util/List;

.field public mChipsContainer:Landroid/view/ViewGroup;

.field public final mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

.field public final mCollapseTransition:Landroid/transition/TransitionSet;

.field public final mContext:Landroid/content/Context;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mIsRtl:Z

.field public final mItemsBeforeLastAnnouncement:Ljava/util/List;

.field public final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public mPrivacyItems:Ljava/util/List;

.field public final mTransition:Landroid/transition/TransitionSet;

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public final mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 2
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f060787    # @color/privacy_media_projection_chip '#c9ccd0'

    .line 10
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;-><init>(ILjava/util/List;Z)V

    .line 14
    new-instance v1, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 17
    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 19
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 21
    filled-new-array {v2, v3}, [Lcom/android/systemui/privacy/PrivacyType;

    .line 23
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v2

    .line 30
    const v3, 0x7f060788    # @color/privacy_mic_cam_chip '#5bb974'

    .line 31
    const/4 v4, 0x1

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;-><init>(ILjava/util/List;Z)V

    .line 35
    filled-new-array {v0, v1}, [Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 46
    return-void
    .line 48
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/view/IWindowManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 21
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 28
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mAccessibilityRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

    .line 35
    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Landroid/graphics/Rect;

    .line 38
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mBounds:[Landroid/graphics/Rect;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 69
    move-result p3

    .line 72
    const/4 v0, 0x0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-ne p3, v1, :cond_0

    .line 75
    move p3, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move p3, v0

    .line 79
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateStaticPrivacyIndicatorBounds()V

    .line 82
    const p3, 0x7f0c001f    # @interpolator/tv_privacy_chip_collapse_interpolator 'res/interpolator/tv_privacy_chip_collapse_interpolator.xml'

    .line 85
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 88
    move-result-object p3

    .line 91
    const v2, 0x7f0c0020    # @interpolator/tv_privacy_chip_expand_interpolator 'res/interpolator/tv_privacy_chip_expand_interpolator.xml'

    .line 92
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 95
    move-result-object p1

    .line 98
    new-instance v2, Landroid/transition/TransitionSet;

    .line 99
    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 101
    new-instance v3, Landroid/transition/Fade;

    .line 104
    invoke-direct {v3, v1}, Landroid/transition/Fade;-><init>(I)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 109
    move-result-object v2

    .line 112
    new-instance v3, Landroid/transition/Fade;

    .line 113
    const/4 v4, 0x2

    .line 115
    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 119
    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 123
    const-class v3, Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 128
    new-instance v3, Landroid/transition/ChangeBounds;

    .line 131
    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 133
    const-class v4, Landroid/widget/ImageView;

    .line 136
    invoke-virtual {v3, v4, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 138
    invoke-virtual {v3, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 141
    new-instance v4, Landroid/transition/ChangeBounds;

    .line 144
    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    .line 146
    const-class v5, Landroid/widget/ImageView;

    .line 149
    invoke-virtual {v4, v5, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 151
    invoke-virtual {v4, p3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 154
    new-instance v1, Landroid/transition/AutoTransition;

    .line 157
    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    .line 159
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 162
    const-class v5, Landroid/widget/ImageView;

    .line 165
    invoke-virtual {v1, v5}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    .line 167
    invoke-virtual {v1, p3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 170
    new-instance p3, Landroid/transition/AutoTransition;

    .line 173
    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    .line 175
    invoke-virtual {p3, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 178
    const-class v5, Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p3, v5}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    .line 183
    invoke-virtual {p3, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 186
    new-instance p1, Landroid/transition/TransitionSet;

    .line 189
    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 191
    invoke-virtual {p1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 194
    move-result-object p1

    .line 197
    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 198
    move-result-object p1

    .line 201
    invoke-virtual {p1, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 202
    move-result-object p1

    .line 205
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 206
    move-result-object p1

    .line 209
    const p3, 0x7f0b00f3    # @integer/privacy_chip_animation_millis '300'

    .line 210
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 213
    move-result v3

    .line 216
    int-to-long v5, v3

    .line 217
    invoke-virtual {p1, v5, v6}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 218
    move-result-object p1

    .line 221
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mTransition:Landroid/transition/TransitionSet;

    .line 222
    new-instance v3, Landroid/transition/TransitionSet;

    .line 224
    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 226
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 229
    move-result-object v2

    .line 232
    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 233
    move-result-object v2

    .line 236
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 237
    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 241
    move-result-object v0

    .line 244
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 245
    move-result p2

    .line 248
    int-to-long p2, p2

    .line 249
    invoke-virtual {v0, p2, p3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 250
    move-result-object p2

    .line 253
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseTransition:Landroid/transition/TransitionSet;

    .line 254
    new-instance p3, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;

    .line 256
    invoke-direct {p3, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 258
    invoke-virtual {p1, p3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 261
    invoke-virtual {p2, p3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 264
    return-void
    .line 267
.end method

.method public static listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItem;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 18
    if-ne v0, p1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
    .line 25
.end method


# virtual methods
.method public final createAndShowIndicator()V
    .locals 10

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    const v1, 0x7f14026a    # @style/PrivacyChip

    .line 4
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v1

    .line 22
    const v3, 0x7f0d03ce    # @layout/tv_privacy_chip_container 'res/layout/tv_privacy_chip_container.xml'

    .line 23
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 38
    const v3, 0x7f070eb1    # @dimen/privacy_chip_margin '3.0dp'

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v1

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    const/4 v4, -0x2

    .line 48
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 52
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 55
    sget-object v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v1

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 74
    new-instance v5, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 76
    invoke-direct {v5, v0, v4}, Lcom/android/systemui/privacy/television/PrivacyItemsChip;-><init>(Landroid/content/Context;Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;)V

    .line 78
    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_0

    .line 91
    :cond_0
    const-class v0, Landroid/view/WindowManager;

    .line 92
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 97
    check-cast v0, Landroid/view/WindowManager;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 100
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 102
    const/4 v4, -0x2

    .line 104
    const/4 v5, -0x2

    .line 105
    const/16 v6, 0x7d6

    .line 106
    const/16 v7, 0x8

    .line 108
    const/4 v8, -0x3

    .line 110
    move-object v3, v9

    .line 111
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 112
    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 115
    if-eqz v3, :cond_1

    .line 117
    const/4 v3, 0x3

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    const/4 v3, 0x5

    .line 121
    :goto_1
    or-int/lit8 v3, v3, 0x30

    .line 122
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    const-string v3, "MicrophoneCaptureIndicator"

    .line 126
    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 134
    iput-object v2, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 135
    invoke-interface {v0, v1, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 142
    move-result-object v1

    .line 145
    new-instance v2, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;

    .line 146
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;Landroid/view/ViewGroup;)V

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    return-void
    .line 154
.end method

.method public final makeAccessibilityAnnouncement()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    .line 7
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 11
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 15
    invoke-static {v3, v1}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 17
    move-result v1

    .line 20
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 21
    invoke-static {v0, v3}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 23
    move-result v4

    .line 26
    iget-object v5, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 27
    invoke-static {v5, v3}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 29
    move-result v3

    .line 32
    sget-object v5, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 33
    invoke-static {v0, v5}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 35
    move-result v6

    .line 38
    iget-object v7, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 39
    invoke-static {v7, v5}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 41
    move-result v5

    .line 44
    iget-object v7, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 45
    if-nez v2, :cond_1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    if-nez v4, :cond_1

    .line 51
    if-eqz v3, :cond_1

    .line 53
    const v1, 0x7f13072e    # @string/mic_and_camera_recording_announcement 'Camera and Microphone are recording'

    .line 55
    goto :goto_1

    .line 58
    :cond_1
    if-eqz v2, :cond_2

    .line 59
    if-nez v1, :cond_2

    .line 61
    if-eqz v4, :cond_2

    .line 63
    if-nez v3, :cond_2

    .line 65
    const v1, 0x7f13072f    # @string/mic_camera_stopped_recording_announcement 'Camera and Microphone stopped recording'

    .line 67
    goto :goto_1

    .line 70
    :cond_2
    const/4 v8, 0x0

    .line 71
    if-eqz v2, :cond_3

    .line 72
    if-nez v1, :cond_3

    .line 74
    const v1, 0x7f13024f    # @string/camera_stopped_recording_announcement 'Camera stopped recording'

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    if-nez v2, :cond_4

    .line 80
    if-eqz v1, :cond_4

    .line 82
    const v1, 0x7f13024e    # @string/camera_recording_announcement 'Camera is recording'

    .line 84
    goto :goto_0

    .line 87
    :cond_4
    move v1, v8

    .line 88
    :goto_0
    if-eqz v1, :cond_5

    .line 89
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 97
    move v1, v8

    .line 100
    :cond_5
    if-eqz v4, :cond_6

    .line 101
    if-nez v3, :cond_6

    .line 103
    const v1, 0x7f130731    # @string/mic_stopped_recording_announcement 'Microphone stopped recording'

    .line 105
    goto :goto_1

    .line 108
    :cond_6
    if-nez v4, :cond_7

    .line 109
    if-eqz v3, :cond_7

    .line 111
    const v1, 0x7f130730    # @string/mic_recording_announcement 'Microphone is recording'

    .line 113
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 116
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 124
    :cond_8
    if-nez v6, :cond_9

    .line 127
    if-eqz v5, :cond_9

    .line 129
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 131
    const v2, 0x7f130a5c    # @string/screen_recording_announcement 'Screen recording started'

    .line 133
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 140
    goto :goto_2

    .line 143
    :cond_9
    if-eqz v6, :cond_a

    .line 144
    if-nez v5, :cond_a

    .line 146
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 148
    const v2, 0x7f130a60    # @string/screen_stopped_recording_announcement 'Screen recording stopped'

    .line 150
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 157
    :cond_a
    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 165
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-void
    .line 170
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 11
    if-ne p1, v0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 16
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 18
    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->removeIndicatorView()V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->createAndShowIndicator()V

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateStaticPrivacyIndicatorBounds()V

    .line 28
    return-void
    .line 31
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    const-wide/16 v0, 0xc8

    .line 48
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_1
    return-void
    .line 53
.end method

.method public final removeIndicatorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 9
    const-class v1, Landroid/view/WindowManager;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 29
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 31
    return-void
    .line 33
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateChips()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->createAndShowIndicator()V

    .line 14
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 23
    new-instance v2, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;

    .line 25
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;I)V

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 34
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mTransition:Landroid/transition/TransitionSet;

    .line 36
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 41
    new-instance v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;

    .line 43
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;I)V

    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    return-void
    .line 54
.end method

.method public final updateStaticPrivacyIndicatorBounds()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f070eb5    # @dimen/privacy_chips_max_width '110.0dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v2

    .line 14
    const v3, 0x7f070eae    # @dimen/privacy_chip_height '24.0dp'

    .line 15
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v3

    .line 21
    const v4, 0x7f070eb1    # @dimen/privacy_chip_margin '3.0dp'

    .line 22
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    const-class v4, Landroid/view/WindowManager;

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    check-cast v4, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 39
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 43
    move-result-object v4

    .line 46
    new-instance v5, Landroid/graphics/Rect;

    .line 47
    iget-boolean v6, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 49
    if-eqz v6, :cond_0

    .line 51
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 56
    sub-int/2addr v7, v2

    .line 58
    :goto_0
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 59
    if-eqz v6, :cond_1

    .line 61
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 63
    add-int/2addr v4, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 67
    :goto_1
    add-int/2addr v1, v8

    .line 69
    add-int/2addr v1, v3

    .line 70
    invoke-direct {v5, v7, v8, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mBounds:[Landroid/graphics/Rect;

    .line 74
    const/4 v2, 0x0

    .line 76
    aput-object v5, v1, v2

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 81
    move-result v0

    .line 84
    invoke-interface {p0, v0, v1}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_2

    .line 88
    :catch_0
    const-string p0, "TvPrivacyChipsController"

    .line 89
    const-string v0, "could not update privacy indicator bounds"

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_2
    return-void
    .line 96
.end method
