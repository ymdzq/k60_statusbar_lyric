.class public final Lcom/miui/keyguard/biometrics/fod/item/AlipayPayItem;
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
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/item/AlipayPayItem;->mView:Landroid/widget/ImageView;

    .line 10
    const p0, 0x7f080e99    # @drawable/gxzw_quick_open_alipay_pay 'res/drawable/gxzw_quick_open_alipay_pay.webp'

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
    .locals 3

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    .line 7
    const-string v1, "com.eg.android.AlipayGphone"

    .line 9
    const-string v2, "com.eg.android.AlipayGphone.FastStartActivity"

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    const-string v0, "android.intent.action.VIEW"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v0, 0x14800000

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    const-string v0, "alipayss://platformapi/startapp?appId=20000056&source=shortcut"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    return-object p0
    .line 38
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304e6    # @string/gxzw_quick_open_alipay_pay_sub 'Alipay'

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
    const-string p0, "Alipay/Payment code"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304e5    # @string/gxzw_quick_open_alipay_pay 'Payment code'

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
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/AlipayPayItem;->mView:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method
