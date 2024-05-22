.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final provider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->provider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    .line 7
    return-void
    .line 9
.end method

.method public static markNonDismissibleEntries(Ljava/util/Set;Ljava/util/List;Z)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    move-result-object v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_4

    .line 25
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 27
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isNonDismissable()Z

    .line 29
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 36
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    if-nez p2, :cond_2

    .line 44
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    move v5, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    :goto_2
    move v5, v4

    .line 49
    :goto_3
    if-nez v5, :cond_4

    .line 50
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 52
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    move v1, v4

    .line 57
    :cond_4
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 58
    if-eqz v3, :cond_0

    .line 60
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 62
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 64
    invoke-static {p0, v3, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->markNonDismissibleEntries(Ljava/util/Set;Ljava/util/List;Z)Z

    .line 66
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 72
    if-eqz v1, :cond_5

    .line 74
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 76
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_5
    move v1, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    return v1
    .line 83
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator$attach$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    .line 7
    return-void
    .line 10
.end method
