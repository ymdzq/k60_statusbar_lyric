.class public final Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;
.super Ljava/lang/Object;
.source "MiuiPhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HardKeyboardDeviceInfo"
.end annotation


# instance fields
.field public final mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field public final mDeviceName:Ljava/lang/String;

.field public final mLayoutLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 376
    iput-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 377
    iput-object p3, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 385
    :cond_1
    instance-of v2, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    if-nez v2, :cond_2

    return v1

    .line 387
    :cond_2
    check-cast p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 388
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 391
    :cond_3
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v3, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 394
    :cond_4
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method
