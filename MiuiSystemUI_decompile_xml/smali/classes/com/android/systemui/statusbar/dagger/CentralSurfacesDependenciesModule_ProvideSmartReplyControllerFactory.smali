.class public abstract Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideSmartReplyControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideSmartReplyController(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationClickNotifier;)Lcom/android/systemui/statusbar/SmartReplyController;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SmartReplyController;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationClickNotifier;)V

    .line 4
    return-object v0
    .line 7
.end method
