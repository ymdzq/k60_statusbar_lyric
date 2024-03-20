.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    .line 8
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 12
    if-ltz p1, :cond_0

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 32
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 43
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 44
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 46
    move-object v8, v0

    .line 48
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 49
    invoke-virtual {v8, v6, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 51
    move-result-object v6

    .line 54
    invoke-direct {v7, v3, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 55
    invoke-virtual {v2, v5, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    check-cast v2, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 78
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 80
    move-object v5, v0

    .line 82
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 83
    invoke-virtual {v5, p0, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 85
    move-result-object v5

    .line 88
    invoke-direct {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 89
    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 92
    goto :goto_1

    .line 95
    :cond_1
    return-void
    .line 96
.end method
