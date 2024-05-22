.class public abstract Lcom/android/systemui/qs/QSPanelController_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Ljava/lang/Object;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/qs/QSPanelController;
    .locals 17

    .line 1
    new-instance v16, Lcom/android/systemui/qs/QSPanelController;

    .line 2
    move-object/from16 v7, p6

    .line 4
    check-cast v7, Lcom/android/systemui/qs/QSTileRevealController$Factory;

    .line 6
    move-object/from16 v0, v16

    .line 8
    move-object/from16 v1, p0

    .line 10
    move-object/from16 v2, p1

    .line 12
    move-object/from16 v3, p2

    .line 14
    move-object/from16 v4, p3

    .line 16
    move/from16 v5, p4

    .line 18
    move-object/from16 v6, p5

    .line 20
    move-object/from16 v8, p7

    .line 22
    move-object/from16 v9, p8

    .line 24
    move-object/from16 v10, p9

    .line 26
    move-object/from16 v11, p10

    .line 28
    move-object/from16 v12, p11

    .line 30
    move-object/from16 v13, p12

    .line 32
    move-object/from16 v14, p13

    .line 34
    move-object/from16 v15, p14

    .line 36
    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/qs/QSPanelController;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 38
    return-object v16
    .line 41
.end method
