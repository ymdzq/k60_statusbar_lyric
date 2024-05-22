.class public abstract Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newKeyguardViewMediator(Landroid/app/trust/TrustManager;Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/miui/systemui/MultiUserController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    .line 1
    new-instance v38, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v0, v38

    invoke-direct/range {v0 .. v37}, Lcom/android/systemui/keyguard/KeyguardViewMediator;-><init>(Landroid/app/trust/TrustManager;Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/miui/systemui/MultiUserController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-object v38
.end method
