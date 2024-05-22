.class public Lcom/android/systemui/statusbar/notification/stack/ViewState;
.super Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

.field public static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

.field public static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

.field public static final TAG_ANIMATOR_ALPHA:I

.field public static final TAG_ANIMATOR_TRANSLATION_X:I

.field public static final TAG_ANIMATOR_TRANSLATION_Y:I

.field public static final TAG_ANIMATOR_TRANSLATION_Z:I

.field public static final TAG_END_ALPHA:I

.field public static final TAG_END_TRANSLATION_X:I

.field public static final TAG_END_TRANSLATION_Y:I

.field public static final TAG_END_TRANSLATION_Z:I

.field public static final TAG_START_ALPHA:I

.field public static final TAG_START_TRANSLATION_X:I

.field public static final TAG_START_TRANSLATION_Y:I

.field public static final TAG_START_TRANSLATION_Z:I


# instance fields
.field public gone:Z

.field public hidden:Z

.field public mAlpha:F

.field public mRotationX:F

.field public mScaleX:F

.field public mScaleY:F

.field public mXTranslation:F

.field public mYTranslation:F

.field public mZTranslation:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    .line 7
    const v0, 0x7f0a09eb    # @id/translation_x_animator_tag

    .line 9
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 12
    const v0, 0x7f0a09ef    # @id/translation_y_animator_tag

    .line 14
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 17
    const v0, 0x7f0a09f3    # @id/translation_z_animator_tag

    .line 19
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 22
    const v0, 0x7f0a00ae    # @id/alpha_animator_tag

    .line 24
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 27
    const v0, 0x7f0a09e9    # @id/translation_x_animator_end_value_tag

    .line 29
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    .line 32
    const v0, 0x7f0a09ed    # @id/translation_y_animator_end_value_tag

    .line 34
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 37
    const v0, 0x7f0a09f1    # @id/translation_z_animator_end_value_tag

    .line 39
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 42
    const v0, 0x7f0a00ac    # @id/alpha_animator_end_value_tag

    .line 44
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    .line 47
    const v0, 0x7f0a09ea    # @id/translation_x_animator_start_value_tag

    .line 49
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    .line 52
    const v0, 0x7f0a09ee    # @id/translation_y_animator_start_value_tag

    .line 54
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 57
    const v0, 0x7f0a09f2    # @id/translation_z_animator_start_value_tag

    .line 59
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    .line 62
    const v0, 0x7f0a00ad    # @id/alpha_animator_start_value_tag

    .line 64
    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 69
    const/4 v1, 0x0

    .line 71
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>(I)V

    .line 72
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 77
    const/4 v1, 0x1

    .line 79
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>(I)V

    .line 80
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 83
    return-void
    .line 85
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 7
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 9
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 12
    return-void
    .line 14
.end method

