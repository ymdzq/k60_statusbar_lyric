.class public final Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mDisplayCutoutTouchableRegionSize:I

.field public mForceCollapsedUntilLayout:Z

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public mIsStatusBarExpanded:Z

.field public mNotificationPanelView:Landroid/view/View;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowView:Landroid/view/View;

.field public final mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

.field public mShouldAdjustInsets:Z

.field public mStatusBarHeight:I

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 10
    new-instance v0, Landroid/graphics/Region;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 26
    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 29
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 34
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 38
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 46
    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    .line 49
    check-cast p3, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 56
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    .line 58
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 60
    check-cast p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 63
    iput-object p1, p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    .line 65
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 67
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda1;

    .line 69
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 71
    invoke-virtual {p5, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addFullExpansionListener(Lcom/android/systemui/shade/ShadeFullExpansionListener;)V

    .line 74
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    .line 77
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    .line 82
    return-void
    .line 84
.end method


# virtual methods
.method public final calculateTouchableRegion()Landroid/graphics/Region;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v1

    .line 7
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_5

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto :goto_3

    .line 15
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    move v2, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v2, v3

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 32
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 34
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 36
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    move-object v1, v2

    .line 42
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 43
    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [I

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 48
    aget v5, v2, v3

    .line 51
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 53
    move-result v6

    .line 56
    add-int/2addr v6, v5

    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 58
    move-result v1

    .line 61
    aget v2, v2, v4

    .line 62
    iget v7, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    .line 64
    if-gt v2, v7, :cond_3

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    move v4, v3

    .line 69
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    .line 70
    if-eqz v4, :cond_4

    .line 72
    move v4, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v4, v2

    .line 76
    :goto_2
    add-int/2addr v2, v1

    .line 77
    invoke-virtual {v0, v5, v4, v6, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 78
    goto :goto_4

    .line 81
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 82
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    .line 83
    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 87
    goto :goto_5

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 93
    move-result v0

    .line 96
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    .line 97
    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 104
    move-result-object v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    const-string p0, "TouchableRegionManager"

    .line 110
    const-string v0, "StatusBarWindowView is not attached."

    .line 112
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_5

    .line 117
    :cond_7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 118
    move-result-object v0

    .line 121
    if-nez v0, :cond_8

    .line 122
    goto :goto_5

    .line 124
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    .line 125
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 127
    sget-boolean v4, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 130
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 132
    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    .line 139
    invoke-virtual {v2, v3, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 144
    :goto_5
    return-object v1
    .line 147
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "StatusBarTouchableRegionManager state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mTouchableRegion="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final initResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x1050144    # @android:dimen/expanded_group_conversation_message_padding

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    .line 15
    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    .line 21
    return-void
    .line 23
.end method

.method public final updateTouchableRegion()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 29
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 31
    if-nez v4, :cond_2

    .line 33
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 35
    if-nez v3, :cond_2

    .line 37
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 39
    if-nez v3, :cond_2

    .line 41
    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 45
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 47
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 49
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 51
    if-eqz v0, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    move v1, v2

    .line 56
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    .line 57
    if-ne v1, v0, :cond_3

    .line 59
    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    .line 62
    if-eqz v1, :cond_4

    .line 64
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 68
    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 77
    goto :goto_2

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 87
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    .line 90
    return-void
    .line 92
.end method
