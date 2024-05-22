.class public Lcom/android/systemui/navigationbar/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAlternativeOrder:Z

.field mButtonDispatchers:Landroid/util/SparseArray;

.field public mCurrentLayout:Ljava/lang/String;

.field public mHorizontal:Landroid/widget/FrameLayout;

.field public mIsVertical:Z

.field public mLandscapeInflater:Landroid/view/LayoutInflater;

.field public mLastLandscape:Landroid/view/View;

.field public mLastPortrait:Landroid/view/View;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mListener:Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;

.field public mNavBarMode:I

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public mVertical:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mNavBarMode:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->createInflaters()V

    .line 8
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 11
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 19
    new-instance p1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;

    .line 21
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarInflaterView;)V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mListener:Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;

    .line 26
    const-class p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 28
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 33
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 34
    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 36
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mNavBarMode:I

    .line 40
    return-void
    .line 42
.end method

.method public static addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 16
    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mId:I

    .line 17
    if-ne v1, v2, :cond_0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 25
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 31
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    invoke-static {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    return-void
    .line 48
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "["

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    return-object p0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "("

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    add-int/2addr v0, v2

    .line 16
    const-string v1, ":"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method


# virtual methods
.method public final addToDispatchers(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 10
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 24
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    check-cast p1, Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v0, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public final clearDispatcherViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method

.method public final clearViews()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearDispatcherViews()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 5
    const v1, 0x7f0a0675    # @id/nav_buttons

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v4

    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Landroid/view/ViewGroup;

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v0

    .line 47
    if-ge v2, v0, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    return-void
    .line 62
.end method

.method public createInflaters()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 8
    new-instance v0, Landroid/content/res/Configuration;

    .line 10
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 12
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 25
    const/4 v1, 0x2

    .line 28
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 29
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
    .line 43
.end method

.method public getDefaultLayout()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mNavBarMode:I

    .line 2
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const v0, 0x7f1302cf    # @string/config_navBarLayoutHandle 'back[70AC];home_handle;ime_switcher[70AC]'

    .line 10
    goto/16 :goto_3

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    const v0, 0x7f1302d0    # @string/config_navBarLayoutQuickstep 'back[1.7WC];home;contextual[1.7WC]'

    .line 23
    goto :goto_3

    .line 26
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->sKeyIdSet:Ljava/util/HashSet;

    .line 27
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lmiuix/os/DeviceHelper;->detectType()I

    .line 31
    move-result v1

    .line 34
    const/4 v2, 0x3

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v1, v4

    .line 42
    :goto_0
    if-nez v1, :cond_3

    .line 43
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$Companion;->isReversed(Landroid/content/Context;)Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_a

    .line 49
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object v1

    .line 55
    const-string v2, "nav_button_pos"

    .line 56
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 58
    move-result v1

    .line 61
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$Companion;->isReversed(Landroid/content/Context;)Z

    .line 62
    move-result v0

    .line 65
    const/4 v2, 0x2

    .line 66
    if-eqz v0, :cond_7

    .line 67
    if-eqz v1, :cond_6

    .line 69
    if-eq v1, v3, :cond_5

    .line 71
    if-eq v1, v2, :cond_4

    .line 73
    goto :goto_2

    .line 75
    :cond_4
    const v0, 0x7f1302d4    # @string/config_navBarLayout_reverse_right 'left[.5W],back[1WC];home;recent[1WC],right[.5W]'

    .line 76
    goto :goto_3

    .line 79
    :cond_5
    const v0, 0x7f1302d3    # @string/config_navBarLayout_reverse_left 'left[.5W],back[1WC];home;recent[1WC],right[.5W]'

    .line 80
    goto :goto_3

    .line 83
    :cond_6
    :goto_1
    const v0, 0x7f1302d2    # @string/config_navBarLayout_reverse 'left[.5W],back[1WC];home;recent[1WC],right[.5W]'

    .line 84
    goto :goto_3

    .line 87
    :cond_7
    if-eqz v1, :cond_a

    .line 88
    if-eq v1, v3, :cond_9

    .line 90
    if-eq v1, v2, :cond_8

    .line 92
    goto :goto_2

    .line 94
    :cond_8
    const v0, 0x7f1302d5    # @string/config_navBarLayout_right 'left[.5W],recent[1WC];home;back[1WC],right[.5W]'

    .line 95
    goto :goto_3

    .line 98
    :cond_9
    const v0, 0x7f1302d1    # @string/config_navBarLayout_left 'left[.5W],recent[1WC];home;back[1WC],right[.5W]'

    .line 99
    goto :goto_3

    .line 102
    :cond_a
    :goto_2
    const v0, 0x7f1302ce    # @string/config_navBarLayout 'left[.5W],recent[1WC];home;back[1WC],right[.5W]'

    .line 103
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    return-object p0
    .line 114
.end method

.method public final inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1f

    .line 5
    aget-object v2, p1, v1

    .line 7
    if-eqz p3, :cond_0

    .line 9
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 11
    goto :goto_1

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 14
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 19
    const-string v5, "left"

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 25
    const-string v6, "menu_ime"

    .line 26
    const-string/jumbo v7, "space"

    .line 28
    if-eqz v5, :cond_1

    .line 31
    invoke-static {v7}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const-string/jumbo v5, "right"

    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    invoke-static {v6}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 50
    :cond_2
    :goto_2
    const-string v5, "home"

    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v5

    .line 56
    const/4 v8, 0x0

    .line 57
    if-eqz v5, :cond_3

    .line 58
    const v4, 0x7f0d00d6    # @layout/home 'res/layout/home.xml'

    .line 60
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    move-result-object v3

    .line 66
    goto/16 :goto_4

    .line 67
    :cond_3
    const-string v5, "back"

    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    const v4, 0x7f0d004b    # @layout/back 'res/layout/back.xml'

    .line 77
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    move-result-object v3

    .line 83
    goto/16 :goto_4

    .line 84
    :cond_4
    const-string v5, "recent"

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 91
    if-eqz v5, :cond_5

    .line 92
    const v4, 0x7f0d0318    # @layout/recent_apps 'res/layout/recent_apps.xml'

    .line 94
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    move-result-object v3

    .line 100
    goto/16 :goto_4

    .line 101
    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v5

    .line 106
    if-eqz v5, :cond_6

    .line 107
    const v4, 0x7f0d018e    # @layout/menu_ime 'res/layout/menu_ime.xml'

    .line 109
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    move-result-object v3

    .line 115
    goto/16 :goto_4

    .line 116
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v5

    .line 121
    if-eqz v5, :cond_7

    .line 122
    const v4, 0x7f0d0277    # @layout/nav_key_space 'res/layout/nav_key_space.xml'

    .line 124
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    move-result-object v3

    .line 130
    goto/16 :goto_4

    .line 131
    :cond_7
    const-string v5, "clipboard"

    .line 133
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v5

    .line 138
    if-eqz v5, :cond_8

    .line 139
    const v4, 0x7f0d0065    # @layout/clipboard 'res/layout/clipboard.xml'

    .line 141
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    move-result-object v3

    .line 147
    goto/16 :goto_4

    .line 148
    :cond_8
    const-string v5, "contextual"

    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v5

    .line 155
    if-eqz v5, :cond_9

    .line 156
    const v4, 0x7f0d0071    # @layout/contextual 'res/layout/contextual.xml'

    .line 158
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    move-result-object v3

    .line 164
    goto/16 :goto_4

    .line 165
    :cond_9
    const-string v5, "home_handle"

    .line 167
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v5

    .line 172
    if-eqz v5, :cond_a

    .line 173
    const v4, 0x7f0d00da    # @layout/home_handle 'res/layout/home_handle.xml'

    .line 175
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 178
    move-result-object v3

    .line 181
    goto/16 :goto_4

    .line 182
    :cond_a
    const-string v5, "ime_switcher"

    .line 184
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v5

    .line 189
    if-eqz v5, :cond_b

    .line 190
    const v4, 0x7f0d00e2    # @layout/ime_switcher 'res/layout/ime_switcher.xml'

    .line 192
    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    move-result-object v3

    .line 198
    goto/16 :goto_4

    .line 199
    :cond_b
    const-string v5, "key"

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 203
    move-result v5

    .line 206
    if-eqz v5, :cond_e

    .line 207
    const-string v5, ":"

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    move-result v6

    .line 214
    if-nez v6, :cond_c

    .line 215
    move-object v6, v8

    .line 217
    goto :goto_3

    .line 218
    :cond_c
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 219
    move-result v6

    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 223
    const-string v7, ")"

    .line 225
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 227
    move-result v7

    .line 230
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 231
    move-result-object v6

    .line 234
    :goto_3
    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    .line 235
    move-result v4

    .line 238
    const v7, 0x7f0d008d    # @layout/custom_key 'res/layout/custom_key.xml'

    .line 239
    invoke-virtual {v3, v7, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 242
    move-result-object v3

    .line 245
    move-object v7, v3

    .line 246
    check-cast v7, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 247
    invoke-virtual {v7, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setCode(I)V

    .line 249
    if-eqz v6, :cond_f

    .line 252
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 254
    move-result v4

    .line 257
    if-eqz v4, :cond_d

    .line 258
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 260
    move-result-object v4

    .line 263
    new-instance v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;

    .line 264
    invoke-direct {v5, v7}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)V

    .line 266
    filled-new-array {v4}, [Landroid/graphics/drawable/Icon;

    .line 269
    move-result-object v4

    .line 272
    invoke-virtual {v5, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    goto :goto_4

    .line 276
    :cond_d
    const-string v4, "/"

    .line 277
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 279
    move-result v4

    .line 282
    if-eqz v4, :cond_f

    .line 283
    const/16 v4, 0x2f

    .line 285
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    .line 287
    move-result v4

    .line 290
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 291
    move-result-object v5

    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 297
    move-result-object v4

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 301
    move-result v4

    .line 304
    invoke-static {v5, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 305
    move-result-object v4

    .line 308
    new-instance v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;

    .line 309
    invoke-direct {v5, v7}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)V

    .line 311
    filled-new-array {v4}, [Landroid/graphics/drawable/Icon;

    .line 314
    move-result-object v4

    .line 317
    invoke-virtual {v5, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    goto :goto_4

    .line 321
    :cond_e
    move-object v3, v8

    .line 322
    :cond_f
    :goto_4
    if-nez v3, :cond_10

    .line 323
    goto/16 :goto_c

    .line 325
    :cond_10
    const-string v4, "["

    .line 327
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 329
    move-result v5

    .line 332
    if-nez v5, :cond_11

    .line 333
    goto :goto_5

    .line 335
    :cond_11
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 336
    move-result v4

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 340
    const-string v5, "]"

    .line 342
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 344
    move-result v5

    .line 347
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 348
    move-result-object v8

    .line 351
    :goto_5
    if-nez v8, :cond_12

    .line 352
    goto/16 :goto_a

    .line 354
    :cond_12
    const-string v2, "W"

    .line 356
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 358
    move-result v4

    .line 361
    const-string v5, "A"

    .line 362
    if-nez v4, :cond_14

    .line 364
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 366
    move-result v4

    .line 369
    if-eqz v4, :cond_13

    .line 370
    goto :goto_6

    .line 372
    :cond_13
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 373
    move-result v2

    .line 376
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 377
    move-result-object v4

    .line 380
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    int-to-float v5, v5

    .line 383
    mul-float/2addr v5, v2

    .line 384
    float-to-int v2, v5

    .line 385
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 386
    goto/16 :goto_a

    .line 388
    :cond_14
    :goto_6
    new-instance v4, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 390
    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 392
    invoke-direct {v4, v6}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 399
    move-result-object v7

    .line 402
    invoke-direct {v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    if-eqz p3, :cond_16

    .line 406
    if-eqz p4, :cond_15

    .line 408
    const/16 v7, 0x30

    .line 410
    goto :goto_7

    .line 412
    :cond_15
    const/16 v7, 0x50

    .line 413
    goto :goto_7

    .line 415
    :cond_16
    if-eqz p4, :cond_17

    .line 416
    const v7, 0x800003

    .line 418
    goto :goto_7

    .line 421
    :cond_17
    const v7, 0x800005

    .line 422
    :goto_7
    const-string v9, "WC"

    .line 425
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 427
    move-result v9

    .line 430
    if-eqz v9, :cond_18

    .line 431
    const/16 v7, 0x11

    .line 433
    goto :goto_8

    .line 435
    :cond_18
    const-string v9, "C"

    .line 436
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 438
    move-result v9

    .line 441
    if-eqz v9, :cond_19

    .line 442
    const/16 v7, 0x10

    .line 444
    :cond_19
    :goto_8
    invoke-virtual {v4, v7}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 446
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 449
    invoke-virtual {v4, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 455
    move-result v3

    .line 458
    const/4 v6, -0x1

    .line 459
    if-eqz v3, :cond_1a

    .line 460
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 462
    move-result v2

    .line 465
    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 466
    move-result-object v2

    .line 469
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 470
    move-result v2

    .line 473
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 474
    invoke-direct {v3, v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 476
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    goto :goto_9

    .line 482
    :cond_1a
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 485
    move-result v3

    .line 488
    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 489
    move-result-object v3

    .line 492
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 493
    move-result v3

    .line 496
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 497
    move-result-object v2

    .line 500
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 501
    move-result-object v2

    .line 504
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 505
    mul-float/2addr v3, v2

    .line 507
    float-to-int v2, v3

    .line 508
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    invoke-direct {v3, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 511
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 517
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 520
    move-object v3, v4

    .line 523
    :goto_a
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 524
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 527
    if-eqz p3, :cond_1b

    .line 530
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 532
    goto :goto_b

    .line 534
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 535
    :goto_b
    instance-of v4, v3, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 537
    if-eqz v4, :cond_1c

    .line 539
    check-cast v3, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 541
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    .line 543
    move-result-object v3

    .line 546
    :cond_1c
    if-eqz v2, :cond_1d

    .line 547
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 549
    move-result v2

    .line 552
    invoke-virtual {v3, v2}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 553
    :cond_1d
    if-eqz p3, :cond_1e

    .line 556
    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 558
    goto :goto_c

    .line 560
    :cond_1e
    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 561
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 563
    goto/16 :goto_0

    .line 565
    :cond_1f
    return-void
    .line 567
.end method

.method public final inflateLayout(Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    :cond_0
    const-string v0, ";"

    .line 10
    const/4 v1, 0x3

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    array-length v2, p1

    .line 17
    if-eq v2, v1, :cond_1

    .line 18
    const-string p1, "NavBarInflater"

    .line 20
    const-string v2, "Invalid layout."

    .line 22
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    aget-object v1, p1, v0

    .line 36
    const-string v2, ","

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    const/4 v3, 0x1

    .line 44
    aget-object v4, p1, v3

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 50
    const/4 v5, 0x2

    .line 51
    aget-object p1, p1, v5

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 58
    const v5, 0x7f0a032f    # @id/ends_group

    .line 60
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 72
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 83
    const v2, 0x7f0a01d2    # @id/center_group

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p0, v4, v1, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v1

    .line 102
    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p0, v4, v1, v3, v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 108
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v1

    .line 113
    check-cast v1, Landroid/widget/LinearLayout;

    .line 114
    new-instance v2, Landroid/widget/Space;

    .line 116
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {v2, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    const/high16 v6, 0x3f800000    # 1.0f

    .line 125
    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 127
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 133
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/LinearLayout;

    .line 139
    new-instance v2, Landroid/widget/Space;

    .line 141
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {v2, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 150
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v1

    .line 161
    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 167
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v1

    .line 172
    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 178
    return-void
    .line 181
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mListener:Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 17
    return-void
    .line 20
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 8
    const v1, 0x7f0d027a    # @layout/navigation_layout 'res/layout/navigation_layout.xml'

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 25
    const v1, 0x7f0d027b    # @layout/navigation_layout_vertical 'res/layout/navigation_layout_vertical.xml'

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/FrameLayout;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 51
    return-void
    .line 54
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearDispatcherViews()V

    .line 4
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 20
    const v3, 0x7f0a032f    # @id/ends_group

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/ViewGroup;

    .line 29
    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 31
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 34
    const v4, 0x7f0a01d2    # @id/center_group

    .line 36
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Landroid/view/ViewGroup;

    .line 43
    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 45
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Landroid/view/ViewGroup;

    .line 54
    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 56
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, Landroid/view/ViewGroup;

    .line 65
    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addAll(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_0
    return-void
    .line 73
.end method

.method public final updateAlternativeOrder()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 2
    const v1, 0x7f0a032f    # @id/ends_group

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    instance-of v2, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 15
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 22
    const v2, 0x7f0a01d2    # @id/center_group

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    instance-of v3, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 35
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 48
    if-eqz v1, :cond_2

    .line 50
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 52
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 65
    if-eqz v1, :cond_3

    .line 67
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 73
    :cond_3
    return-void
    .line 76
.end method

.method public final updateButtonDispatchersCurrentView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v2

    .line 21
    if-ge v1, v2, :cond_3

    .line 22
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 30
    iget v3, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mId:I

    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v3

    .line 37
    iput-object v3, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 38
    iget-object v4, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 44
    :cond_1
    iget-object v3, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 47
    if-eqz v3, :cond_2

    .line 49
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 52
    iget-object v3, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 55
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 57
    iget-object v2, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 60
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_1

    .line 67
    :cond_3
    return-void
    .line 68
.end method
