.class public final Lcom/miui/keyguard/biometrics/fod/item/AlipayScanItem;
.super Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/ImageView;

    .line 5
    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/item/AlipayScanItem;->mView:Landroid/widget/ImageView;

    .line 10
    const p0, 0x7f080e9a    # @drawable/gxzw_quick_open_alipay_scan 'res/drawable/gxzw_quick_open_alipay_scan.webp'

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v0, "android.intent.action.VIEW"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 12
    const-string v1, "com.eg.android.AlipayGphone"

    .line 14
    const-string v2, "com.alipay.mobile.scan.as.main.MainCaptureActivity"

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    const/high16 v0, 0x14800000

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    new-instance v0, Landroid/os/Bundle;

    .line 29
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string v1, "app_id"

    .line 34
    const-string v2, "10000007"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    .line 41
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string/jumbo v3, "source"

    .line 46
    const-string/jumbo v4, "shortcut"

    .line 49
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "appId"

    .line 55
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "REALLY_STARTAPP"

    .line 60
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v2, "showOthers"

    .line 66
    const-string v5, "YES"

    .line 69
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "startFromExternal"

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v2, "REALLY_DOSTARTAPP"

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v2, "sourceId"

    .line 85
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "ap_framework_sceneId"

    .line 91
    const-string v3, "20000001"

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "mExtras"

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    return-object p0
    .line 106
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304e8    # @string/gxzw_quick_open_alipay_scan_sub 'Alipay'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Alipay/Scanner"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304e7    # @string/gxzw_quick_open_alipay_scan 'Scanner'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/AlipayScanItem;->mView:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method
