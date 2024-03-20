.class public final Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $inflater:Landroid/view/LayoutInflater;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroid/view/LayoutInflater;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$inflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$this_apply:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 6
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$inflater:Landroid/view/LayoutInflater;

    .line 9
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    const v2, 0x7f070777    # @dimen/media_app_icon_bg_radius '4.8dp'

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    move-result v8

    .line 25
    if-eqz p1, :cond_0

    .line 26
    if-eqz p2, :cond_0

    .line 28
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v6

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v7

    .line 39
    move-object v3, p2

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$this_apply:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 48
    return-void

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$inflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v0

    .line 61
    const v2, 0x7f070094    # @dimen/album_art_bg_radius '8.0dp'

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    move-result v8

    .line 68
    if-eqz p1, :cond_1

    .line 69
    if-eqz p2, :cond_1

    .line 71
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 75
    move-result v6

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 79
    move-result v7

    .line 82
    move-object v3, p2

    .line 83
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$this_apply:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 87
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 91
    return-void

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$inflater:Landroid/view/LayoutInflater;

    .line 95
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v0

    .line 104
    const v2, 0x7f070785    # @dimen/media_control_bg_radius '20.0dp'

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 108
    move-result v8

    .line 111
    if-eqz p1, :cond_2

    .line 112
    if-eqz p2, :cond_2

    .line 114
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 118
    move-result v6

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 122
    move-result v7

    .line 125
    move-object v3, p2

    .line 126
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;->$this_apply:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->mediaBg:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 132
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 134
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 138
.end method
