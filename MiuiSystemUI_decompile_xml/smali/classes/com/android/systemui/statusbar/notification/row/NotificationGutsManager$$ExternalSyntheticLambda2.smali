.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    .line 14
    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSnoozed:Z

    .line 18
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 20
    if-eqz v4, :cond_0

    .line 22
    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->willBeRemoved()Z

    .line 24
    move-result v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v3

    .line 29
    :goto_0
    if-nez v4, :cond_1

    .line 30
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 32
    if-nez v4, :cond_1

    .line 34
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 36
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 38
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    .line 42
    move-result v5

    .line 45
    xor-int/2addr v2, v5

    .line 46
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 47
    invoke-virtual {v4, p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 49
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 52
    if-ne v2, p1, :cond_2

    .line 54
    const/4 p1, 0x0

    .line 56
    iput-object p1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 57
    iput-object p1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 59
    :cond_2
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

    .line 61
    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;->onGutsClose(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 65
    :cond_3
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setGutsShown(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 74
    return-void
    .line 77
.end method
