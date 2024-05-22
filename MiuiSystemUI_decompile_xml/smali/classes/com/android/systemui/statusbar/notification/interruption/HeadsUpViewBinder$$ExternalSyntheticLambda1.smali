.class public final synthetic Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$bindForAsyncHeadsUp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBoundSuccessfully$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBoundSuccessfully$2;

    .line 11
    const-string v4, "HeadsUpViewBinder"

    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    invoke-static {v3, v2, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 24
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 29
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUsesIncreasedHeadsUpHeight(Z)V

    .line 33
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mOngoingBindCallbacks:Ljava/util/Map;

    .line 36
    check-cast v0, Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    .line 43
    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;->onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 47
    :cond_0
    return-void
    .line 50
.end method
