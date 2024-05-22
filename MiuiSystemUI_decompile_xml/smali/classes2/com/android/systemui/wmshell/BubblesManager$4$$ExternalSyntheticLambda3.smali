.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    const/4 p1, 0x2

    .line 9
    iput p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 8
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 10
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    iget-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 36
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 38
    iget-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 40
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 42
    const/4 v5, 0x1

    .line 44
    invoke-virtual {v4, p0, v5}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 45
    move-result-object v4

    .line 48
    const/4 v5, 0x4

    .line 49
    invoke-direct {v3, v5, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 50
    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    return-void
    .line 57
.end method
