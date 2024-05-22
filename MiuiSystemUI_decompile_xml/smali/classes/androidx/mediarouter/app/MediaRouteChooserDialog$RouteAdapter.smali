.class public final Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field public final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field public final mTvIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 15
    const v1, 0x7f0404f3    # @attr/mediaRouteSpeakerIconDrawable

    .line 16
    const v2, 0x7f0404f2    # @attr/mediaRouteSpeakerGroupIconDrawable

    .line 19
    const v3, 0x7f0404ed    # @attr/mediaRouteDefaultIconDrawable

    .line 22
    const v4, 0x7f0404f6    # @attr/mediaRouteTvIconDrawable

    .line 25
    filled-new-array {v3, v4, v1, v2}, [I

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 32
    move-result-object p2

    .line 35
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 36
    move-result v1

    .line 39
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v1

    .line 43
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v1

    .line 50
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object v1

    .line 54
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v1, 0x2

    .line 57
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    move-result v1

    .line 61
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v1, 0x3

    .line 68
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 69
    move-result v0

    .line 72
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object p1

    .line 76
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
    .line 82
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    const v1, 0x7f0d0250    # @layout/mr_chooser_list_item 'res/layout/mr_chooser_list_item.xml'

    .line 7
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 18
    const p3, 0x7f0a0639    # @id/mr_chooser_route_name

    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 26
    check-cast p3, Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0a0637    # @id/mr_chooser_route_desc

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/TextView;

    .line 36
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 43
    iget v3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 45
    const/4 v4, 0x2

    .line 47
    const/4 v5, 0x1

    .line 48
    if-eq v3, v4, :cond_2

    .line 49
    if-ne v3, v5, :cond_1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    move v3, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    move v3, v5

    .line 56
    :goto_1
    if-eqz v3, :cond_3

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    const/16 v3, 0x50

    .line 65
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    goto :goto_2

    .line 76
    :cond_3
    const/16 v0, 0x10

    .line 77
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    const/16 p3, 0x8

    .line 82
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    const-string p3, ""

    .line 87
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_2
    iget-boolean p3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    const p3, 0x7f0a0638    # @id/mr_chooser_route_icon

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object p3

    .line 103
    check-cast p3, Landroid/widget/ImageView;

    .line 104
    if-eqz p3, :cond_8

    .line 106
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 108
    if-eqz v0, :cond_4

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 120
    move-result-object v1

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    goto :goto_4

    .line 131
    :catch_0
    move-exception v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "Failed to load "

    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 146
    const-string v2, "MediaRouteChooserDialog"

    .line 147
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_4
    iget v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 152
    if-eq v0, v5, :cond_7

    .line 154
    if-eq v0, v4, :cond_6

    .line 156
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 158
    move-result p1

    .line 161
    if-eqz p1, :cond_5

    .line 162
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    goto :goto_3

    .line 166
    :cond_5
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    goto :goto_3

    .line 169
    :cond_6
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    goto :goto_3

    .line 172
    :cond_7
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    :goto_3
    move-object v0, p0

    .line 175
    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_8
    return-object p2
    .line 179
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 6
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 8
    return p0
    .line 10
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 6
    iget-boolean p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 8
    if-eqz p1, :cond_1

    .line 10
    const p1, 0x7f0a0638    # @id/mr_chooser_route_icon

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/ImageView;

    .line 19
    const p3, 0x7f0a063a    # @id/mr_chooser_route_progress_bar

    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 27
    check-cast p2, Landroid/widget/ProgressBar;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    if-eqz p2, :cond_0

    .line 32
    const/16 p3, 0x8

    .line 34
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method
