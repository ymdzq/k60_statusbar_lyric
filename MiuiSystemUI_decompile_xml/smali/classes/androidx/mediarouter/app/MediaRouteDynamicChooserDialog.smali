.class public final Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

.field public mAttachedToWindow:Z

.field public final mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

.field public mLastUpdateTime:J

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mRoutes:Ljava/util/List;

.field public mSelectingRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field public final mUpdateRoutesDelayMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(ZLandroid/content/Context;)Landroid/content/Context;

    .line 3
    move-result-object p1

    .line 6
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    .line 7
    move-result v0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 11
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 14
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 16
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    .line 18
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    .line 20
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 33
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 35
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    .line 37
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 40
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 47
    const v0, 0x7f0b00ce    # @integer/mr_update_routes_delay_ms '300'

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    move-result p1

    .line 54
    int-to-long v0, p1

    .line 55
    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 10
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 12
    invoke-virtual {v1, v2, v3, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 14
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

    .line 17
    return-void
    .line 20
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d0253    # @layout/mr_picker_dialog 'res/layout/mr_picker_dialog.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 8
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p1, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    .line 21
    const p1, 0x7f0a064a    # @id/mr_picker_close_button

    .line 23
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/ImageButton;

    .line 30
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;

    .line 32
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    .line 40
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    .line 42
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    .line 45
    const p1, 0x7f0a064c    # @id/mr_picker_list

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 53
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    .line 58
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 65
    const/4 v1, 0x1

    .line 67
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 68
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v0

    .line 79
    const v1, 0x7f050087    # @bool/is_tablet 'false'

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 83
    move-result v0

    .line 86
    const/4 v2, -0x1

    .line 87
    if-nez v0, :cond_0

    .line 88
    move p1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    .line 92
    move-result p1

    .line 95
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    goto :goto_1

    .line 108
    :cond_1
    const/4 v2, -0x2

    .line 109
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {p0, p1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 114
    return-void
    .line 117
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 12
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    .line 15
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    return-void
    .line 21
.end method

.method public final refreshRoutes()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelectingRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 7
    if-eqz v0, :cond_6

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 18
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 21
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 32
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v1

    .line 40
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .line 41
    const/4 v3, 0x1

    .line 43
    if-lez v1, :cond_4

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 50
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 52
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    iget-boolean v4, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 58
    if-eqz v4, :cond_2

    .line 60
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 62
    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    goto :goto_2

    .line 70
    :cond_2
    const/4 v3, 0x0

    .line 71
    :goto_2
    if-nez v3, :cond_3

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    :cond_3
    move v1, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    sget-object v1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;

    .line 79
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    move-result-wide v1

    .line 87
    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    .line 88
    sub-long/2addr v1, v4

    .line 90
    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    .line 91
    cmp-long v1, v1, v4

    .line 93
    if-ltz v1, :cond_5

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    move-result-wide v1

    .line 100
    iput-wide v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    .line 101
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    .line 103
    check-cast v1, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    .line 110
    check-cast v1, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    .line 117
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;->rebuildItems()V

    .line 119
    goto :goto_3

    .line 122
    :cond_5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    .line 123
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    .line 128
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 130
    move-result-object v0

    .line 133
    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    .line 134
    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    .line 136
    add-long/2addr v2, v4

    .line 138
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 139
    :cond_6
    :goto_3
    return-void
    .line 142
.end method

.method public final setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 12
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 20
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 25
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 27
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

    .line 33
    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    const-string/jumbo p1, "selector must not be null"

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
    .line 45
.end method
