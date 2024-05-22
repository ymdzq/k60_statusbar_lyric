.class public abstract Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    .line 4
    return-object v0
    .line 7
.end method
