.class public final Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/NightModeTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/NightModeTile;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;-><init>(Lcom/android/systemui/qs/tiles/NightModeTile;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/NightModeTile;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->$r8$classId:I

    .line 2
    const/16 v1, 0x7da

    .line 4
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f1404ee    # @style/Theme.Dialog.Alert

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :pswitch_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    invoke-direct {v0, p0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 20
    const p0, 0x7f13094a    # @string/qs_open_night_mode_alert_summary 'Certain display settings aren't compatible with Dark mode. However, they will be restored once you t ...'

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 26
    const p0, 0x104000a    # @android:string/ok

    .line 29
    invoke-virtual {v0, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 32
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 46
    return-void

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 50
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 52
    const-string v4, "darkMode cannot be exited due to power save"

    .line 54
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;->this$0:Lcom/android/systemui/qs/tiles/NightModeTile;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {v0, p0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 65
    const/4 p0, 0x0

    .line 68
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 69
    const p0, 0x7f130344    # @string/dark_mode_power_save_alert_dialog_title 'Dark mode'

    .line 72
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 75
    const p0, 0x7f130343    # @string/dark_mode_power_save_alert_dialog_message 'If you turn off system optimization and turn on Battery saver, Dark mode will be turned on automatic ...'

    .line 78
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 81
    const p0, 0x7f130342    # @string/dark_mode_power_save_alert_dialog_confirm 'Got it'

    .line 84
    invoke-virtual {v0, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 87
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 101
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 106
.end method
