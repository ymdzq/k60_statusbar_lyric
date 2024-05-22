.class public final Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;


# instance fields
.field public mEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;)V

    .line 9
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->onModalChangeListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3
    return-void
    .line 5
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ModalLifetimeExtender"

    .line 2
    return-object p0
    .line 4
.end method

.method public final maybeExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 2
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    move p2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v2

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 23
    return v1

    .line 25
    :cond_1
    return v2
    .line 26
.end method

.method public final setCallback(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 2
    return-void
    .line 4
.end method
