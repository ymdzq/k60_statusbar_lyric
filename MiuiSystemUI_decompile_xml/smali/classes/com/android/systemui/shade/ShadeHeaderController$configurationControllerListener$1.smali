.class public final Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f0704c7    # @dimen/large_screen_shade_header_left_padding '@dimen/qs_horizontal_margin'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 19
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 25
    move-result v2

    .line 28
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 31
    move-result p0

    .line 34
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 35
    return-void
    .line 38
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->clock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    const v1, 0x7f140452    # @style/TextAppearance.QS.Status

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->date:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;->getNoSimTextView()Landroid/widget/TextView;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;->getCarrier1View()Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 26
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 30
    invoke-static {v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;->getCarrier2View()Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 35
    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 39
    invoke-static {v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;->getCarrier3View()Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 44
    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 48
    invoke-static {v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSizeFromStyle(Landroid/widget/TextView;)V

    .line 50
    const v0, 0x7f0a0752    # @id/qqs_header_constraint

    .line 53
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 56
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v3

    .line 69
    const v4, 0x7f17000d    # @xml/qqs_header 'res/xml/qqs_header.xml'

    .line 70
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 73
    move-result-object v3

    .line 76
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 77
    const v0, 0x7f0a0762    # @id/qs_header_constraint

    .line 80
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 83
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v3

    .line 94
    const v4, 0x7f17000e    # @xml/qs_header 'res/xml/qs_header.xml'

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 98
    move-result-object v3

    .line 101
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 102
    const v0, 0x7f0a04b1    # @id/large_screen_header_constraint

    .line 105
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 108
    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object v3

    .line 119
    const v4, 0x7f170002    # @xml/large_screen_shade_header 'res/xml/large_screen_shade_header.xml'

    .line 120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v0

    .line 133
    const v2, 0x7f0704c8    # @dimen/large_screen_shade_header_min_height '@dimen/qs_header_row_min_height'

    .line 134
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    move-result v0

    .line 140
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->lastInsets:Landroid/view/WindowInsets;

    .line 144
    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, v1, v0}, Lcom/android/systemui/shade/ShadeHeaderController;->access$updateConstraintsForInsets(Lcom/android/systemui/shade/ShadeHeaderController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/WindowInsets;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 151
    move-result-object v0

    .line 154
    const v2, 0x7f07102c    # @dimen/rounded_corner_content_padding '@android:dimen/select_dialog_drawable_padding_start_material'

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 161
    move-result-object v0

    .line 164
    const v2, 0x7f070fdc    # @dimen/qs_panel_padding '16.0dp'

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    move-result v0

    .line 171
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 172
    move-result v2

    .line 175
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 176
    move-result v3

    .line 179
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateQQSPaddings()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/shade/QsBatteryModeController;->updateResources()V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateCarrierGroupPadding()V

    .line 191
    return-void
    .line 194
.end method
