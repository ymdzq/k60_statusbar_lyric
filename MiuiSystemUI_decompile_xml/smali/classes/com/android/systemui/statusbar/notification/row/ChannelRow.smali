.class public final Lcom/android/systemui/statusbar/notification/row/ChannelRow;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public channel:Landroid/app/NotificationChannel;

.field public channelDescription:Landroid/widget/TextView;

.field public channelName:Landroid/widget/TextView;

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field public gentle:Z

.field public final highlightColor:I

.field public switch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const v0, 0x101042c    # @android:attr/colorControlHighlight

    .line 10
    invoke-static {p1, v0, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->highlightColor:I

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final getChannel()Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

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

.method public final getGentle()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a01dd    # @id/channel_name

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a01dc    # @id/channel_description

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a09ad    # @id/toggle

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/Switch;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    .line 36
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$2;

    .line 46
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
    .line 54
.end method

.method public final setChannel(Landroid/app/NotificationChannel;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 7
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v0

    .line 12
    :goto_0
    const/16 v1, -0x3e8

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    const/4 v1, 0x3

    .line 18
    if-ge p1, v1, :cond_1

    .line 19
    move p1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p1, v0

    .line 23
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    .line 26
    if-nez p1, :cond_2

    .line 28
    goto/16 :goto_6

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    .line 32
    const/4 v3, 0x0

    .line 34
    if-nez v1, :cond_3

    .line 35
    move-object v1, v3

    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 38
    move-result-object v4

    .line 41
    const-string v5, ""

    .line 42
    if-nez v4, :cond_4

    .line 44
    move-object v4, v5

    .line 46
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    if-eqz v1, :cond_7

    .line 54
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 56
    if-nez v4, :cond_5

    .line 58
    move-object v4, v3

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 61
    move-result-object v6

    .line 64
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    .line 65
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/CharSequence;

    .line 71
    if-nez v1, :cond_6

    .line 73
    goto :goto_2

    .line 75
    :cond_6
    move-object v5, v1

    .line 76
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    if-eqz v1, :cond_b

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 86
    if-nez v1, :cond_8

    .line 88
    move-object v1, v3

    .line 90
    :cond_8
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 91
    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v1

    .line 98
    if-eqz v1, :cond_9

    .line 99
    goto :goto_3

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 102
    if-nez v1, :cond_a

    .line 104
    move-object v1, v3

    .line 106
    :cond_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    goto :goto_4

    .line 110
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 111
    if-nez v1, :cond_c

    .line 113
    move-object v1, v3

    .line 115
    :cond_c
    const/16 v4, 0x8

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    .line 121
    if-nez p0, :cond_d

    .line 123
    goto :goto_5

    .line 125
    :cond_d
    move-object v3, p0

    .line 126
    :goto_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 127
    move-result p0

    .line 130
    if-eqz p0, :cond_e

    .line 131
    move v0, v2

    .line 133
    :cond_e
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    :goto_6
    return-void
    .line 137
.end method

.method public final setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2
    return-void
    .line 4
.end method

.method public final setGentle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    .line 2
    return-void
    .line 4
.end method
