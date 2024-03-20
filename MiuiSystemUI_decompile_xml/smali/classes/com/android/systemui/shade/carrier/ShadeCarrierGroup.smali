.class public Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getCarrier1View()Lcom/android/systemui/shade/carrier/ShadeCarrier;
    .locals 1

    .line 1
    const v0, 0x7f0a01c8    # @id/carrier1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 9
    return-object p0
    .line 11
.end method

.method public getCarrier2View()Lcom/android/systemui/shade/carrier/ShadeCarrier;
    .locals 1

    .line 1
    const v0, 0x7f0a01c9    # @id/carrier2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 9
    return-object p0
    .line 11
.end method

.method public getCarrier3View()Lcom/android/systemui/shade/carrier/ShadeCarrier;
    .locals 1

    .line 1
    const v0, 0x7f0a01ca    # @id/carrier3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 9
    return-object p0
    .line 11
.end method

.method public getCarrierDivider1()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a086d    # @id/shade_carrier_divider1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public getCarrierDivider2()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a086e    # @id/shade_carrier_divider2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public getNoSimTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    const v0, 0x7f0a0697    # @id/no_carrier_text

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/TextView;

    .line 9
    return-object p0
    .line 11
.end method
