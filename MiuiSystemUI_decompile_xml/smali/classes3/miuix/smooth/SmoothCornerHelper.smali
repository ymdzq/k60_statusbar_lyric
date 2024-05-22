.class public abstract Lmiuix/smooth/SmoothCornerHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sEnableSmoothCorner:Z = false

.field public static sIsCommonLiteStrategy:Ljava/lang/Boolean;


# direct methods
.method public static setSmoothCornerEnable()V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_4

    .line 5
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 7
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 15
    move-result v0

    .line 18
    const/4 v3, 0x2

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    move v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, v2

    .line 24
    :goto_1
    if-nez v0, :cond_2

    .line 25
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    :cond_2
    move v2, v1

    .line 39
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v0

    .line 43
    sput-object v0, Lmiuix/smooth/SmoothCornerHelper;->sIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 44
    :cond_4
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    return-void

    .line 54
    :cond_5
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableSmoothCorner:Z

    .line 55
    if-eq v0, v1, :cond_6

    .line 57
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 59
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    invoke-static {v0, v2}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 63
    sput-boolean v1, Lmiuix/smooth/SmoothCornerHelper;->sEnableSmoothCorner:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "setSmoothCornerEnable fail "

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    const-string v1, "SmoothInvokeHelper"

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_6
    :goto_2
    return-void
    .line 89
.end method
