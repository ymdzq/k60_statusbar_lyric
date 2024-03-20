.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public final channelRows:Ljava/util/List;

.field public channels:Ljava/util/List;

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getChannels()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

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
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a00c8    # @id/app_control

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 14
    return-void
    .line 16
.end method

.method public final setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    return-void
    .line 4
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public final setChannels(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateRows()V

    .line 4
    return-void
    .line 7
.end method

.method public final setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2
    return-void
    .line 4
.end method

.method public final updateRows()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 6
    new-instance v1, Landroid/transition/AutoTransition;

    .line 8
    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    .line 10
    const-wide/16 v2, 0xc8

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 15
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;

    .line 18
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    .line 20
    invoke-virtual {v1, v2}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 23
    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 47
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    .line 53
    check-cast v1, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 60
    const/4 v2, 0x0

    .line 62
    if-nez v1, :cond_1

    .line 63
    move-object v1, v2

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getIconView()Landroid/widget/ImageView;

    .line 66
    move-result-object v1

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 75
    if-nez v1, :cond_2

    .line 77
    move-object v1, v2

    .line 79
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getChannelName()Landroid/widget/TextView;

    .line 80
    move-result-object v1

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    .line 92
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 97
    const v5, 0x7f130872    # @string/notification_channel_dialog_title 'All %1$s notifications'

    .line 98
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 108
    if-nez v1, :cond_3

    .line 110
    move-object v1, v2

    .line 112
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getSwitch()Landroid/widget/Switch;

    .line 113
    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 120
    if-nez v1, :cond_4

    .line 122
    move-object v1, v2

    .line 124
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getSwitch()Landroid/widget/Switch;

    .line 125
    move-result-object v1

    .line 128
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;

    .line 129
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 143
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 152
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v3

    .line 156
    if-eqz v3, :cond_5

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 162
    check-cast v3, Landroid/app/NotificationChannel;

    .line 163
    const v4, 0x7f0d027f    # @layout/notif_half_shelf_row 'res/layout/notif_half_shelf_row.xml'

    .line 165
    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    move-result-object v4

    .line 171
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 174
    move-result-object v5

    .line 177
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    .line 178
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->setChannel(Landroid/app/NotificationChannel;)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    .line 184
    check-cast v3, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    goto :goto_1

    .line 194
    :cond_5
    return-void
    .line 195
.end method
