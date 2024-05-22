.class public final Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sInstancePool:Landroid/util/Pools$SimplePool;


# instance fields
.field public final mGroupMap:Ljava/util/HashMap;

.field public mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

.field public mRelativeTranslationOffset:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 2
    const/16 v1, 0x28

    .line 4
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    .line 10
    return-void
    .line 12
.end method

.method public static filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    if-ge p0, v1, :cond_1

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    .line 18
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    add-int/lit8 p0, p0, -0x1

    .line 29
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
    .line 34
.end method

.method public static isGone(Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    if-ne v1, v2, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    return v0

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    return v0

    .line 28
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object p0

    .line 32
    instance-of v1, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 33
    if-eqz v1, :cond_4

    .line 35
    check-cast p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 37
    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 39
    if-eqz p0, :cond_4

    .line 41
    return v0

    .line 43
    :cond_4
    const/4 p0, 0x0

    .line 44
    return p0
    .line 45
.end method


# virtual methods
.method public final appear(FLandroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 13
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 15
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public final disappear(FLandroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 13
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 15
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public final initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 5
    instance-of v0, p2, Lcom/android/internal/widget/MessagingLinearLayout;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p2, Lcom/android/internal/widget/MessagingLinearLayout;

    .line 11
    invoke-virtual {p2}, Lcom/android/internal/widget/MessagingLinearLayout;->getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;

    .line 13
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    move-result-object p1

    .line 30
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    const/high16 p2, 0x41000000    # 8.0f

    .line 33
    mul-float/2addr p1, p2

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    .line 36
    :cond_0
    return-void
    .line 38
.end method

.method public final prepareFadeIn()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    .line 2
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(ZZ)V

    .line 7
    return-void
    .line 10
.end method

.method public final recycle()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 10
    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    .line 6
    return-void
    .line 8
.end method

.method public final resetTransformedView()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 5
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    .line 7
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 8
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 11
    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 13
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 16
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 17
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    .line 19
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    .line 20
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 21
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingGroup;->setClippingDisabled(Z)V

    .line 22
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {p0, v1}, Lcom/android/internal/widget/IMessagingLayout;->setMessagingClippingDisabled(Z)V

    return-void
.end method

.method public final resetTransformedView(Landroid/view/View;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void
.end method

.method public final setVisible(Landroid/view/View;ZZ)V
    .locals 1

    .line 15
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isAnimatingAlpha(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setVisible(ZZ)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 6
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    .line 8
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 9
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 10
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 12
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 13
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 2
    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 4
    move-result-object v0

    .line 7
    if-eqz p6, :cond_0

    .line 8
    sget-object p6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 10
    iput-object p6, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    :cond_0
    const/4 p6, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p5, :cond_1

    .line 16
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 18
    move-result p5

    .line 21
    if-nez p5, :cond_1

    .line 22
    move p5, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p5, p6

    .line 26
    :goto_0
    iput-boolean p5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 27
    const/16 p5, 0x10

    .line 29
    const/4 v2, 0x0

    .line 31
    if-eqz p2, :cond_5

    .line 32
    if-eqz p4, :cond_4

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 36
    invoke-static {p4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 42
    move-result p2

    .line 45
    if-nez p2, :cond_2

    .line 46
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 48
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 52
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 58
    :cond_3
    invoke-virtual {v0, p0, p5, v2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 61
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    .line 64
    move-result-object p1

    .line 67
    aget p1, p1, v1

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    .line 70
    move-result-object p2

    .line 73
    aget p2, p2, v1

    .line 74
    sub-int p6, p1, p2

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 78
    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 82
    goto :goto_3

    .line 85
    :cond_5
    if-eqz p4, :cond_8

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 88
    invoke-static {p4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    .line 90
    move-result-object p0

    .line 93
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 94
    move-result p2

    .line 97
    if-nez p2, :cond_6

    .line 98
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 100
    goto :goto_2

    .line 103
    :cond_6
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 104
    move-result p2

    .line 107
    if-nez p2, :cond_7

    .line 108
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 110
    :cond_7
    invoke-virtual {v0, p0, p5, v2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 113
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    .line 116
    move-result-object p1

    .line 119
    aget p1, p1, v1

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    .line 122
    move-result-object p2

    .line 125
    aget p2, p2, v1

    .line 126
    sub-int p6, p1, p2

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 130
    goto :goto_3

    .line 133
    :cond_8
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 134
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 137
    return p6
    .line 140
.end method

.method public final transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 13
    :goto_0
    return-void
    .line 16
.end method

.method public final transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V
    .locals 30

    .line 1
    move-object/from16 v7, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    .line 4
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    .line 7
    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 13
    move-result-object v8

    .line 16
    move-object/from16 v0, p1

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    .line 19
    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 25
    move-result-object v0

    .line 28
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 31
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    const v2, 0x7fffffff

    .line 40
    :goto_0
    if-ltz v1, :cond_3

    .line 43
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v4

    .line 54
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result v4

    .line 58
    add-int/lit8 v4, v4, -0x1

    .line 59
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    :goto_1
    if-ltz v4, :cond_1

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 68
    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 69
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I

    .line 71
    move-result v6

    .line 74
    if-le v6, v11, :cond_0

    .line 75
    move v2, v4

    .line 77
    move-object v10, v5

    .line 78
    move v11, v6

    .line 79
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    if-eqz v10, :cond_2

    .line 83
    invoke-virtual {v9, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v0

    .line 94
    const/4 v12, 0x1

    .line 95
    sub-int/2addr v0, v12

    .line 96
    const/4 v13, 0x0

    .line 97
    move v14, v0

    .line 98
    move/from16 v16, v13

    .line 99
    const/4 v15, 0x0

    .line 101
    :goto_2
    if-ltz v14, :cond_25

    .line 102
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 107
    move-object v6, v0

    .line 108
    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    .line 109
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v0

    .line 114
    move-object/from16 v17, v0

    .line 115
    check-cast v17, Lcom/android/internal/widget/MessagingGroup;

    .line 117
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 119
    move-result v0

    .line 122
    if-nez v0, :cond_24

    .line 123
    const/high16 v5, 0x3f800000    # 1.0f

    .line 125
    if-eqz v17, :cond_18

    .line 127
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    .line 129
    move-result-object v0

    .line 132
    if-nez v0, :cond_5

    .line 133
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 135
    check-cast v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 137
    iget-object v0, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 139
    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 143
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    move v0, v12

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/4 v0, 0x0

    .line 151
    :goto_3
    if-nez v0, :cond_5

    .line 152
    move/from16 v18, v12

    .line 154
    goto :goto_4

    .line 156
    :cond_5
    const/16 v18, 0x0

    .line 157
    :goto_4
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 159
    move-result-object v19

    .line 162
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 163
    move-result-object v4

    .line 166
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 167
    move-result-object v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 173
    move-result v1

    .line 176
    sub-int/2addr v1, v12

    .line 177
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 178
    move-result v0

    .line 181
    if-lez v0, :cond_6

    .line 182
    move v0, v12

    .line 184
    goto :goto_5

    .line 185
    :cond_6
    const/4 v0, 0x0

    .line 186
    :goto_5
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 187
    move-result-object v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    .line 193
    move-result v2

    .line 196
    sub-int/2addr v2, v12

    .line 197
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 198
    move-result v1

    .line 201
    if-lez v1, :cond_7

    .line 202
    move v1, v12

    .line 204
    goto :goto_6

    .line 205
    :cond_7
    const/4 v1, 0x0

    .line 206
    :goto_6
    if-eq v0, v1, :cond_8

    .line 207
    move v0, v12

    .line 209
    goto :goto_7

    .line 210
    :cond_8
    const/4 v0, 0x0

    .line 211
    :goto_7
    xor-int/lit8 v20, v0, 0x1

    .line 212
    move-object/from16 v0, p0

    .line 214
    move/from16 v1, p2

    .line 216
    move/from16 v2, p3

    .line 218
    move-object/from16 v3, v19

    .line 220
    move v10, v5

    .line 222
    move/from16 v5, v20

    .line 223
    move-object/from16 v20, v6

    .line 225
    move/from16 v6, v18

    .line 227
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    .line 229
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 232
    move-result-object v3

    .line 235
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 236
    move-result-object v4

    .line 239
    const/4 v5, 0x1

    .line 240
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    .line 241
    move-result v6

    .line 244
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    .line 245
    move-result-object v5

    .line 248
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    .line 249
    move-result-object v4

    .line 252
    move/from16 v22, v12

    .line 253
    move/from16 v21, v13

    .line 255
    const/4 v3, 0x0

    .line 257
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 258
    move-result v0

    .line 261
    if-ge v3, v0, :cond_16

    .line 262
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 264
    move-result v0

    .line 267
    sub-int/2addr v0, v12

    .line 268
    sub-int/2addr v0, v3

    .line 269
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 273
    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 274
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    .line 276
    move-result-object v2

    .line 279
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 280
    move-result v0

    .line 283
    if-eqz v0, :cond_9

    .line 284
    move/from16 v27, v3

    .line 286
    move-object/from16 v28, v4

    .line 288
    move-object/from16 v29, v5

    .line 290
    move v10, v6

    .line 292
    move-object/from16 v3, v20

    .line 293
    goto/16 :goto_10

    .line 295
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 297
    move-result v0

    .line 300
    sub-int/2addr v0, v12

    .line 301
    sub-int/2addr v0, v3

    .line 302
    if-ltz v0, :cond_b

    .line 303
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    move-result-object v0

    .line 308
    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 309
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    .line 311
    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 315
    move-result v1

    .line 318
    if-eqz v1, :cond_a

    .line 319
    goto :goto_9

    .line 321
    :cond_a
    move-object v1, v0

    .line 322
    goto :goto_a

    .line 323
    :cond_b
    :goto_9
    const/4 v1, 0x0

    .line 324
    :goto_a
    if-nez v1, :cond_d

    .line 325
    cmpg-float v0, v21, v13

    .line 327
    if-gez v0, :cond_d

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 331
    move-result v0

    .line 334
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 335
    move-result v23

    .line 338
    add-int v0, v23, v0

    .line 339
    int-to-float v0, v0

    .line 341
    add-float v0, v0, v21

    .line 342
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 344
    move-result v11

    .line 347
    int-to-float v11, v11

    .line 348
    div-float/2addr v0, v11

    .line 349
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    .line 350
    move-result v0

    .line 353
    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    .line 354
    move-result v0

    .line 357
    if-eqz p3, :cond_c

    .line 358
    sub-float v0, v10, v0

    .line 360
    :cond_c
    move v11, v0

    .line 362
    goto :goto_b

    .line 363
    :cond_d
    move/from16 v11, p2

    .line 364
    :goto_b
    const/16 v24, 0x0

    .line 366
    move-object/from16 v0, p0

    .line 368
    move-object/from16 v25, v1

    .line 370
    move v1, v11

    .line 372
    move-object/from16 v26, v2

    .line 373
    move/from16 v2, p3

    .line 375
    move/from16 v27, v3

    .line 377
    move-object/from16 v3, v26

    .line 379
    move-object/from16 v28, v4

    .line 381
    move-object/from16 v4, v25

    .line 383
    move-object/from16 v29, v5

    .line 385
    move/from16 v5, v24

    .line 387
    move v10, v6

    .line 389
    move/from16 v6, v18

    .line 390
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    .line 392
    move-result v0

    .line 395
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    .line 396
    move-result-object v1

    .line 399
    move-object/from16 v2, v25

    .line 400
    if-ne v1, v2, :cond_e

    .line 402
    move v1, v12

    .line 404
    goto :goto_c

    .line 405
    :cond_e
    const/4 v1, 0x0

    .line 406
    :goto_c
    cmpl-float v3, v11, v13

    .line 407
    if-nez v3, :cond_10

    .line 409
    if-nez v1, :cond_f

    .line 411
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->isSingleLine()Z

    .line 413
    move-result v3

    .line 416
    if-eqz v3, :cond_10

    .line 417
    :cond_f
    move-object/from16 v3, v20

    .line 419
    invoke-virtual {v3, v12}, Lcom/android/internal/widget/MessagingGroup;->setClippingDisabled(Z)V

    .line 421
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    .line 424
    invoke-interface {v4, v12}, Lcom/android/internal/widget/IMessagingLayout;->setMessagingClippingDisabled(Z)V

    .line 426
    goto :goto_d

    .line 429
    :cond_10
    move-object/from16 v3, v20

    .line 430
    :goto_d
    if-nez v2, :cond_12

    .line 432
    if-eqz v22, :cond_11

    .line 434
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTranslationY()F

    .line 436
    move-result v21

    .line 439
    :cond_11
    move/from16 v0, v21

    .line 440
    move-object/from16 v4, v26

    .line 442
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 444
    invoke-static {v4, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 447
    goto :goto_e

    .line 450
    :cond_12
    move-object/from16 v4, v26

    .line 451
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    .line 453
    move-result-object v5

    .line 456
    if-eq v5, v4, :cond_15

    .line 457
    if-eqz v1, :cond_13

    .line 459
    goto :goto_f

    .line 461
    :cond_13
    if-eqz p3, :cond_14

    .line 462
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 464
    move-result v1

    .line 467
    int-to-float v0, v0

    .line 468
    sub-float/2addr v1, v0

    .line 469
    move/from16 v21, v1

    .line 470
    goto :goto_f

    .line 472
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 473
    move-result v0

    .line 476
    :goto_e
    move/from16 v21, v0

    .line 477
    :cond_15
    :goto_f
    const/16 v22, 0x0

    .line 479
    :goto_10
    add-int/lit8 v0, v27, 0x1

    .line 481
    move-object/from16 v20, v3

    .line 483
    move v6, v10

    .line 485
    move-object/from16 v4, v28

    .line 486
    move-object/from16 v5, v29

    .line 488
    const/high16 v10, 0x3f800000    # 1.0f

    .line 490
    move v3, v0

    .line 492
    goto/16 :goto_8

    .line 493
    :cond_16
    move v10, v6

    .line 495
    move-object/from16 v3, v20

    .line 496
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 498
    if-nez v15, :cond_24

    .line 501
    if-eqz p3, :cond_17

    .line 503
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 505
    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 509
    move-result v0

    .line 512
    int-to-float v1, v10

    .line 513
    sub-float/2addr v0, v1

    .line 514
    goto :goto_11

    .line 515
    :cond_17
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 516
    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 520
    move-result v0

    .line 523
    :goto_11
    move/from16 v16, v0

    .line 524
    move-object v15, v3

    .line 526
    goto/16 :goto_1a

    .line 527
    :cond_18
    move-object v3, v6

    .line 529
    if-eqz v15, :cond_1d

    .line 530
    if-eqz p3, :cond_19

    .line 532
    iget v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    .line 534
    mul-float v0, v0, p2

    .line 536
    goto :goto_12

    .line 538
    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 539
    sub-float v5, v0, p2

    .line 541
    iget v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    .line 543
    mul-float/2addr v0, v5

    .line 545
    :goto_12
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 546
    move-result-object v1

    .line 549
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    .line 550
    move-result v1

    .line 553
    const/16 v2, 0x8

    .line 554
    const/high16 v4, 0x3f000000    # 0.5f

    .line 556
    if-eq v1, v2, :cond_1a

    .line 558
    mul-float/2addr v0, v4

    .line 560
    :cond_1a
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    .line 561
    move-result-object v1

    .line 564
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    .line 565
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 568
    move-result-object v1

    .line 571
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 572
    const v0, 0x3f666666    # 0.9f

    .line 575
    mul-float v0, v0, v16

    .line 578
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    .line 580
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    .line 583
    move-result v0

    .line 586
    int-to-float v0, v0

    .line 587
    add-float v0, v0, v16

    .line 588
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 590
    check-cast v1, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 592
    iget-object v1, v1, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 594
    if-eqz v1, :cond_1b

    .line 596
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 598
    move-result v1

    .line 601
    if-eqz v1, :cond_1b

    .line 602
    move v1, v12

    .line 604
    goto :goto_13

    .line 605
    :cond_1b
    const/4 v1, 0x0

    .line 606
    :goto_13
    if-nez v1, :cond_1c

    .line 607
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    .line 609
    move-result v1

    .line 612
    neg-int v1, v1

    .line 613
    int-to-float v1, v1

    .line 614
    mul-float/2addr v1, v4

    .line 615
    sub-float/2addr v0, v1

    .line 616
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 617
    move-result v1

    .line 620
    goto :goto_14

    .line 621
    :cond_1c
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    .line 622
    move-result v1

    .line 625
    neg-int v1, v1

    .line 626
    int-to-float v1, v1

    .line 627
    const/high16 v2, 0x3f400000    # 0.75f

    .line 628
    mul-float/2addr v1, v2

    .line 630
    sub-float/2addr v0, v1

    .line 631
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 632
    move-result v1

    .line 635
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    .line 636
    move-result v2

    .line 639
    int-to-float v2, v2

    .line 640
    add-float/2addr v1, v2

    .line 641
    :goto_14
    div-float/2addr v0, v1

    .line 642
    const/high16 v1, 0x3f800000    # 1.0f

    .line 643
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 645
    move-result v0

    .line 648
    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    .line 649
    move-result v0

    .line 652
    if-eqz p3, :cond_1e

    .line 653
    sub-float v0, v1, v0

    .line 655
    goto :goto_15

    .line 657
    :cond_1d
    move/from16 v0, p2

    .line 658
    :cond_1e
    :goto_15
    if-eqz p3, :cond_21

    .line 660
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    .line 662
    move-result-object v1

    .line 665
    const/4 v2, 0x0

    .line 666
    :goto_16
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    .line 667
    move-result v4

    .line 670
    if-ge v2, v4, :cond_20

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    .line 673
    move-result-object v4

    .line 676
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 677
    move-result v5

    .line 680
    if-eqz v5, :cond_1f

    .line 681
    goto :goto_17

    .line 683
    :cond_1f
    invoke-virtual {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    .line 684
    invoke-static {v4, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 687
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 690
    goto :goto_16

    .line 692
    :cond_20
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 693
    move-result-object v1

    .line 696
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    .line 697
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 700
    move-result-object v1

    .line 703
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    .line 704
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    .line 707
    move-result-object v1

    .line 710
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    .line 711
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 714
    move-result-object v0

    .line 717
    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 718
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 721
    move-result-object v0

    .line 724
    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 725
    goto :goto_1a

    .line 728
    :cond_21
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    .line 729
    move-result-object v1

    .line 732
    const/4 v2, 0x0

    .line 733
    :goto_18
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    .line 734
    move-result v4

    .line 737
    if-ge v2, v4, :cond_23

    .line 738
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    .line 740
    move-result-object v4

    .line 743
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    .line 744
    move-result v5

    .line 747
    if-eqz v5, :cond_22

    .line 748
    goto :goto_19

    .line 750
    :cond_22
    invoke-virtual {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    .line 751
    invoke-static {v4, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 754
    :goto_19
    add-int/lit8 v2, v2, 0x1

    .line 757
    goto :goto_18

    .line 759
    :cond_23
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 760
    move-result-object v1

    .line 763
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    .line 764
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 767
    move-result-object v1

    .line 770
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    .line 771
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    .line 774
    move-result-object v1

    .line 777
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    .line 778
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    .line 781
    move-result-object v0

    .line 784
    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 785
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    .line 788
    move-result-object v0

    .line 791
    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 792
    :cond_24
    :goto_1a
    add-int/lit8 v14, v14, -0x1

    .line 795
    goto/16 :goto_2

    .line 797
    :cond_25
    return-void
    .line 799
.end method

.method public final transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    .line 9
    return v0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
