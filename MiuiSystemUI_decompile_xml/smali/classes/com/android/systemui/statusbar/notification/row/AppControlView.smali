.class public final Lcom/android/systemui/statusbar/notification/row/AppControlView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public channelName:Landroid/widget/TextView;

.field public iconView:Landroid/widget/ImageView;

.field public switch:Landroid/widget/Switch;


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
.method public final getChannelName()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->channelName:Landroid/widget/TextView;

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

.method public final getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->iconView:Landroid/widget/ImageView;

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

.method public final getSwitch()Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->switch:Landroid/widget/Switch;

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
    const v0, 0x7f0a0412    # @id/icon

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->setIconView(Landroid/widget/ImageView;)V

    .line 11
    const v0, 0x7f0a00cf    # @id/app_name

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->setChannelName(Landroid/widget/TextView;)V

    .line 23
    const v0, 0x7f0a09ad    # @id/toggle

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Switch;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->setSwitch(Landroid/widget/Switch;)V

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/AppControlView$onFinishInflate$1;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/AppControlView$onFinishInflate$1;-><init>(Lcom/android/systemui/statusbar/notification/row/AppControlView;)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
    .line 46
.end method

.method public final setChannelName(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->channelName:Landroid/widget/TextView;

    .line 2
    return-void
    .line 4
.end method

.method public final setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->iconView:Landroid/widget/ImageView;

    .line 2
    return-void
    .line 4
.end method

.method public final setSwitch(Landroid/widget/Switch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView;->switch:Landroid/widget/Switch;

    .line 2
    return-void
    .line 4
.end method
