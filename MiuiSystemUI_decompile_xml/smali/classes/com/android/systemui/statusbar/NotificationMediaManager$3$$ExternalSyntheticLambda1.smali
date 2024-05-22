.class public final synthetic Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 17
    move-result-object p0

    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 25
    return-void
    .line 28
.end method
