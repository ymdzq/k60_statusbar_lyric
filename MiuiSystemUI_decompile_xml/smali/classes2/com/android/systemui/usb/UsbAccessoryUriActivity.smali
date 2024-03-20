.class public Lcom/android/systemui/usb/UsbAccessoryUriActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAccessory:Landroid/hardware/usb/UsbAccessory;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 5
    const-string p2, "android.intent.action.VIEW"

    .line 7
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mUri:Landroid/net/Uri;

    .line 9
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    const-string p2, "android.intent.category.BROWSABLE"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/high16 p2, 0x10000000

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    :try_start_0
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 29
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo p2, "startActivity failed for "

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mUri:Landroid/net/Uri;

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    const-string p2, "UsbAccessoryUriActivity"

    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 52
    return-void
    .line 55
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    const/high16 v1, 0x80000

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 8
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 18
    move-result p1

    .line 21
    const-string v0, "UsbAccessoryUriActivity"

    .line 22
    if-nez p1, :cond_0

    .line 24
    const-string p1, "device not provisioned"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 38
    const-string v1, "accessory"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    .line 45
    iput-object v1, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 47
    const-string/jumbo v1, "uri"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    const/4 v1, 0x0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    move-result-object v1

    .line 63
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mUri:Landroid/net/Uri;

    .line 64
    if-nez v1, :cond_2

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "could not parse Uri "

    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 85
    return-void

    .line 88
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 92
    const-string v1, "http"

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    const-string v1, "https"

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 106
    if-nez p1, :cond_3

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "Uri not http or https: "

    .line 111
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mUri:Landroid/net/Uri;

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 124
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 128
    return-void

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 134
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 139
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 140
    if-eqz v0, :cond_4

    .line 142
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 144
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    :cond_4
    const v0, 0x7f130ba3    # @string/title_usb_accessory 'USB accessory'

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 156
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAccessoryUriActivity;->mUri:Landroid/net/Uri;

    .line 159
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 164
    const v1, 0x7f130bfe    # @string/usb_accessory_uri_prompt 'No installed apps work with this USB accessory. Learn more about this accessory at %1$s'

    .line 165
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 171
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 172
    const v0, 0x7f130651    # @string/label_view 'View'

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 180
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 181
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 188
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 189
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 195
    return-void
    .line 198
.end method
