.class public Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;
    }
.end annotation


# static fields
.field private static final MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Xiaomi Watch"

    const-string v1, "Redmi Watch"

    const-string v2, "Mi Color"

    const-string v3, "Mi Watch"

    .line 49
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

    return-void
.end method

.method private static buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    sget v1, Lcom/android/settingslib/R$array;->bt_icon_fg_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 542
    sget v2, Lcom/android/settingslib/R$array;->bt_icon_bg_colors:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 545
    array-length v2, v0

    rem-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 546
    aget v1, v1, p2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 547
    new-instance v1, Lcom/android/settingslib/widget/AdaptiveIcon;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 548
    aget p0, v0, p2

    invoke-virtual {v1, p0}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    return-object v1
.end method

.method private static doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 823
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    return p0
.end method

.method private static extraTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "(.*?)"

    .line 830
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->generateExpressionWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 831
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 833
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static generateExpressionWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTagStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTagEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 505
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 748
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 752
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Landroid/bluetooth/BluetoothClass;Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothClass;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 418
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_4

    const/16 v3, 0x200

    if-eq v2, v3, :cond_3

    const/16 v3, 0x500

    if-eq v2, v3, :cond_2

    const/16 v3, 0x600

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1500

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4000

    .line 452
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 454
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    .line 455
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 456
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 444
    :cond_0
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_hearing_aid:I

    .line 445
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 436
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_imaging_bonded:I

    .line 437
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 439
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 431
    :cond_2
    new-instance p2, Landroid/util/Pair;

    .line 432
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 425
    :cond_3
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone_bonded:I

    .line 426
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 428
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 420
    :cond_4
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_laptop_bonded:I

    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 422
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    if-eqz p2, :cond_c

    .line 462
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 463
    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v3

    .line 464
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v4, :cond_7

    .line 465
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v3

    goto :goto_0

    .line 466
    :cond_7
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v4, :cond_8

    .line 467
    check-cast v2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v3

    goto :goto_0

    .line 468
    :cond_8
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v4, :cond_9

    .line 469
    check-cast v2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v3

    goto :goto_0

    .line 470
    :cond_9
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v4, :cond_a

    .line 471
    check-cast v2, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v3

    goto :goto_0

    .line 472
    :cond_a
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/DunServerProfile;

    if-eqz v4, :cond_b

    .line 473
    check-cast v2, Lcom/android/settingslib/bluetooth/DunServerProfile;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/bluetooth/DunServerProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v3

    :cond_b
    :goto_0
    if-eqz v3, :cond_6

    .line 476
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c
    if-eqz p1, :cond_e

    const/4 p2, 0x0

    .line 481
    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 482
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    .line 483
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 485
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 487
    :cond_d
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 488
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp_bonded:I

    .line 489
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 491
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 494
    :cond_e
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth_bonded:I

    .line 495
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 497
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 108
    sget-object v6, Lcom/android/settingslib/bluetooth/BluetoothUtils;->MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 109
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_1

    .line 111
    sget v0, Lcom/android/settingslib/R$drawable;->ic_ble_bracelet_bonded:I

    goto :goto_2

    :cond_1
    sget v0, Lcom/android/settingslib/R$drawable;->ic_ble_bracelet:I

    .line 110
    :goto_2
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 119
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    const/16 v7, 0x100

    if-eq v6, v7, :cond_10

    const/16 v7, 0x200

    if-eq v6, v7, :cond_e

    const/16 v7, 0x500

    if-eq v6, v7, :cond_b

    const/16 v7, 0x600

    if-eq v6, v7, :cond_9

    const/16 v7, 0x1500

    if-eq v6, v7, :cond_7

    const/16 v6, 0x4000

    .line 178
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_4

    .line 182
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 181
    :goto_3
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    if-eqz v1, :cond_12

    const/16 v6, 0x420

    if-eqz v2, :cond_6

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    if-ne v7, v6, :cond_12

    const-string v6, "bluetooth_eir_manufacture"

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v1

    const/16 v6, 0x38f

    if-ne v1, v6, :cond_12

    .line 192
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_car:I

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 195
    :cond_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteEirManuFactureData()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 196
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteEirManuFactureData()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    if-ne v7, v6, :cond_12

    const-string v6, "8f 03"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 198
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_car_unbond:I

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 160
    :cond_7
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_8

    .line 162
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_hearing_aid:I

    goto :goto_4

    :cond_8
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_hearingaid_unbond:I

    .line 161
    :goto_4
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 150
    :cond_9
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_a

    .line 154
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_imaging_bonded:I

    goto :goto_5

    :cond_a
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_imaging:I

    .line 151
    :goto_5
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 137
    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v1, 0x51c

    if-ne p1, v1, :cond_d

    .line 138
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_c

    .line 139
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_digital_pen_bonded:I

    goto :goto_6

    :cond_c
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_digital_pen:I

    :goto_6
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 141
    :cond_d
    new-instance p1, Landroid/util/Pair;

    .line 144
    invoke-static {v0, v2}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 145
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 128
    :cond_e
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_f

    .line 132
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone_bonded:I

    goto :goto_7

    :cond_f
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    .line 129
    :goto_7
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 121
    :cond_10
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_11

    .line 124
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_laptop_bonded:I

    goto :goto_8

    :cond_11
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    .line 121
    :goto_8
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 206
    :cond_12
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :cond_13
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 209
    invoke-interface {v6, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v7

    .line 211
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v8, :cond_14

    .line 212
    invoke-static {v0, v2}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    goto :goto_a

    .line 213
    :cond_14
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v8, :cond_15

    .line 214
    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-virtual {v7, v0, v2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    goto :goto_a

    .line 215
    :cond_15
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v8, :cond_16

    .line 216
    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v7, v0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    goto :goto_a

    .line 217
    :cond_16
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v8, :cond_17

    .line 218
    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {v7, v0, v2}, Lcom/android/settingslib/bluetooth/PanProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    goto :goto_a

    .line 219
    :cond_17
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/DunServerProfile;

    if-eqz v8, :cond_18

    .line 220
    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/bluetooth/DunServerProfile;

    invoke-virtual {v7, v0, v2}, Lcom/android/settingslib/bluetooth/DunServerProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    :cond_18
    :goto_a
    if-eqz v7, :cond_13

    .line 226
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v8, :cond_1a

    instance-of v6, v6, Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v6, :cond_19

    goto :goto_b

    :cond_19
    if-nez v1, :cond_13

    move v1, v7

    goto :goto_9

    .line 227
    :cond_1a
    :goto_b
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1b
    if-eqz v1, :cond_1c

    .line 235
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1c
    if-eqz v0, :cond_20

    .line 239
    invoke-static {v0, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 240
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_1d

    .line 244
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    goto :goto_c

    :cond_1d
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 241
    :goto_c
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 245
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 247
    :cond_1e
    invoke-static {v0, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 248
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_1f

    .line 252
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp_bonded:I

    goto :goto_d

    :cond_1f
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    .line 249
    :goto_d
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 253
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 256
    :cond_20
    new-instance p1, Landroid/util/Pair;

    if-eqz v2, :cond_21

    .line 260
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth_bonded:I

    goto :goto_e

    :cond_21
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth:I

    .line 257
    :goto_e
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 270
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->MI_WATCH_DEVICE_NAME_LIST:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 271
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_0

    .line 273
    sget p2, Lcom/android/settingslib/R$drawable;->ic_ble_bracelet_bonded:I

    goto :goto_1

    :cond_0
    sget p2, Lcom/android/settingslib/R$drawable;->ic_ble_bracelet:I

    .line 272
    :goto_1
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 274
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 284
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_10

    const/16 v5, 0x200

    if-eq v4, v5, :cond_e

    const/16 v5, 0x500

    if-eq v4, v5, :cond_b

    const/16 v5, 0x600

    if-eq v4, v5, :cond_9

    const/16 v5, 0x1500

    if-eq v4, v5, :cond_7

    .line 333
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 335
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_adv_audio:I

    .line 336
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_group:I

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    const/16 v4, 0x4000

    .line 340
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_4

    .line 344
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    goto :goto_2

    :cond_4
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 343
    :goto_2
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    if-eqz v1, :cond_12

    const/16 v4, 0x420

    if-eqz p2, :cond_6

    .line 353
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    if-ne v5, v4, :cond_12

    const-string v4, "bluetooth_eir_manufacture"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x38f

    if-ne v1, v4, :cond_12

    .line 354
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_car:I

    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 357
    :cond_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteEirManuFactureData()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 358
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteEirManuFactureData()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    if-ne v5, v4, :cond_12

    const-string v4, "8f 03"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 360
    new-instance p1, Landroid/util/Pair;

    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_car_unbond:I

    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 325
    :cond_7
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_8

    .line 327
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_hearing_aid:I

    goto :goto_3

    :cond_8
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_hearingaid_unbond:I

    .line 326
    :goto_3
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 315
    :cond_9
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_a

    .line 319
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_imaging_bonded:I

    goto :goto_4

    :cond_a
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_imaging:I

    .line 316
    :goto_4
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 302
    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v1, 0x51c

    if-ne p1, v1, :cond_d

    .line 303
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_c

    .line 304
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_digital_pen_bonded:I

    goto :goto_5

    :cond_c
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_digital_pen:I

    :goto_5
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 306
    :cond_d
    new-instance p1, Landroid/util/Pair;

    .line 309
    invoke-static {v0, p2}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 293
    :cond_e
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_f

    .line 297
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone_bonded:I

    goto :goto_6

    :cond_f
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    .line 294
    :goto_6
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 286
    :cond_10
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_11

    .line 289
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_laptop_bonded:I

    goto :goto_7

    :cond_11
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    .line 286
    :goto_7
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 290
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 368
    :cond_12
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 370
    invoke-interface {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 372
    instance-of v5, v1, Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v5, :cond_14

    .line 373
    invoke-static {v0, p2}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v4

    goto :goto_8

    .line 374
    :cond_14
    instance-of v5, v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v5, :cond_15

    .line 375
    check-cast v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v4

    goto :goto_8

    .line 376
    :cond_15
    instance-of v5, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v5, :cond_16

    .line 377
    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v4

    goto :goto_8

    .line 378
    :cond_16
    instance-of v5, v1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v5, :cond_17

    .line 379
    check-cast v1, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/PanProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v4

    goto :goto_8

    .line 380
    :cond_17
    instance-of v5, v1, Lcom/android/settingslib/bluetooth/DunServerProfile;

    if-eqz v5, :cond_18

    .line 381
    check-cast v1, Lcom/android/settingslib/bluetooth/DunServerProfile;

    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/DunServerProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v4

    :cond_18
    :goto_8
    if-eqz v4, :cond_13

    .line 385
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_19
    if-eqz v0, :cond_1d

    .line 389
    invoke-static {v0, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 390
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_1a

    .line 394
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp_bonded:I

    goto :goto_9

    :cond_1a
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 391
    :goto_9
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1b
    const/4 p1, 0x1

    .line 397
    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 398
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_1c

    .line 402
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp_bonded:I

    goto :goto_a

    :cond_1c
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    .line 399
    :goto_a
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 403
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 406
    :cond_1d
    new-instance p1, Landroid/util/Pair;

    if-eqz p2, :cond_1e

    .line 410
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth_bonded:I

    goto :goto_b

    :cond_1e
    sget p2, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth:I

    .line 407
    :goto_b
    invoke-static {p0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 411
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getBtDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothUtils"

    .line 558
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 560
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$dimen;->bt_nearby_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 566
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    .line 567
    invoke-static {p1, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take persistable permission for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 577
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    .line 580
    invoke-static {p0, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 582
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 583
    new-instance p0, Landroid/util/Pair;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get permission for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get drawable for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    :cond_0
    :goto_1
    new-instance p0, Landroid/util/Pair;

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 514
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 517
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 518
    new-instance p0, Landroid/util/Pair;

    new-instance p1, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 519
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 524
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result p1

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 529
    :goto_0
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 66
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 68
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 70
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return p0
.end method

.method public static getControlUriMetaData(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x19

    .line 817
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEARABLE_CONTROL_SLICE_WITH_WIDTH"

    .line 818
    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->extraTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 784
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 789
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 766
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 770
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static getTagEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 843
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "</%s>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTagStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 839
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "<%s>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;
    .locals 0

    .line 803
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 807
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 604
    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedHeaderEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 607
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x11

    .line 611
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Untethered Headset"

    .line 613
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Watch"

    .line 614
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Default"

    .line 615
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Stylus"

    .line 616
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 617
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdvancedDetailsHeader: deviceType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isAdvancedHeaderEnabled()Z
    .locals 3

    const-string/jumbo v0, "settings_ui"

    const-string v1, "bt_advanced_header_enabled"

    const/4 v2, 0x1

    .line 663
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothUtils"

    const-string v1, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public static isDeviceClassMatched(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    .line 657
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 658
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x6

    .line 673
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BluetoothUtils"

    const-string v0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 674
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;)V
    .locals 0

    .line 85
    sput-object p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 79
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
