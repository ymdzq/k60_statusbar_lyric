.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender$endLifetimeExtensionAfterDelay$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender$endLifetimeExtensionAfterDelay$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender$endLifetimeExtensionAfterDelay$1;->$key:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender$endLifetimeExtensionAfterDelay$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender$endLifetimeExtensionAfterDelay$1;->$key:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endLifetimeExtension(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method
