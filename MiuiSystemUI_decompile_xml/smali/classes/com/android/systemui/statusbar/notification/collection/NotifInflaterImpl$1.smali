.class public final Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

.field public final synthetic val$callback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$callback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->clearInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$callback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 17
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->$r8$lambda$T1DwXSSxf_XS7CenlmlbkE5FMFw(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
