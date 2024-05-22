.class public final synthetic Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DataSaverTile;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    .line 2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 9
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 13
    const p0, 0x1040324    # @android:string/duration_days_shortest_future

    .line 16
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 19
    iget-object p0, v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 22
    const v1, 0x1040322    # @android:string/duration_days_relative_future

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    new-instance p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda1;

    .line 34
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    .line 36
    const v1, 0x1040323    # @android:string/duration_days_shortest

    .line 39
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 42
    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 45
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 48
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 51
    if-eqz v3, :cond_0

    .line 54
    new-instance v4, Lcom/android/systemui/animation/DialogCuj;

    .line 56
    const/16 p0, 0x3a

    .line 58
    const-string/jumbo v1, "start_data_saver"

    .line 60
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 63
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    const/4 v5, 0x0

    .line 71
    const/16 v6, 0x8

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V

    .line 74
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 78
    :goto_0
    return-void
    .line 81
.end method
