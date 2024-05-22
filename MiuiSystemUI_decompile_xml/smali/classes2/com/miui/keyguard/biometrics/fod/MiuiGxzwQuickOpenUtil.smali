.class public abstract Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_ITEM_ID_LIST:[I

.field public static final SUPPORT_QUICK_OPEN:Z

.field public static sShowQuickOpenPressCount:I

.field public static sShowQuickOpenSlideTime:J

.field public static sShowQuickOpenTeachValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    sput-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/16 v0, 0x3ef

    .line 10
    const/16 v1, 0x3f0

    .line 12
    const/16 v2, 0x3ee

    .line 14
    filled-new-array {v2, v0, v1}, [I

    .line 16
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x3ed

    .line 21
    const/16 v1, 0x3ec

    .line 23
    const/16 v2, 0x3e9

    .line 25
    const/16 v3, 0x3ea

    .line 27
    const/16 v4, 0x3eb

    .line 29
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 31
    move-result-object v0

    .line 34
    :goto_0
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->DEFAULT_ITEM_ID_LIST:[I

    .line 35
    const/4 v0, -0x1

    .line 37
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenPressCount:I

    .line 38
    const-wide/16 v1, -0x1

    .line 40
    sput-wide v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 42
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 44
    return-void
    .line 46
.end method

.method public static generateQuickOpenItem(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;I)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 7
    throw p0

    .line 10
    :pswitch_0
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/AddEventItem;

    .line 11
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/AddEventItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 13
    return-object p3

    .line 16
    :pswitch_1
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/SearchItem;

    .line 17
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/SearchItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 19
    return-object p3

    .line 22
    :pswitch_2
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/QrCodeItem;

    .line 23
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/QrCodeItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 25
    return-object p3

    .line 28
    :pswitch_3
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/AlipayScanItem;

    .line 29
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/AlipayScanItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 31
    return-object p3

    .line 34
    :pswitch_4
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/AlipayPayItem;

    .line 35
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/AlipayPayItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 37
    return-object p3

    .line 40
    :pswitch_5
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;

    .line 41
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 43
    return-object p3

    .line 46
    :pswitch_6
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/WechatScanItem;

    .line 47
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/WechatScanItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 49
    return-object p3

    .line 52
    :pswitch_7
    new-instance p3, Lcom/miui/keyguard/biometrics/fod/item/WechatPayItem;

    .line 53
    invoke-direct {p3, p0, p1, p2}, Lcom/miui/keyguard/biometrics/fod/item/WechatPayItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 55
    return-object p3

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method

.method public static isShowQuickOpenSlide(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    sget-wide v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 8
    const-wide/16 v4, -0x1

    .line 10
    cmp-long v0, v2, v4

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 16
    const-string v0, "quick_open"

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    move-result-object p0

    .line 23
    const-string/jumbo v0, "sp_fod_show_quick_open_slide_time"

    .line 24
    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 27
    move-result-wide v4

    .line 30
    sput-wide v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 31
    :cond_1
    sget-wide v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 33
    cmp-long p0, v4, v2

    .line 35
    if-gtz p0, :cond_2

    .line 37
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1
    .line 40
.end method
