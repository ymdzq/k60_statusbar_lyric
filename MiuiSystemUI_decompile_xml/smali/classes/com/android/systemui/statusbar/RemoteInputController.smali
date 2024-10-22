.class public final Lcom/android/systemui/statusbar/RemoteInputController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ENABLE_REMOTE_INPUT:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mDelegate:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

.field public mLastAppliedRemoteInputActive:Ljava/lang/Boolean;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

.field public final mOpen:Ljava/util/ArrayList;

.field public final mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

.field public final mSpinning:Landroid/util/ArrayMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "debug.enable_remote_input"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mLastAppliedRemoteInputActive:Ljava/lang/Boolean;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

    .line 34
    return-void
    .line 36
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 3
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 9
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 16
    iget-object v2, v2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 24
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->remoteInputActive:Z

    .line 29
    if-eq v4, v0, :cond_1

    .line 31
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->remoteInputActive:Z

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 44
    const/4 v2, 0x1

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 49
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 52
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 56
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive$1()Z

    .line 62
    move-result p1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v1

    .line 71
    :goto_1
    if-ge v3, v1, :cond_4

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .line 78
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputActive(Z)V

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mLastAppliedRemoteInputActive:Ljava/lang/Boolean;

    .line 90
    return-void
    .line 92
.end method

.method public final isRemoteInputActive$1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    return p0
    .line 14
.end method

.method public final pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ltz v0, :cond_6

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 17
    check-cast v4, Landroid/util/Pair;

    .line 18
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 22
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Landroid/util/Pair;

    .line 34
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    if-eqz p3, :cond_1

    .line 38
    if-ne v5, p3, :cond_0

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    move v6, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    move v6, v1

    .line 45
    :goto_2
    if-eqz v4, :cond_4

    .line 46
    if-ne v4, p2, :cond_2

    .line 48
    if-eqz v6, :cond_2

    .line 50
    goto :goto_3

    .line 52
    :cond_2
    if-ne v4, p1, :cond_5

    .line 53
    if-eqz p3, :cond_3

    .line 55
    if-eq p3, v5, :cond_3

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    goto :goto_4

    .line 62
    :cond_3
    move v3, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_6
    return v3
    .line 71
.end method

.method public final removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeVisible:Z

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

    .line 7
    const/4 v2, 0x0

    .line 9
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeAnimatingAway:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    invoke-virtual {v1, v3, p0, p0, v2}, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logRemoveRemoteInput(Ljava/lang/String;ZZLjava/lang/Boolean;)V

    .line 19
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeVisible:Z

    .line 27
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeAnimatingAway:Z

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v6

    .line 34
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logRemoveRemoteInput(Ljava/lang/String;ZZLjava/lang/Boolean;)V

    .line 35
    if-nez v0, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 44
    return-void
    .line 47
.end method

.method public final removeSpinning(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    return-void
    .line 18
.end method
