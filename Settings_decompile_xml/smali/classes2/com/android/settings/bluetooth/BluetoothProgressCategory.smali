.class public Lcom/android/settings/bluetooth/BluetoothProgressCategory;
.super Lcom/android/settings/MiuiProgressCategory;
.source "BluetoothProgressCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiProgressCategory;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/MiuiProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 55
    sget v0, Lcom/android/settings/R$string;->bluetooth_no_devices_found:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiProgressCategory;->setEmptyTextRes(I)V

    return-void
.end method
