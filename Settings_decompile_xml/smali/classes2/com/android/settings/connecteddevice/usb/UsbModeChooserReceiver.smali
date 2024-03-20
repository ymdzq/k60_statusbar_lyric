.class public Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserReceiver.java"


# static fields
.field public static final SUPPORT_PRODUCT_IDS:[I

.field public static final SUPPORT_VENDOR_IDS:[I

.field public static mOTGSoftSwitch:Z


# instance fields
.field private mSupportProductIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVendorIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupportProductIdsList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportProductIdsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportVendorIdsList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportVendorIdsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitPidList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->initPidList([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitVidList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->initVidList([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPhoneAttachedService(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->startPhoneAttachedService(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->SUPPORT_VENDOR_IDS:[I

    const/16 v0, 0x24

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->SUPPORT_PRODUCT_IDS:[I

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mOTGSoftSwitch:Z

    return-void

    :array_0
    .array-data 4
        0x4e8
        0x12d1
        0x5ac
        0x22d9
        0x2d95
        0x17ef
        0x1004
        0x19d2
        0x2a45
        0x2a70
        0xfce
        0x2c73
        0xbb4
        0x29a9
        0xe8d
        0x5c6
        0x18d1
    .end array-data

    :array_1
    .array-data 4
        0x6860
        0x107d
        0x107e
        0x12a8
        0x2048
        0x2773
        0x2774
        0x2764
        0x2765
        0x6002
        0x6003
        0x6005
        0x7b7c
        0x7b7d
        0x633e
        0x244
        0x245
        0xc02
        0x2008
        0x9011
        0xffce
        0x7104
        0x702e
        0x663
        0xf25
        0x701c
        0x20ff
        0xff00
        0xff08
        0x201d
        0xf000
        0xf003
        0x4ee1
        0x4ee7
        0x4ee8
        0x4ee9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportVendorIdsList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportProductIdsList:Ljava/util/ArrayList;

    return-void
.end method

.method private handlePhoneAttached(Landroid/content/Context;)V
    .locals 2

    .line 133
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 134
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlePhoneAttachedAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 144
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 145
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initPidList([I)V
    .locals 3

    const/4 v0, 0x0

    .line 123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportProductIdsList:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initVidList([I)V
    .locals 3

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mSupportVendorIdsList:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setOtgSoftFlag(Z)V
    .locals 0

    .line 129
    sput-boolean p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mOTGSoftSwitch:Z

    return-void
.end method

.method private declared-synchronized startPhoneAttachedService(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 160
    :try_start_0
    sget-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->mOTGSoftSwitch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 161
    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->setOtgSoftFlag(Z)V

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbModeChooserReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    const-string/jumbo v3, "miui.usb.dialog"

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.settings.action.MEDIA_MTP_TRANSFER_FAILED"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "0"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ro.product.mod_device"

    const-string v5, ""

    .line 98
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 101
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportOtgReverseCharge()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->handlePhoneAttachedAsync(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.settings.action.PHONE_ATTACHED"

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 107
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportOtgReverseCharge()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->handlePhoneAttached(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string p0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportOtgReverseCharge()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 110
    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->setOtgSoftFlag(Z)V

    const-string/jumbo p0, "miui.reverse.charge"

    .line 111
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_4
    :goto_0
    return-void
.end method
