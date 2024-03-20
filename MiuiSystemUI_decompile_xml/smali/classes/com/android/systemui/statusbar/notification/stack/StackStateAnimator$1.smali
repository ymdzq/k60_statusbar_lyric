.class public final Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 4
    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Landroid/animation/AnimatorListenerAdapter;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;)V

    .line 21
    move-object p0, p1

    .line 24
    :goto_0
    return-object p0
    .line 25
.end method

.method public final getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpAppearView:Ljava/util/ArrayList;

    .line 4
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpDisappearView:Ljava/util/ArrayList;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_a

    .line 18
    :cond_0
    instance-of v1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 20
    if-eqz v1, :cond_a

    .line 22
    move-object v1, p2

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 25
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 27
    move-result-object v3

    .line 30
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 31
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 33
    if-eqz v3, :cond_a

    .line 35
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->needAnim(Landroid/content/Context;)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_a

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    const v3, 0x3f4ccccd    # 0.8f

    .line 51
    const v4, 0x3f733333    # 0.95f

    .line 54
    if-eqz v1, :cond_5

    .line 57
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 59
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 67
    const p1, 0x3f59999a    # 0.85f

    .line 69
    const p2, 0x3f2ac083    # 0.667f

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 75
    goto/16 :goto_4

    .line 78
    :cond_1
    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 80
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 85
    if-nez p0, :cond_4

    .line 86
    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 88
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 97
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 105
    invoke-direct {p0, v4, v3}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 107
    goto/16 :goto_4

    .line 110
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->FOCUS_STATUS_BAR_PROMPT_INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 112
    goto/16 :goto_4

    .line 114
    :cond_4
    :goto_0
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 116
    const p1, 0x3f553f7d    # 0.833f

    .line 118
    invoke-direct {p0, v4, p1}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 121
    goto/16 :goto_4

    .line 124
    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 129
    if-eqz v1, :cond_a

    .line 130
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 132
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    move-result p0

    .line 137
    if-eqz p0, :cond_6

    .line 138
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 140
    const p1, 0x3f5b645a    # 0.857f

    .line 142
    invoke-direct {p0, v4, p1}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 145
    goto/16 :goto_4

    .line 148
    :cond_6
    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 150
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    move-result p0

    .line 155
    if-nez p0, :cond_9

    .line 156
    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 158
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    move-result p0

    .line 163
    if-eqz p0, :cond_7

    .line 164
    goto :goto_1

    .line 166
    :cond_7
    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 167
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    move-result p0

    .line 172
    if-eqz p0, :cond_8

    .line 173
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 175
    invoke-direct {p0, v4, v3}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 177
    goto/16 :goto_4

    .line 180
    :cond_8
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->FOCUS_STATUS_BAR_PROMPT_INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 182
    goto/16 :goto_4

    .line 184
    :cond_9
    :goto_1
    new-instance p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 186
    invoke-direct {p0, v4, v3}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 188
    goto/16 :goto_4

    .line 191
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;->PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 193
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 195
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    move-result v1

    .line 200
    const/4 v3, 0x0

    .line 201
    if-eqz v1, :cond_e

    .line 202
    if-eqz p2, :cond_b

    .line 204
    const p0, 0x7f0a05c5    # @id/miui_child_index_hint

    .line 206
    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 209
    move-result-object v3

    .line 212
    :cond_b
    instance-of p0, v3, Ljava/lang/Integer;

    .line 213
    if-eqz p0, :cond_c

    .line 215
    check-cast v3, Ljava/lang/Number;

    .line 217
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 219
    move-result p0

    .line 222
    goto :goto_2

    .line 223
    :cond_c
    const/4 p0, 0x0

    .line 224
    :goto_2
    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;->NOTIFICATION_SPRING_TABLE:Ljava/util/List;

    .line 225
    if-ltz p0, :cond_d

    .line 227
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 229
    move-result p2

    .line 232
    if-gt p0, p2, :cond_d

    .line 233
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object p0

    .line 238
    goto :goto_3

    .line 239
    :cond_d
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 240
    move-result-object p0

    .line 243
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 244
    :goto_3
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    new-instance p1, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 251
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;->damping:F

    .line 253
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/DummyFolmeData;->response:F

    .line 255
    invoke-direct {p1, p2, p0}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 257
    move-object p0, p1

    .line 260
    goto :goto_4

    .line 261
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHasPanelAppearDisappearEvent:Z

    .line 262
    if-eqz v1, :cond_10

    .line 264
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 266
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    move-result v1

    .line 271
    if-nez v1, :cond_f

    .line 272
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 274
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    move-result v1

    .line 279
    if-nez v1, :cond_f

    .line 280
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 282
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    move-result v1

    .line 287
    if-eqz v1, :cond_10

    .line 288
    :cond_f
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 290
    goto :goto_4

    .line 292
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mHeadsUpPositionView:Ljava/util/ArrayList;

    .line 293
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 295
    move-result v1

    .line 298
    if-eqz v1, :cond_11

    .line 299
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpPositionEvent;->INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 301
    goto :goto_4

    .line 303
    :cond_11
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 304
    move-result v0

    .line 307
    if-eqz v0, :cond_12

    .line 308
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 310
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    move-result v0

    .line 315
    if-eqz v0, :cond_12

    .line 316
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->HEADS_UP_APPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 318
    goto :goto_4

    .line 320
    :cond_12
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 321
    move-result v0

    .line 324
    if-eqz v0, :cond_13

    .line 325
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 327
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    move-result v0

    .line 332
    if-eqz v0, :cond_13

    .line 333
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->HEADS_UP_DISAPPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 335
    goto :goto_4

    .line 337
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mChangePositionViews:Ljava/util/ArrayList;

    .line 338
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 340
    move-result p0

    .line 343
    if-eqz p0, :cond_14

    .line 344
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 346
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    move-result p0

    .line 351
    if-eqz p0, :cond_14

    .line 352
    sget-object p0, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 354
    goto :goto_4

    .line 356
    :cond_14
    move-object p0, v3

    .line 357
    :goto_4
    return-object p0
    .line 358
.end method

.method public final wasAdded(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
