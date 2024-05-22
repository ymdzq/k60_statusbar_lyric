.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/Roundable;


# static fields
.field public static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field public mAltExpandTarget:Landroid/view/View;

.field public mAppNameText:Landroid/widget/TextView;

.field public mAudiblyAlertedIcon:Landroid/view/View;

.field public mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field public mFeedbackIcon:Landroid/view/View;

.field public mHeaderText:Landroid/widget/TextView;

.field public mIcon:Lcom/android/internal/widget/CachingIconView;

.field public mIconContainer:Landroid/view/View;

.field public mNotificationHeader:Landroid/view/NotificationHeaderView;

.field public mNotificationTopLine:Landroid/view/NotificationTopLineView;

.field public final mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public mRoundnessChangedListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$RoundnessChangedListener;

.field public final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field public mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3f333333    # 0.7f

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    const v3, 0x3ecccccd    # 0.4f

    .line 9
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    new-instance p2, Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const v1, 0x7f070d8e    # @dimen/notification_corner_radius '28.0dp'

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 16
    move-result p1

    .line 19
    invoke-direct {p2, v0, p0, p1}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    .line 20
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 25
    invoke-direct {p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 30
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;

    .line 32
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;)V

    .line 34
    iget-object p1, p1, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    .line 37
    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 47
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getFeedbackOnClickListener()Landroid/view/View$OnClickListener;

    .line 50
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    .line 54
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/NotificationTopLineView;->setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 61
    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_1
    return-void
    .line 68
.end method


