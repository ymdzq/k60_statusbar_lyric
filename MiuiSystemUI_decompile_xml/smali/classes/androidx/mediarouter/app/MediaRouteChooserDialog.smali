.class public final Landroidx/mediarouter/app/MediaRouteChooserDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapter:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

.field public mAttachedToWindow:Z

.field public final mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

.field public final mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

.field public mLastUpdateTime:J

.field public mListView:Landroid/widget/ListView;

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mRoutes:Ljava/util/ArrayList;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 16
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 18
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V

    .line 20
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 33
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 35
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V

    .line 37
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 10
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 12
    invoke-virtual {v1, v2, v3, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 14
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 17
    return-void
    .line 20
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d024f    # @layout/mr_chooser_dialog 'res/layout/mr_chooser_dialog.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    .line 16
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1, v0, v1}, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 29
    const p1, 0x7f0a0636    # @id/mr_chooser_list

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/ListView;

    .line 38
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 40
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 54
    const v0, 0x1020004    # @android:id/empty

    .line 56
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 63
    const p1, 0x7f0a063b    # @id/mr_chooser_title

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p0

    .line 84
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    .line 85
    move-result p0

    .line 88
    const/4 v0, -0x2

    .line 89
    invoke-virtual {p1, p0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 90
    return-void
    .line 93
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 18
    return-void
    .line 21
.end method

.method public final refreshRoutes()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 2
    if-eqz v0, :cond_5

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 13
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 16
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 27
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v1

    .line 35
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .line 36
    const/4 v3, 0x1

    .line 38
    if-lez v1, :cond_3

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 45
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 47
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    iget-boolean v4, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 53
    if-eqz v4, :cond_1

    .line 55
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 57
    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    goto :goto_2

    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 66
    :goto_2
    if-nez v3, :cond_2

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_2
    move v1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object v1, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;

    .line 74
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 79
    move-result-wide v1

    .line 82
    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    .line 83
    sub-long/2addr v1, v4

    .line 85
    const-wide/16 v4, 0x12c

    .line 86
    cmp-long v1, v1, v4

    .line 88
    if-ltz v1, :cond_4

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    move-result-wide v1

    .line 95
    iput-wide v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    .line 96
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 108
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 110
    goto :goto_3

    .line 113
    :cond_4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 114
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 119
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 121
    move-result-object v0

    .line 124
    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    .line 125
    add-long/2addr v2, v4

    .line 127
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 128
    :cond_5
    :goto_3
    return-void
    .line 131
.end method

.method public final setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 12
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 20
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 25
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 27
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

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

.method public final setTitle(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
