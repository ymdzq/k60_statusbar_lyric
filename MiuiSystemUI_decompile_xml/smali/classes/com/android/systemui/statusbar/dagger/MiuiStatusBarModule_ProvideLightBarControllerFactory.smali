.class public abstract Lcom/android/systemui/statusbar/dagger/MiuiStatusBarModule_ProvideLightBarControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideLightBarController(Lcom/android/systemui/statusbar/dagger/MiuiStatusBarModule;Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/policy/SmartDarkObserver;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)Lcom/android/systemui/statusbar/phone/MiuiLightBarController;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v12, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 5
    move-object v0, v12

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object/from16 v3, p3

    .line 10
    move-object/from16 v4, p4

    .line 12
    move-object/from16 v5, p5

    .line 14
    move-object/from16 v6, p6

    .line 16
    move-object/from16 v7, p7

    .line 18
    move-object/from16 v8, p8

    .line 20
    move-object/from16 v9, p9

    .line 22
    move-object/from16 v10, p10

    .line 24
    move-object/from16 v11, p11

    .line 26
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/policy/SmartDarkObserver;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 28
    return-object v12
    .line 31
.end method
