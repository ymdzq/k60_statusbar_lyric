.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 4
    check-cast p0, Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
    .line 11
.end method

.method public final onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8
    check-cast p0, Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
    .line 16
.end method
