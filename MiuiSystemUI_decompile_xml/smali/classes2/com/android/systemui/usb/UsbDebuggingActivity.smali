.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDenySwitch:Z

.field public mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field public mKey:Ljava/lang/String;

.field public onClickListener:Lcom/android/systemui/usb/UsbDebuggingActivity$1;

.field public onDismissListener:Lcom/android/systemui/usb/UsbDebuggingActivity$2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    const-string p1, "ro.boot.qemu"

    .line 30
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    const-string v0, "1"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 41
    const-string/jumbo v0, "service.adb.tcp.port"

    .line 42
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    if-nez p1, :cond_1

    .line 52
    new-instance p1, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 64
    const-string v0, "fingerprints"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    const-string v1, "key"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_3

    .line 79
    if-nez p1, :cond_2

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    new-instance p1, Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    .line 84
    invoke-direct {p1, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$1;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    .line 86
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    .line 89
    new-instance p1, Lcom/android/systemui/usb/UsbDebuggingActivity$2;

    .line 91
    invoke-direct {p1, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$2;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Lcom/android/systemui/usb/UsbDebuggingActivity$2;

    .line 96
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 98
    const v1, 0x7f1404ee    # @style/Theme.Dialog.Alert

    .line 100
    invoke-direct {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 103
    const v1, 0x7f130c12    # @string/usb_debugging_title 'Allow USB debugging?'

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    const v1, 0x7f130c0f    # @string/usb_debugging_message 'The computer's RSA key fingerprint is:\n%1$s'

    .line 116
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 122
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f130c0e    # @string/usb_debugging_always 'Always allow from this computer'

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;Z)V

    .line 138
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 141
    const v0, 0x104000a    # @android:string/ok

    .line 144
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    .line 151
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    .line 162
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Lcom/android/systemui/usb/UsbDebuggingActivity$2;

    .line 167
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 169
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 172
    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 176
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 178
    return-void

    .line 181
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 182
    return-void
    .line 185
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    return-void
    .line 17
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 9
    return-void
    .line 12
.end method
