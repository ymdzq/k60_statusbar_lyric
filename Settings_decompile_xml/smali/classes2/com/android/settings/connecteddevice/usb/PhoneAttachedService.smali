.class public Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;
.super Landroid/app/Service;
.source "PhoneAttachedService.java"


# instance fields
.field public final MIUI_DEFAULT_MODES:[I

.field private final MIUI_REVERSE_CHARGR:Ljava/lang/String;

.field private final MODE_CHARGE_ONLY:I

.field private final MODE_DATA_MTP:I

.field private mCurrentChoicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetMode(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->setMode(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mCurrentChoicesList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->MODE_DATA_MTP:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->MODE_CHARGE_ONLY:I

    .line 38
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->MIUI_DEFAULT_MODES:[I

    const-string/jumbo v0, "miui.reverse.charge"

    .line 43
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->MIUI_REVERSE_CHARGR:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;-><init>(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getTitle(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    sget p0, Lcom/android/settings/R$string;->use_otg_charge_only:I

    return p0

    .line 113
    :cond_1
    sget p0, Lcom/android/settings/R$string;->use_otg_file_transfers:I

    return p0
.end method

.method private initDialog()V
    .locals 4

    .line 80
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 82
    sget v1, Lcom/android/settings/R$string;->use_otg_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 83
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mCurrentChoicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;-><init>(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    new-instance v1, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$3;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$3;-><init>(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 98
    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$4;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$4;-><init>(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 106
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initModesList([I)V
    .locals 3

    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mCurrentChoicesList:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-direct {p0, v2}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->getTitle(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 2

    const-string p0, "0"

    const-string/jumbo v0, "miui.reverse.charge"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 143
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "1"

    .line 140
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->MIUI_DEFAULT_MODES:[I

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->initModesList([I)V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->initDialog()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
