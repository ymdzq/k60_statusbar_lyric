.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsage;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public dataUsage:Landroid/widget/TextView;

.field public pieImage:Landroid/widget/ImageView;

.field public purchase:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->dataUsage:Landroid/widget/TextView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->purchase:Landroid/widget/TextView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0705    # @id/pie

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->pieImage:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a0285    # @id/data_usage

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->setDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V

    .line 25
    const v0, 0x7f0a0284    # @id/data_purchase

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->setPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->getPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 40
    move-result-object p0

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    return-void
    .line 48
.end method

.method public final setDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->dataUsage:Landroid/widget/TextView;

    return-void
.end method

.method public final setDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->pieImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->getDataUsage$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->getPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    move-result-object p0

    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final setPurchase$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;->purchase:Landroid/widget/TextView;

    .line 2
    return-void
    .line 4
.end method
