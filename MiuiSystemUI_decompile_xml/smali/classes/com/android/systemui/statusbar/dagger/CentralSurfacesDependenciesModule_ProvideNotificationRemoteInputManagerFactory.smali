.class public abstract Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideNotificationRemoteInputManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideNotificationRemoteInputManager(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 2
    move-object v0, v12

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object/from16 v4, p3

    .line 8
    move-object/from16 v5, p4

    .line 10
    move-object/from16 v6, p5

    .line 12
    move-object/from16 v7, p6

    .line 14
    move-object/from16 v8, p7

    .line 16
    move-object/from16 v9, p8

    .line 18
    move-object/from16 v10, p9

    .line 20
    move-object/from16 v11, p10

    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;Lcom/android/systemui/dump/DumpManager;)V

    .line 24
    return-object v12
    .line 27
.end method
