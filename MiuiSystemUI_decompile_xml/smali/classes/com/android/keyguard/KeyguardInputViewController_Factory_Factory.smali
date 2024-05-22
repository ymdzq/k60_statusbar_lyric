.class public abstract Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/keyguard/KeyguardInputViewController$Factory;
    .locals 16

    .line 1
    new-instance v15, Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 2
    move-object/from16 v8, p7

    .line 4
    check-cast v8, Lcom/android/keyguard/LiftToActivateListener;

    .line 6
    move-object v0, v15

    .line 8
    move-object/from16 v1, p0

    .line 9
    move-object/from16 v2, p1

    .line 11
    move-object/from16 v3, p2

    .line 13
    move-object/from16 v4, p3

    .line 15
    move-object/from16 v5, p4

    .line 17
    move-object/from16 v6, p5

    .line 19
    move-object/from16 v7, p6

    .line 21
    move-object/from16 v9, p8

    .line 23
    move-object/from16 v10, p9

    .line 25
    move-object/from16 v11, p10

    .line 27
    move-object/from16 v12, p11

    .line 29
    move-object/from16 v13, p12

    .line 31
    move-object/from16 v14, p13

    .line 33
    invoke-direct/range {v0 .. v14}, Lcom/android/keyguard/KeyguardInputViewController$Factory;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 35
    return-object v15
    .line 38
.end method
