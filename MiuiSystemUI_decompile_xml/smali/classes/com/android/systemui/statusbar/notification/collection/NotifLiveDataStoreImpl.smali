.class public final Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 5
    const-string v1, "hasActiveNotifs"

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 22
    const-string v3, "activeNotifCount"

    .line 23
    invoke-direct {v1, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 25
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 28
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 30
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 32
    const-string v4, "activeNotifList"

    .line 34
    invoke-direct {v2, v4, v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 36
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 43
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 45
    return-void
    .line 47
.end method


# virtual methods
.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    .line 1
    const-string v0, "activeNotifListPrivate"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "activeNotifCountPrivate"

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v0, "hasActiveNotifsPrivate"

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 18
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method
