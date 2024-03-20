.class public final synthetic Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/DndTile;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 9
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mQSZenDialogMetricsLogger:Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;)V

    .line 15
    invoke-virtual {v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/AlertDialog;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    .line 22
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 25
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 29
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    .line 32
    if-eqz p0, :cond_0

    .line 35
    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    .line 37
    const/16 v3, 0x3a

    .line 39
    const-string/jumbo v4, "start_zen_mode"

    .line 41
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    .line 47
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 48
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 54
    :goto_0
    return-void
    .line 57
.end method
