.class public final synthetic Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/modal/ModalController$OnModalChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEndLifetimeExtensionCallback:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 10
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 16
    return-void
    .line 18
.end method
