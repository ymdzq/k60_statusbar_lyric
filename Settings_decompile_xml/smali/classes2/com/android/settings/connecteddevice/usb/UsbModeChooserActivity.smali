.class public Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[J

.field public static final MIUI_DEFAULT_MODES:[J

.field public static final MIUI_DEFAULT_MODES_PD:[J

.field public static final MIUI_REVERSE_CHARGE_SWAP_DR:[Ljava/lang/String;

.field public static final MIUI_SUPPORT_REVERSE_CHARGE:[Ljava/lang/String;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;

.field private mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field private mContext:Landroid/content/Context;

.field private mCurrentChoicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:J

.field private mCurrentModesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mGridView:Landroid/widget/GridView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mModesPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIcon(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;J)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getIcon(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInternalSW(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isInternalSW()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetTitleMiui12(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getTitleMiui12(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 82
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->DEFAULT_MODES:[J

    new-array v0, v0, [J

    .line 89
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_DEFAULT_MODES_PD:[J

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 96
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_DEFAULT_MODES:[J

    const-string v0, "cmi"

    const-string/jumbo v1, "umi"

    const-string v2, "apollo"

    const-string v3, "courbet"

    const-string v4, "courbetin"

    .line 102
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_SUPPORT_REVERSE_CHARGE:[Ljava/lang/String;

    .line 111
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_REVERSE_CHARGE_SWAP_DR:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x8
        0x4
        0x10
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x80
        0x4
        0x10
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x4
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "UsbModeChooserActivity"

    .line 80
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentChoicesList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mModesPositionMap:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getChargerType()Ljava/lang/String;
    .locals 6

    const-string p0, "getChargerType"

    const-string v0, "UsbModeChooserActivity"

    const/4 v1, 0x0

    .line 215
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/qcom-battery/real_type"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/power_supply/usb/real_type"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 220
    :goto_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 228
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 229
    invoke-static {v3}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 226
    :goto_1
    :try_start_3
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 224
    :goto_2
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 228
    :goto_3
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 229
    invoke-static {v3}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    const-string p0, ""

    :goto_4
    return-object p0

    :catchall_2
    move-exception p0

    move-object v1, v2

    .line 228
    :goto_5
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 229
    invoke-static {v3}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 230
    throw p0
.end method

.method private getIcon(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 267
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 268
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_charging_only:I

    return p0

    .line 270
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_charging_only_small:I

    return p0

    :cond_1
    const-wide/16 v2, 0x4

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 273
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 274
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_mtp:I

    return p0

    .line 276
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_mtp_small:I

    return p0

    :cond_3
    const-wide/16 v2, 0x10

    cmp-long v0, p1, v2

    if-nez v0, :cond_5

    .line 279
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_4

    .line 280
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_ptp:I

    return p0

    .line 282
    :cond_4
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_ptp_small:I

    return p0

    :cond_5
    const-wide/16 v0, 0x8

    cmp-long p0, p1, v0

    if-nez p0, :cond_6

    .line 285
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_MIDI:I

    return p0

    :cond_6
    const-wide/16 v0, 0x80

    cmp-long p0, p1, v0

    if-nez p0, :cond_7

    .line 287
    sget p0, Lcom/android/settings/R$drawable;->ic_usb_reverse_charging:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private getPosition()I
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isInternalSW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isAccessoryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mModesPositionMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentMode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mModesPositionMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentMode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static getTitle(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 237
    sget p0, Lcom/android/settings/R$string;->usb_use_charging_only:I

    return p0

    :cond_0
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 239
    sget p0, Lcom/android/settings/R$string;->usb_use_file_transfers:I

    return p0

    :cond_1
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 241
    sget p0, Lcom/android/settings/R$string;->usb_use_photo_transfers:I

    return p0

    :cond_2
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 243
    sget p0, Lcom/android/settings/R$string;->usb_use_MIDI:I

    return p0

    :cond_3
    const-wide/16 v0, 0x80

    cmp-long p0, p0, v0

    if-nez p0, :cond_4

    .line 245
    sget p0, Lcom/android/settings/R$string;->usb_reverse_charge:I

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static getTitleMiui12(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 252
    sget p0, Lcom/android/settings/R$string;->usb_use_charging_only:I

    return p0

    :cond_0
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 254
    sget p0, Lcom/android/settings/R$string;->usb_use_file_transfers_miui12_5:I

    return p0

    :cond_1
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 256
    sget p0, Lcom/android/settings/R$string;->usb_use_photo_transfers_miui12_5:I

    return p0

    :cond_2
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 258
    sget p0, Lcom/android/settings/R$string;->usb_use_MIDI_miui12_5:I

    return p0

    :cond_3
    const-wide/16 v0, 0x80

    cmp-long p0, p0, v0

    if-nez p0, :cond_4

    .line 260
    sget p0, Lcom/android/settings/R$string;->usb_reverse_charge:I

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private initDialog()V
    .locals 6

    .line 325
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isInternalSW()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 328
    sget v1, Lcom/android/settings/R$string;->usb_use:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 329
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentChoicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 330
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getPosition()I

    move-result v3

    new-instance v4, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    .line 329
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/settings/R$layout;->custom_usb_mode_chooser:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 360
    sget v3, Lcom/android/settings/R$id;->grid_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x1

    .line 361
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 362
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 367
    :goto_0
    new-instance v3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter-IA;)V

    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mAdapter:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;

    .line 368
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->setChooseItem(I)V

    .line 369
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mAdapter:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 396
    sget v3, Lcom/android/settings/R$string;->usb_use_miui12_5:I

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 399
    :goto_1
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 405
    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$5;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 413
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private initModesList([J)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 302
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentModesList:Ljava/util/ArrayList;

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mModesPositionMap:Ljava/util/HashMap;

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    aget-wide v2, p1, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isInternalSW()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentChoicesList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getTitle(J)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Android Auto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentChoicesList:Ljava/util/ArrayList;

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getTitle(J)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isAccessoryMode()Z
    .locals 4

    .line 297
    iget-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentMode:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInternalSW()Z
    .locals 1

    const-string/jumbo p0, "ro.product.mod_device"

    const-string v0, ""

    .line 293
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isPDCharge()Z
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getChargerType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "USB_PD"

    .line 203
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportReverseCharging()Z
    .locals 1

    const-string/jumbo p0, "ro.product.device"

    const-string v0, ""

    .line 197
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_SUPPORT_REVERSE_CHARGE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    iput-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 150
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string/jumbo p1, "no_usb_file_transfer"

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 153
    invoke-static {p0, p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 155
    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isSupportReverseCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isPDCharge()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x80

    .line 159
    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentMode:J

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mCurrentMode:J

    .line 164
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 165
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_2

    .line 166
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->DEFAULT_MODES:[J

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->initModesList([J)V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 168
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_DEFAULT_MODES_PD:[J

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_DEFAULT_MODES:[J

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->initModesList([J)V

    .line 170
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->initDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
