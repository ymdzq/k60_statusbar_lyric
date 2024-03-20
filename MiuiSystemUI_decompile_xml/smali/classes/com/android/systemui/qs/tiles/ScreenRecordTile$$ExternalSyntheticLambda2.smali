.class public final synthetic Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;ZLcom/android/systemui/screenrecord/ScreenRecordDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$2:Landroid/app/Dialog;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$2:Landroid/app/Dialog;

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$1:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance v4, Lcom/android/systemui/animation/DialogCuj;

    .line 13
    const/16 v1, 0x3a

    .line 15
    const-string/jumbo v3, "screen_record"

    .line 17
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    .line 23
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const/4 v5, 0x0

    .line 30
    const/16 v6, 0x8

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 37
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0
    .line 41
.end method
