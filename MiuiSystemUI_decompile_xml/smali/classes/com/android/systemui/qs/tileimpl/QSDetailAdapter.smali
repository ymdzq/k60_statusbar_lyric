.class public abstract Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getBackgroundBlendColors()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f03006d    # @array/control_center_detail_background_blend_colors

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f0600a9    # @color/control_center_detail_background_color '#bd1a1a1a'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final getButtonBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f0600aa    # @color/control_center_detail_button_background_color 'res/color/control_center_detail_button_background_color.xml'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getButtonTextColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f0600ad    # @color/control_center_detail_button_text_color '#ffffff'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final getTitleTextColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f0600c1    # @color/control_center_detail_title_text_color '#ccffffff'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method
