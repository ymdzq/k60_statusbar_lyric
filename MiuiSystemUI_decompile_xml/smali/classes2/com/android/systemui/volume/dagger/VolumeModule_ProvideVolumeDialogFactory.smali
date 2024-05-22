.class public abstract Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideVolumeDialog(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/volume/VolumeDialogImpl;
    .locals 15

    .line 1
    new-instance v14, Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v12

    .line 7
    move-object v0, v14

    .line 8
    move-object v1, p0

    .line 9
    move-object/from16 v2, p1

    .line 10
    move-object/from16 v3, p2

    .line 12
    move-object/from16 v4, p3

    .line 14
    move-object/from16 v5, p4

    .line 16
    move-object/from16 v6, p5

    .line 18
    move-object/from16 v7, p6

    .line 20
    move-object/from16 v8, p7

    .line 22
    move-object/from16 v9, p8

    .line 24
    move-object/from16 v10, p9

    .line 26
    move-object/from16 v11, p10

    .line 28
    move-object/from16 v13, p11

    .line 30
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V

    .line 32
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 35
    const/4 v1, 0x5

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    iget-boolean v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 47
    const/4 v1, 0x4

    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    iput-boolean v2, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 53
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :goto_0
    iget-boolean v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 60
    if-nez v0, :cond_1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    iput-boolean v3, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 65
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    :goto_1
    return-object v14
    .line 72
.end method
