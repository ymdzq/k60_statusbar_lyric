.class public Lcom/android/systemui/statusbar/phone/TapAgainView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TapAgainView;->updateColor()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object v1

    .line 11
    const v2, 0x7f060739    # @color/notif_pill_text '@color/material_dynamic_neutral10'

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 28
    move-result-object v1

    .line 31
    const v2, 0x7f08178b    # @drawable/rounded_bg_full 'res/drawable/rounded_bg_full.xml'

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
    .line 42
.end method
