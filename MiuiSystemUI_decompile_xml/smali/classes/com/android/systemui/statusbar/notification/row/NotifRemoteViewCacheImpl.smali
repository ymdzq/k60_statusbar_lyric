.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;


# instance fields
.field public final mCollectionListener:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;

.field public final mNotifCachedContentViews:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mCollectionListener:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/SparseArray;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/RemoteViews;

    .line 20
    return-object p0
    .line 22
.end method

.method public final putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/SparseArray;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    return-void
    .line 18
.end method

.method public final removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/SparseArray;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    return-void
    .line 18
.end method