.method public static abortAnimation(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/animation/Animator;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 4
    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 8
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    move-result-wide p0

    .line 16
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    :cond_0
    return-wide p0
    .line 20
.end method

.method public static getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 12
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 16
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Float;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p0

    .line 32
    return p0
    .line 33
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/ViewState$2;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->getAnimatorTag()I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidFloat(Ljava/lang/String;F)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Cannot set property "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, " to NaN"

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "StackViewState"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    return p0
    .line 35
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;->PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 9
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 11
    instance-of v4, v4, Landroid/util/FloatProperty;

    .line 13
    if-nez v4, :cond_0

    .line 15
    goto/16 :goto_4

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 21
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 27
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    .line 29
    move-result v4

    .line 32
    if-ne v4, v2, :cond_1

    .line 33
    move v4, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v3

    .line 37
    :goto_0
    if-nez v4, :cond_2

    .line 38
    goto :goto_4

    .line 40
    :cond_2
    move-object v4, p1

    .line 41
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 42
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 44
    move-result-object v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    iget v5, v5, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 50
    int-to-float v5, v5

    .line 52
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    move-result-object v5

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v5

    .line 61
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object v6

    .line 65
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 69
    if-nez v5, :cond_6

    .line 70
    const v5, 0x7f0a05c5    # @id/miui_child_index_hint

    .line 72
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 78
    instance-of v5, v4, Ljava/lang/Integer;

    .line 79
    if-eqz v5, :cond_4

    .line 81
    check-cast v4, Ljava/lang/Number;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 85
    move-result v4

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v4, v3

    .line 90
    :goto_2
    iget-wide v5, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 91
    sget-object v7, Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;->NOTIFICATION_SPRING_TABLE:Ljava/util/List;

    .line 93
    if-ltz v4, :cond_5

    .line 95
    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 97
    move-result v8

    .line 100
    if-gt v4, v8, :cond_5

    .line 101
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 111
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 112
    :goto_3
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 114
    iget-wide v7, v4, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;->duration:J

    .line 116
    iput-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 118
    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 120
    iput-wide v5, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 123
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 125
    move-result v0

    .line 128
    if-nez v0, :cond_7

    .line 129
    move v0, v2

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move v0, v3

    .line 133
    :goto_5
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 134
    if-nez v0, :cond_9

    .line 136
    cmpl-float v0, v4, v1

    .line 138
    if-nez v0, :cond_8

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 142
    move-result v0

    .line 145
    cmpl-float v0, v0, v1

    .line 146
    if-eqz v0, :cond_9

    .line 148
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 150
    if-nez v0, :cond_9

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 154
    if-nez v0, :cond_9

    .line 156
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 161
    move-result v0

    .line 164
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 165
    cmpl-float v0, v1, v0

    .line 167
    if-eqz v0, :cond_a

    .line 169
    move v3, v2

    .line 171
    :cond_a
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 172
    if-eqz v0, :cond_b

    .line 174
    move-object v0, p1

    .line 176
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 177
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    .line 179
    xor-int/2addr v0, v2

    .line 181
    and-int/2addr v3, v0

    .line 182
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 183
    move-result v0

    .line 186
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 187
    cmpl-float v0, v0, v1

    .line 189
    if-eqz v0, :cond_c

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 193
    goto :goto_6

    .line 196
    :cond_c
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 197
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 199
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 202
    move-result v0

    .line 205
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 206
    cmpl-float v0, v0, v1

    .line 208
    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 212
    goto :goto_7

    .line 215
    :cond_d
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 216
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 218
    :goto_7
    const v0, -0x8598a57

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 224
    move-result-object v0

    .line 227
    if-eqz v0, :cond_e

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimationUnimportant(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 230
    goto :goto_8

    .line 233
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 234
    move-result v0

    .line 237
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 238
    cmpl-float v0, v0, v1

    .line 240
    if-eqz v0, :cond_f

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 244
    goto :goto_8

    .line 247
    :cond_f
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 248
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 250
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 253
    move-result v0

    .line 256
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 257
    cmpl-float v0, v0, v1

    .line 259
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 261
    if-eqz v0, :cond_10

    .line 263
    invoke-static {p1, v2, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 265
    goto :goto_9

    .line 268
    :cond_10
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->getAnimatorTag()I

    .line 269
    move-result v0

    .line 272
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 273
    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 276
    move-result v0

    .line 279
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 280
    cmpl-float v0, v0, v1

    .line 282
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 284
    if-eqz v0, :cond_11

    .line 286
    invoke-static {p1, v2, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 288
    goto :goto_a

    .line 291
    :cond_11
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->getAnimatorTag()I

    .line 292
    move-result v0

    .line 295
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 296
    :goto_a
    if-eqz v3, :cond_12

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 301
    goto :goto_b

    .line 304
    :cond_12
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 305
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 307
    :goto_b
    return-void
    .line 310
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingAddRemove:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    const/4 v4, 0x0

    .line 13
    if-nez v0, :cond_4

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    .line 18
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v4

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result v0

    .line 33
    cmpl-float v0, v0, v3

    .line 34
    if-nez v0, :cond_2

    .line 36
    move v0, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v0, v1

    .line 40
    :goto_1
    if-nez v0, :cond_4

    .line 41
    if-nez p1, :cond_3

    .line 43
    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 46
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 49
    if-eqz v0, :cond_6

    .line 51
    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 55
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    move-result-object v0

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    move-object v0, v4

    .line 64
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 68
    move-result v0

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 72
    :cond_6
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 79
    if-eqz v0, :cond_7

    .line 80
    move v0, v2

    .line 82
    goto :goto_4

    .line 83
    :cond_7
    move v0, v1

    .line 84
    :goto_4
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    .line 85
    if-eqz v0, :cond_8

    .line 87
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 89
    goto :goto_5

    .line 92
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 93
    move-result v0

    .line 96
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 97
    cmpl-float v0, v0, v6

    .line 99
    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    :cond_9
    :goto_5
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    move v0, v2

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    move v0, v1

    .line 116
    :goto_6
    if-eqz v0, :cond_b

    .line 117
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 119
    goto :goto_7

    .line 122
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 123
    move-result v0

    .line 126
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 127
    cmpl-float v0, v0, v6

    .line 129
    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    :cond_c
    :goto_7
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    if-eqz v0, :cond_d

    .line 142
    move v0, v2

    .line 144
    goto :goto_8

    .line 145
    :cond_d
    move v0, v1

    .line 146
    :goto_8
    if-eqz v0, :cond_e

    .line 147
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 149
    goto :goto_9

    .line 152
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 153
    move-result v0

    .line 156
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 157
    cmpl-float v0, v0, v6

    .line 159
    if-eqz v0, :cond_f

    .line 161
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 163
    :cond_f
    :goto_9
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 166
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/ViewState$2;)Z

    .line 168
    move-result v6

    .line 171
    if-eqz v6, :cond_10

    .line 172
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 174
    invoke-static {p1, v0, v6, v5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 176
    goto :goto_a

    .line 179
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 180
    move-result v0

    .line 183
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 184
    cmpl-float v0, v0, v6

    .line 186
    if-eqz v0, :cond_11

    .line 188
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 190
    :cond_11
    :goto_a
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    .line 193
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/ViewState$2;)Z

    .line 195
    move-result v6

    .line 198
    if-eqz v6, :cond_12

    .line 199
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 201
    invoke-static {p1, v0, v6, v5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 203
    goto :goto_b

    .line 206
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 207
    move-result v0

    .line 210
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 211
    cmpl-float v0, v0, v6

    .line 213
    if-eqz v0, :cond_13

    .line 215
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 217
    :cond_13
    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 220
    move-result v0

    .line 223
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 224
    cmpl-float v0, v0, v6

    .line 226
    if-eqz v0, :cond_14

    .line 228
    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationX(F)V

    .line 230
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 233
    move-result v0

    .line 236
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 237
    const/4 v7, 0x0

    .line 239
    cmpl-float v6, v6, v7

    .line 240
    if-nez v6, :cond_15

    .line 242
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 244
    if-eqz v6, :cond_16

    .line 246
    :cond_15
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 248
    if-eqz v6, :cond_17

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    .line 252
    move-result v6

    .line 255
    if-eqz v6, :cond_16

    .line 256
    if-eqz v0, :cond_17

    .line 258
    :cond_16
    move v6, v2

    .line 260
    goto :goto_c

    .line 261
    :cond_17
    move v6, v1

    .line 262
    :goto_c
    sget v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 263
    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 265
    move-result-object v7

    .line 268
    if-eqz v7, :cond_18

    .line 269
    move v7, v2

    .line 271
    goto :goto_d

    .line 272
    :cond_18
    move v7, v1

    .line 273
    :goto_d
    if-eqz v7, :cond_19

    .line 274
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 276
    goto :goto_13

    .line 279
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 280
    move-result v5

    .line 283
    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 284
    cmpl-float v5, v5, v7

    .line 286
    if-eqz v5, :cond_20

    .line 288
    cmpl-float v3, v7, v3

    .line 290
    if-nez v3, :cond_1a

    .line 292
    move v3, v2

    .line 294
    goto :goto_e

    .line 295
    :cond_1a
    move v3, v1

    .line 296
    :goto_e
    if-nez v6, :cond_1b

    .line 297
    if-nez v3, :cond_1b

    .line 299
    move v3, v2

    .line 301
    goto :goto_f

    .line 302
    :cond_1b
    move v3, v1

    .line 303
    :goto_f
    instance-of v5, p1, Lcom/android/systemui/statusbar/notification/NotificationFadeAware$FadeOptimizedNotification;

    .line 304
    if-eqz v5, :cond_1c

    .line 306
    move-object v2, p1

    .line 308
    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationFadeAware$FadeOptimizedNotification;

    .line 309
    move-object v4, v2

    .line 311
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 312
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsFaded:Z

    .line 314
    if-eq v4, v3, :cond_1f

    .line 316
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setNotificationFaded(Z)V

    .line 318
    goto :goto_12

    .line 321
    :cond_1c
    if-eqz v3, :cond_1d

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    .line 324
    move-result v3

    .line 327
    if-eqz v3, :cond_1d

    .line 328
    goto :goto_10

    .line 330
    :cond_1d
    move v2, v1

    .line 331
    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 332
    move-result v3

    .line 335
    if-eqz v2, :cond_1e

    .line 336
    const/4 v2, 0x2

    .line 338
    goto :goto_11

    .line 339
    :cond_1e
    move v2, v1

    .line 340
    :goto_11
    if-eq v3, v2, :cond_1f

    .line 341
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 343
    :cond_1f
    :goto_12
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 346
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 348
    :cond_20
    :goto_13
    if-eqz v6, :cond_21

    .line 351
    const/4 v1, 0x4

    .line 353
    :cond_21
    if-eq v1, v0, :cond_23

    .line 354
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 356
    if-eqz p0, :cond_22

    .line 358
    move-object p0, p1

    .line 360
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 361
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    .line 363
    if-nez p0, :cond_23

    .line 365
    :cond_22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_23
    return-void
    .line 370
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/animation/Animator;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 12
    :cond_0
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Landroid/animation/Animator;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 25
    :cond_1
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Landroid/animation/Animator;

    .line 34
    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 38
    :cond_2
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Landroid/animation/Animator;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 51
    :cond_3
    return-void
    .line 54
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 4
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 8
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 12
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 14
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 16
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 24
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 28
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 32
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 36
    return-void
    .line 38
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string p2, "ViewState { "

    .line 2
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 16
    move-result-object v3

    .line 19
    array-length v4, v3

    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_1
    if-ge v6, v4, :cond_3

    .line 23
    aget-object v7, v3, v6

    .line 25
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 27
    move-result v8

    .line 30
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 31
    move-result v9

    .line 34
    if-nez v9, :cond_2

    .line 35
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 37
    move-result v9

    .line 40
    if-nez v9, :cond_2

    .line 41
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 43
    move-result v8

    .line 46
    if-eqz v8, :cond_0

    .line 47
    goto :goto_2

    .line 49
    :cond_0
    if-nez v2, :cond_1

    .line 50
    const-string v2, ", "

    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 60
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ": "

    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move v2, v5

    .line 79
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 83
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const-string p0, " }"

    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 93
    return-void
    .line 96
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 2
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 14
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v0

    .line 29
    const/16 v1, 0x8

    .line 30
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v3

    .line 38
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result v0

    .line 44
    const/4 v1, 0x4

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    move v2, v3

    .line 49
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 52
    move-result v0

    .line 55
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 64
    move-result p1

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mRotationX:F

    .line 68
    return-void
    .line 70
.end method

.method public final isAnimating(Landroid/view/View;)Z
    .locals 2

    .line 3
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    .line 4
    :cond_1
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz p0, :cond_3

    return v1

    .line 5
    :cond_3
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    if-eqz p0, :cond_5

    return v1

    .line 6
    :cond_5
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    move p0, v1

    goto :goto_3

    :cond_6
    move p0, v0

    :goto_3
    if-eqz p0, :cond_7

    return v1

    .line 7
    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/ViewState$2;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    .line 8
    :cond_8
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/ViewState$2;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x4

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final setAlpha(F)V
    .locals 1

    .line 1
    const-string v0, "alpha"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public final setScaleX(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "scaleX"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final setScaleY(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "scaleY"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final setXTranslation(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "xTranslation"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final setYTranslation(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "yTranslation"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final setZTranslation(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "zTranslation"

    .line 2
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public final startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    .line 1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    .line 8
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Float;

    .line 16
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 18
    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v4

    .line 25
    cmpl-float v4, v4, p0

    .line 26
    if-nez v4, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    sget v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    .line 31
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 36
    check-cast v5, Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 39
    move-result-object v6

    .line 42
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 43
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x2

    .line 48
    if-nez v6, :cond_2

    .line 49
    if-eqz v5, :cond_1

    .line 51
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 53
    move-result-object p2

    .line 56
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 57
    move-result v3

    .line 60
    sub-float v3, p0, v3

    .line 61
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 63
    move-result v1

    .line 66
    add-float/2addr v1, v3

    .line 67
    aget-object p2, p2, v9

    .line 68
    new-array v3, v10, [F

    .line 70
    aput v1, v3, v9

    .line 72
    aput p0, v3, v8

    .line 74
    invoke-virtual {p2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object p2

    .line 82
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    .line 93
    move-result-wide p0

    .line 96
    invoke-virtual {v5, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 97
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 101
    cmpl-float v1, p0, v7

    .line 104
    if-nez v1, :cond_2

    .line 106
    const/4 v1, 0x4

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 112
    new-array v3, v10, [F

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 116
    move-result v6

    .line 119
    aput v6, v3, v9

    .line 120
    aput p0, v3, v8

    .line 122
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 124
    move-result-object v1

    .line 127
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 128
    invoke-virtual {p2, v3, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;

    .line 130
    move-result-object v3

    .line 133
    if-eqz v3, :cond_3

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 137
    :goto_0
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1, v10, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 143
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;

    .line 146
    invoke-direct {v3, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;-><init>(Landroid/view/View;F)V

    .line 148
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-wide v8, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 154
    invoke-static {v8, v9, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 156
    move-result-wide v8

    .line 159
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    iget-wide v8, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 163
    const-wide/16 v10, 0x0

    .line 165
    cmp-long v3, v8, v10

    .line 167
    if-lez v3, :cond_5

    .line 169
    if-eqz v5, :cond_4

    .line 171
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    .line 173
    move-result v3

    .line 176
    cmpl-float v3, v3, v7

    .line 177
    if-nez v3, :cond_5

    .line 179
    :cond_4
    iget-wide v5, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 181
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 183
    :cond_5
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 186
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 188
    move-result-object p2

    .line 191
    if-eqz p2, :cond_6

    .line 192
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    :cond_6
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 197
    invoke-virtual {p1, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 203
    move-result p2

    .line 206
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    move-result-object p2

    .line 210
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 211
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    move-result-object p0

    .line 217
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    return-void
    .line 221
.end method

.method public final startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    .line 1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    .line 8
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Float;

    .line 16
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 18
    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v5

    .line 25
    cmpl-float v5, v5, v4

    .line 26
    if-nez v5, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 31
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 36
    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 39
    move-result-object v7

    .line 42
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 43
    const/4 v8, 0x2

    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    if-nez v7, :cond_2

    .line 48
    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 56
    move-result p2

    .line 59
    sub-float p2, v4, p2

    .line 60
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 62
    move-result v1

    .line 65
    add-float/2addr v1, p2

    .line 66
    aget-object p0, p0, v10

    .line 67
    new-array p2, v8, [F

    .line 69
    aput v1, p2, v10

    .line 71
    aput v4, p2, v9

    .line 73
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    .line 92
    move-result-wide p0

    .line 95
    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 96
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    return-void

    .line 103
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 104
    new-array v3, v8, [F

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 108
    move-result v7

    .line 111
    aput v7, v3, v10

    .line 112
    aput v4, v3, v9

    .line 114
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 116
    move-result-object v1

    .line 119
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 120
    invoke-virtual {p2, v3, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;

    .line 122
    move-result-object v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 129
    :goto_0
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 134
    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 136
    move-result-wide v7

    .line 139
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 143
    const-wide/16 v10, 0x0

    .line 145
    cmp-long v3, v7, v10

    .line 147
    if-lez v3, :cond_5

    .line 149
    if-eqz v6, :cond_4

    .line 151
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    .line 153
    move-result v3

    .line 156
    const/4 v6, 0x0

    .line 157
    cmpl-float v3, v3, v6

    .line 158
    if-nez v3, :cond_5

    .line 160
    :cond_4
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 162
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 164
    :cond_5
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 167
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 169
    move-result-object p2

    .line 172
    if-eqz p2, :cond_6

    .line 173
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    .line 178
    invoke-direct {v3, p0, p1, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;I)V

    .line 180
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 186
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 192
    move-result p0

    .line 195
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 196
    move-result-object p0

    .line 199
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 200
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 203
    move-result-object p0

    .line 206
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    return-void
    .line 210
.end method

.method public final startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 13

    .line 1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    .line 8
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Float;

    .line 16
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 18
    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v5

    .line 25
    cmpl-float v5, v5, v4

    .line 26
    if-nez v5, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 31
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 36
    check-cast v6, Landroid/animation/ValueAnimator;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 39
    move-result-object v7

    .line 42
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 43
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    if-nez v8, :cond_2

    .line 47
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    .line 49
    invoke-virtual {v7, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    move v7, v10

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    move v7, v9

    .line 60
    :goto_1
    const/4 v8, 0x2

    .line 61
    if-nez v7, :cond_4

    .line 62
    if-eqz v6, :cond_3

    .line 64
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 70
    move-result p2

    .line 73
    sub-float p2, v4, p2

    .line 74
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 76
    move-result v1

    .line 79
    add-float/2addr v1, p2

    .line 80
    aget-object p0, p0, v10

    .line 81
    new-array p2, v8, [F

    .line 83
    aput v1, p2, v10

    .line 85
    aput v4, p2, v9

    .line 87
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 89
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 96
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    move-result-object p0

    .line 102
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 106
    move-result-wide p0

    .line 109
    invoke-virtual {v6, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 110
    return-void

    .line 113
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 114
    return-void

    .line 117
    :cond_4
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 118
    new-array v3, v8, [F

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 122
    move-result v7

    .line 125
    aput v7, v3, v10

    .line 126
    aput v4, v3, v9

    .line 128
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 130
    move-result-object v1

    .line 133
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 134
    invoke-virtual {p2, v3, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;

    .line 136
    move-result-object v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    goto :goto_2

    .line 142
    :cond_5
    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 143
    :goto_2
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    iget-wide v9, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 148
    invoke-static {v9, v10, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 150
    move-result-wide v9

    .line 153
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    iget-wide v9, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 157
    const-wide/16 v11, 0x0

    .line 159
    cmp-long v3, v9, v11

    .line 161
    if-lez v3, :cond_7

    .line 163
    if-eqz v6, :cond_6

    .line 165
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 167
    move-result v3

    .line 170
    const/4 v6, 0x0

    .line 171
    cmpl-float v3, v3, v6

    .line 172
    if-nez v3, :cond_7

    .line 174
    :cond_6
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 176
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 178
    :cond_7
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 181
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 183
    move-result-object p2

    .line 186
    if-eqz p2, :cond_8

    .line 187
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    .line 192
    invoke-direct {v3, p0, p1, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;I)V

    .line 194
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 200
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 206
    move-result p0

    .line 209
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object p0

    .line 213
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 214
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    move-result-object p0

    .line 220
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 221
    return-void
    .line 224
.end method

.method public startYTranslationAnimationUnimportant(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 13

    .line 1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    .line 8
    sget v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Float;

    .line 16
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 18
    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v5

    .line 25
    cmpl-float v5, v5, v4

    .line 26
    if-nez v5, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 31
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 36
    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 39
    move-result-object v7

    .line 42
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 43
    const/4 v8, 0x1

    .line 45
    const/4 v9, 0x2

    .line 46
    const/4 v10, 0x0

    .line 47
    if-nez v7, :cond_2

    .line 48
    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 56
    move-result p2

    .line 59
    sub-float p2, v4, p2

    .line 60
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 62
    move-result v1

    .line 65
    add-float/2addr v1, p2

    .line 66
    aget-object p0, p0, v10

    .line 67
    new-array p2, v9, [F

    .line 69
    aput v1, p2, v10

    .line 71
    aput v4, p2, v8

    .line 73
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    .line 92
    move-result-wide p0

    .line 95
    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 96
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 100
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 103
    new-array v3, v9, [F

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 107
    move-result v7

    .line 110
    aput v7, v3, v10

    .line 111
    aput v4, v3, v8

    .line 113
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 115
    move-result-object v3

    .line 118
    sget-object v7, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 119
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 124
    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 126
    move-result-wide v7

    .line 129
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 133
    const-wide/16 v11, 0x0

    .line 135
    cmp-long v7, v7, v11

    .line 137
    if-lez v7, :cond_4

    .line 139
    if-eqz v6, :cond_3

    .line 141
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    .line 143
    move-result v6

    .line 146
    const/4 v7, 0x0

    .line 147
    cmpl-float v6, v6, v7

    .line 148
    if-nez v6, :cond_4

    .line 150
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 152
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 154
    :cond_4
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 157
    move-result-object p2

    .line 160
    if-eqz p2, :cond_5

    .line 161
    invoke-virtual {v3, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    :cond_5
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    .line 166
    invoke-direct {v1, p0, p1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;I)V

    .line 168
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    invoke-static {v3, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 174
    invoke-virtual {p1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    .line 180
    move-result p0

    .line 183
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object p0

    .line 187
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    move-result-object p0

    .line 194
    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    return-void
    .line 198
.end method
