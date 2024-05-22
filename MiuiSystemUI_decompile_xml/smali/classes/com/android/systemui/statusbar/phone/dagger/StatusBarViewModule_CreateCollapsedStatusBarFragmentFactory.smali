.class public abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_CreateCollapsedStatusBarFragmentFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static createCollapsedStatusBarFragment(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;
    .locals 21

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
    new-instance v20, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 40
    move-object/from16 v0, v20

    .line 42
    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;-><init>(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 44
    return-object v20
    .line 47
.end method
