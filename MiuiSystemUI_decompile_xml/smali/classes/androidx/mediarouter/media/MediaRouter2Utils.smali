.class public abstract Landroidx/mediarouter/media/MediaRouter2Utils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getRouteIds(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 29
    if-nez v1, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    return-object v0
    .line 42
.end method

.method public static toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 6
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 12
    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 19
    invoke-direct {v1, v2, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    .line 23
    move-result v2

    .line 26
    const-string v3, "connectionState"

    .line 27
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 29
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    .line 34
    move-result v2

    .line 37
    const-string/jumbo v3, "volumeHandling"

    .line 38
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    .line 44
    move-result v2

    .line 47
    const-string/jumbo v3, "volumeMax"

    .line 48
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolume()I

    .line 54
    move-result v2

    .line 57
    const-string/jumbo v3, "volume"

    .line 58
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    .line 64
    move-result-object v2

    .line 67
    const-string v3, "extras"

    .line 68
    if-nez v2, :cond_1

    .line 70
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    .line 76
    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    :goto_0
    const-string v2, "enabled"

    .line 84
    const/4 v5, 0x1

    .line 86
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v2, "canDisconnect"

    .line 90
    const/4 v6, 0x0

    .line 92
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDescription()Ljava/lang/CharSequence;

    .line 96
    move-result-object v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 105
    const-string/jumbo v7, "status"

    .line 106
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getIconUri()Landroid/net/Uri;

    .line 112
    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 121
    const-string v7, "iconUri"

    .line 122
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    .line 127
    move-result-object p0

    .line 130
    if-eqz p0, :cond_7

    .line 131
    const-string v2, "androidx.mediarouter.media.KEY_EXTRAS"

    .line 133
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 135
    move-result v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    const-string v7, "androidx.mediarouter.media.KEY_DEVICE_TYPE"

    .line 141
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 143
    move-result v8

    .line 146
    if-eqz v8, :cond_7

    .line 147
    const-string v8, "androidx.mediarouter.media.KEY_CONTROL_FILTERS"

    .line 149
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 151
    move-result v9

    .line 154
    if-nez v9, :cond_4

    .line 155
    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 158
    move-result-object v2

    .line 161
    if-nez v2, :cond_5

    .line 162
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    goto :goto_1

    .line 167
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .line 168
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    :goto_1
    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 176
    move-result v0

    .line 179
    const-string v2, "deviceType"

    .line 180
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v0, "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"

    .line 185
    invoke-virtual {p0, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 187
    move-result v0

    .line 190
    const-string v2, "playbackType"

    .line 191
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 196
    move-result-object p0

    .line 199
    if-eqz p0, :cond_6

    .line 200
    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)V

    .line 202
    :cond_6
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 205
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :cond_7
    :goto_2
    return-object v0
    .line 210
.end method
