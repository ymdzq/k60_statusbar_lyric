.class public Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.implements Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBoundingBoxRect:Landroid/graphics/Rect;

.field public mConfigurationChangedListener:Ljava/util/function/Consumer;

.field public final mDrawingOrderedChildren:Ljava/util/ArrayList;

.field public final mIndexComparator:Ljava/util/Comparator;

.field public mInsetsChangedListener:Ljava/util/function/Consumer;

.field public mKeyguardStatusBar:Landroid/view/View;

.field public mLastQSPaddingBottom:I

.field public final mLayoutDrawingOrder:Ljava/util/ArrayList;

.field public mQSContainer:Landroid/view/View;

.field public mQSFragmentAttachedListener:Ljava/util/function/Consumer;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public mQsFrame:Landroid/view/View;

.field public mStackScroller:Landroid/view/View;

.field public final mUpperRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;)V

    .line 21
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mIndexComparator:Ljava/util/Comparator;

    .line 28
    new-instance p1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    .line 30
    const/4 p2, 0x0

    .line 32
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    .line 36
    new-instance p1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;

    .line 38
    const/4 p2, 0x1

    .line 40
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda1;-><init>(I)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    .line 46
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mUpperRect:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    .line 53
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/view/View;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/view/View;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 49
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/view/View;

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mIndexComparator:Ljava/util/Comparator;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 82
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 85
    return-void
    .line 88
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Landroid/view/View;

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    return-object p1
    .line 7
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0761    # @id/qs_frame

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/view/View;

    .line 12
    const v0, 0x7f0a06b6    # @id/notification_stack_scroller

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 21
    const v0, 0x7f0a0481    # @id/keyguard_header

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 30
    return-void
    .line 32
.end method

.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 13
    move-result-object p1

    .line 16
    const v0, 0x7f0a076e    # @id/quick_settings_container

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 24
    iget p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLastQSPaddingBottom:I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->setQSContainerPaddingBottom(I)V

    .line 28
    return-void
    .line 31
.end method

.method public setConfigurationChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    .line 2
    return-void
    .line 4
.end method

.method public setInsetsChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    .line 2
    return-void
    .line 4
.end method

.method public setNotificationsMarginBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
    .line 17
.end method

.method public setQSContainerPaddingBottom(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mLastQSPaddingBottom:I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 14
    move-result v2

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public setQSFragmentAttachedListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