# virtual methods
.method public final varargs addTransformedViews([Landroid/view/View;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v2, p1, v1

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 10
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
.end method

.method public final varargs addViewsTransformingToSimilar([Landroid/view/View;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v2, p1, v1

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 10
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
.end method

.method public final applyRoundnessAndInvalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mRoundnessChangedListener:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$RoundnessChangedListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    .line 13
    return-void
    .line 16
.end method

.method public final getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getExpandButton()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOriginalIconColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getOriginalIconColor()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 2
    return-object p0
    .line 4
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v1, Landroid/util/ArraySet;

    .line 22
    iget-object v2, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 26
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 36
    iget-object v2, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 41
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 47
    const v7, 0x7f0a0222    # @id/contains_transformed_view

    .line 49
    if-ge v5, v3, :cond_2

    .line 52
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v8

    .line 57
    check-cast v8, Landroid/view/View;

    .line 58
    :goto_1
    if-eqz v8, :cond_1

    .line 60
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    move-result-object v9

    .line 65
    if-eq v8, v9, :cond_1

    .line 66
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {v8, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object v8

    .line 76
    check-cast v8, Landroid/view/View;

    .line 77
    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Ljava/util/Stack;

    .line 83
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 85
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    .line 91
    move-result v5

    .line 94
    if-nez v5, :cond_5

    .line 95
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 97
    move-result-object v5

    .line 100
    check-cast v5, Landroid/view/View;

    .line 101
    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 103
    move-result-object v8

    .line 106
    check-cast v8, Ljava/lang/Boolean;

    .line 107
    if-nez v8, :cond_4

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 111
    move-result v8

    .line 114
    const/4 v9, -0x1

    .line 115
    if-eq v8, v9, :cond_4

    .line 116
    invoke-virtual {v0, v8, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 118
    goto :goto_2

    .line 121
    :cond_4
    const/4 v8, 0x0

    .line 122
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    instance-of v8, v5, Landroid/view/ViewGroup;

    .line 126
    if-eqz v8, :cond_3

    .line 128
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 130
    move-result v8

    .line 133
    if-nez v8, :cond_3

    .line 134
    check-cast v5, Landroid/view/ViewGroup;

    .line 136
    move v8, v4

    .line 138
    :goto_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    move-result v9

    .line 142
    if-ge v8, v9, :cond_3

    .line 143
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 145
    move-result-object v9

    .line 148
    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 152
    goto :goto_3

    .line 154
    :cond_5
    new-instance v3, Ljava/util/Stack;

    .line 155
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 157
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    .line 163
    move-result v5

    .line 166
    const/4 v6, 0x1

    .line 167
    if-nez v5, :cond_8

    .line 168
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 170
    move-result-object v5

    .line 173
    check-cast v5, Landroid/view/View;

    .line 174
    instance-of v7, v5, Landroid/widget/ImageView;

    .line 176
    if-eqz v7, :cond_7

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 180
    move-result v7

    .line 183
    const v8, 0x1020287    # @android:id/conversation_text

    .line 184
    if-eq v7, v8, :cond_7

    .line 187
    check-cast v5, Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 191
    goto :goto_4

    .line 194
    :cond_7
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 195
    if-eqz v6, :cond_6

    .line 197
    check-cast v5, Landroid/view/ViewGroup;

    .line 199
    move v6, v4

    .line 201
    :goto_5
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 202
    move-result v7

    .line 205
    if-ge v6, v7, :cond_6

    .line 206
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 208
    move-result-object v7

    .line 211
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 215
    goto :goto_5

    .line 217
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 218
    move-result-object p1

    .line 221
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 222
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 224
    move-result-object p1

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 228
    if-nez p0, :cond_9

    .line 230
    return-void

    .line 232
    :cond_9
    sget-object v3, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 233
    const v3, 0x7f0a042c    # @id/image_icon_tag

    .line 235
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 238
    move-result-object p1

    .line 241
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    .line 242
    new-instance p0, Landroid/util/ArraySet;

    .line 245
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 247
    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 251
    :goto_6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 254
    move-result p1

    .line 257
    if-ge v4, p1, :cond_b

    .line 258
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 260
    move-result-object p1

    .line 263
    check-cast p1, Landroid/view/View;

    .line 264
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 266
    move-result v2

    .line 269
    if-nez v2, :cond_a

    .line 270
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 272
    move-result-object p1

    .line 275
    invoke-virtual {p1, v6, v6}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 276
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 279
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 282
    goto :goto_6

    .line 284
    :cond_b
    return-void
    .line 285
.end method

.method public final resolveHeaderViews()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 9
    const v1, 0x1020006    # @android:id/icon

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    .line 18
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 20
    const v1, 0x1020326    # @android:id/hide_from_picker

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    .line 31
    const v1, 0x10201f6    # @android:id/app_ops

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    .line 42
    const v1, 0x10202c5    # @android:id/expanded_menu

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/internal/widget/NotificationExpandButton;

    .line 51
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 53
    const v1, 0x10201e8    # @android:id/alternative

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAltExpandTarget:Landroid/view/View;

    .line 62
    const v1, 0x1020288    # @android:id/costsMoney

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIconContainer:Landroid/view/View;

    .line 71
    const v1, 0x1020461    # @android:id/radio

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    .line 82
    const v1, 0x1020400    # @android:id/notification_top_line

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v1

    .line 90
    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 91
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 93
    const v1, 0x1020410    # @android:id/open_cross_profile

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v1

    .line 101
    check-cast v1, Landroid/view/NotificationTopLineView;

    .line 102
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    .line 104
    const v1, 0x10201e0    # @android:id/alias

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    .line 113
    const v1, 0x10202d4    # @android:id/fill

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    .line 124
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v0

    .line 131
    const/4 v1, -0x2

    .line 132
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    .line 135
    invoke-virtual {v1, v0}, Landroid/view/NotificationTopLineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 142
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 144
    move-result-object v2

    .line 147
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 148
    const/4 v3, 0x0

    .line 150
    const-string v4, "NotificationInjector"

    .line 151
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    .line 153
    if-eqz v0, :cond_3

    .line 155
    if-nez v2, :cond_2

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 160
    move-result v6

    .line 163
    if-eqz v6, :cond_4

    .line 164
    invoke-static {v5, v2, v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V

    .line 166
    goto :goto_1

    .line 169
    :cond_3
    :goto_0
    const-string v0, " icon or sbn is null"

    .line 170
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    .line 175
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 177
    move-result-object v2

    .line 180
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 181
    if-eqz v0, :cond_6

    .line 183
    if-nez v2, :cond_5

    .line 185
    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 188
    move-result-object v6

    .line 191
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getAppName()Ljava/lang/String;

    .line 192
    move-result-object v7

    .line 195
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 196
    move-result v6

    .line 199
    if-nez v6, :cond_7

    .line 200
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getAppName()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    goto :goto_3

    .line 209
    :cond_6
    :goto_2
    const-string v0, " appNameText or sbn is null"

    .line 210
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getOriginalIconColor()I

    .line 215
    move-result v0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    .line 219
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 221
    move-result-object v1

    .line 224
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 225
    if-eqz p0, :cond_9

    .line 227
    if-nez v1, :cond_8

    .line 229
    goto :goto_4

    .line 231
    :cond_8
    const-class v2, Lcom/miui/systemui/SettingsManager;

    .line 232
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    move-result-object v2

    .line 237
    check-cast v2, Lcom/miui/systemui/SettingsManager;

    .line 238
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 240
    if-eqz v2, :cond_a

    .line 242
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 244
    move-result-object v1

    .line 247
    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    .line 248
    move-result v1

    .line 251
    if-eqz v1, :cond_a

    .line 252
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    const v1, 0x7f0816ab    # @drawable/notification_header_x_space_icon 'res/drawable/notification_header_x_space_icon.png'

    .line 257
    invoke-virtual {v5, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 260
    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 264
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    goto :goto_5

    .line 270
    :cond_9
    :goto_4
    const-string p0, " workProfile or sbn is null"

    .line 271
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_a
    :goto_5
    return-void
    .line 276
.end method

.method public final setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 17
    instance-of v1, v0, Landroid/widget/ImageButton;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    check-cast v0, Landroid/widget/ImageButton;

    .line 23
    iget v1, p1, Lcom/android/systemui/statusbar/notification/FeedbackIcon;->iconRes:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p0

    .line 37
    iget p1, p1, Lcom/android/systemui/statusbar/notification/FeedbackIcon;->contentDescRes:I

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final setIsChildInGroup(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setRecentlyAudiblyAlerted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    return-void
    .line 15
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public final transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public final transformTo(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public final transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/16 v1, 0x8

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    move-object v2, p2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move-object v2, v1

    .line 23
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAltExpandTarget:Landroid/view/View;

    .line 27
    if-eqz v0, :cond_4

    .line 29
    if-eqz p1, :cond_3

    .line 31
    move-object v2, p2

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    move-object v2, v1

    .line 35
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIconContainer:Landroid/view/View;

    .line 39
    if-eqz v0, :cond_6

    .line 41
    if-eqz p1, :cond_5

    .line 43
    move-object v2, p2

    .line 45
    goto :goto_3

    .line 46
    :cond_5
    move-object v2, v1

    .line 47
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 51
    if-eqz v0, :cond_8

    .line 53
    if-eqz p1, :cond_7

    .line 55
    goto :goto_4

    .line 57
    :cond_7
    move-object p2, v1

    .line 58
    :goto_4
    invoke-virtual {v0, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_8
    if-eqz p3, :cond_9

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    .line 70
    :cond_9
    return-void
    .line 73
.end method

.method public updateTransformedTypes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mKeysTransformingToSimilar:Landroid/util/ArraySet;

    .line 9
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 11
    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 17
    const/4 v1, 0x6

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    .line 30
    filled-new-array {v0, v1, v2}, [Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    .line 36
    return-void
    .line 39
.end method
