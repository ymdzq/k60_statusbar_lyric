.class public abstract Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/controls/models/player/MediaViewHolder;
    .locals 3

    .line 1
    const v0, 0x7f0d018b    # @layout/media_session_view 'res/layout/media_session_view.xml'

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    const/4 v2, 0x3

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 16
    new-instance v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 19
    invoke-direct {v2, p1}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    iget-object p1, v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    .line 26
    new-instance p1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;

    .line 29
    invoke-direct {p1, p0, v2, v1}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;-><init>(Landroid/view/LayoutInflater;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;I)V

    .line 31
    iget-object v1, v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 36
    new-instance p1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;

    .line 39
    const/4 v1, 0x1

    .line 41
    invoke-direct {p1, p0, v2, v1}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;-><init>(Landroid/view/LayoutInflater;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;I)V

    .line 42
    iget-object v1, v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    new-instance p1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;

    .line 50
    invoke-direct {p1, p0, v2, v0}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion$create$1$1;-><init>(Landroid/view/LayoutInflater;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;I)V

    .line 52
    iget-object p0, v2, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->mediaBg:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 57
    return-object v2
    .line 60
.end method
