.class public final Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;
.super Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TITLE_RES:[I

.field public static sTitleCount:I


# instance fields
.field public final mView:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f1304f4    # @string/gxzw_quick_open_xiaoai_title1 'Say the name of the app you want to open'

    .line 2
    const v1, 0x7f1304f5    # @string/gxzw_quick_open_xiaoai_title2 'Say the name of the feature you want to use'

    .line 5
    filled-new-array {v0, v1}, [I

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->TITLE_RES:[I

    .line 12
    const/4 v0, 0x0

    .line 14
    sput v0, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->sTitleCount:I

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;-><init>(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/ImageView;

    .line 5
    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->mView:Landroid/widget/ImageView;

    .line 10
    const p0, 0x7f080ea0    # @drawable/gxzw_quick_open_xiaoai 'res/drawable/gxzw_quick_open_xiaoai.webp'

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
    .locals 2

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.intent.action.ASSIST"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "com.miui.voiceassist"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string/jumbo v0, "voice_assist_start_from_key"

    .line 14
    const-string v1, "FOD"

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const/high16 v0, 0x14800000

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    return-object p0
    .line 27
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1304f3    # @string/gxzw_quick_open_xiaoai_sub 'Mi AI'

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
    const-string p0, "Mi AI"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->sTitleCount:I

    .line 2
    rem-int/lit8 v0, v0, 0x2

    .line 4
    sget-object v1, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->TITLE_RES:[I

    .line 6
    add-int/lit8 v2, v0, 0x1

    .line 8
    sput v2, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->sTitleCount:I

    .line 10
    aget v0, v1, v0

    .line 12
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;->mView:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method
