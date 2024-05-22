.class public abstract Lcom/android/systemui/screenshot/ScreenshotController_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ImageCaptureImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureController;Lcom/android/systemui/screenshot/LongScreenshotData;Landroid/app/ActivityManager;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/os/UserManager;Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/settings/DisplayTracker;)Lcom/android/systemui/screenshot/ScreenshotController;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    move-object/from16 v3, p2

    .line 6
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
    move-object/from16 v12, p11

    .line 24
    move-object/from16 v13, p12

    .line 26
    move-object/from16 v14, p13

    .line 28
    move-object/from16 v15, p14

    .line 30
    move-object/from16 v16, p15

    .line 32
    move-object/from16 v17, p16

    .line 34
    move-object/from16 v18, p17

    .line 36
    move-object/from16 v19, p18

    .line 38
    move-object/from16 v20, p19

    .line 40
    new-instance v21, Lcom/android/systemui/screenshot/ScreenshotController;

    .line 42
    move-object/from16 v0, v21

    .line 44
    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/screenshot/ScreenshotController;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ImageCaptureImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureController;Lcom/android/systemui/screenshot/LongScreenshotData;Landroid/app/ActivityManager;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/os/UserManager;Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 46
    return-object v21
.end method
