.class public abstract Lcom/android/systemui/tv/TvSystemUIModule_ProvideTvNotificationHandlerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideTvNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;-><init>(Lcom/android/systemui/statusbar/NotificationListener;)V

    .line 4
    return-object v0
    .line 7
.end method
