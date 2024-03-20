.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->$r8$classId:I

    .line 2
    const-string v1, "MediaRouter"

    .line 4
    const-string v2, "There is no currently selected dynamic group route."

    .line 6
    const-string/jumbo v3, "route must not be null"

    .line 8
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    goto/16 :goto_4

    .line 17
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    .line 21
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 23
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 25
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 27
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    if-eqz p1, :cond_4

    .line 34
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 36
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 39
    move-result-object v0

    .line 42
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 43
    instance-of v3, v3, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 45
    if-eqz v3, :cond_3

    .line 47
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 49
    invoke-virtual {v2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 51
    move-result-object v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 57
    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 59
    if-eqz v2, :cond_0

    .line 61
    iget-boolean v2, v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsTransferable:Z

    .line 63
    if-eqz v2, :cond_0

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    move v6, v5

    .line 68
    :goto_0
    if-nez v6, :cond_1

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 72
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 74
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onUpdateMemberRoutes(Ljava/util/List;)V

    .line 82
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    const-string p1, "Ignoring attempt to transfer to a non-transferable route."

    .line 86
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_2
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 91
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    .line 93
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 95
    const/4 v0, 0x4

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 101
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    .line 103
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 105
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    return-void

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 111
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0

    .line 116
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 117
    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p0

    .line 122
    :pswitch_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 123
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 125
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 127
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 129
    if-eqz v1, :cond_5

    .line 131
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;

    .line 133
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 138
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 140
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 142
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 144
    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 148
    move-result p1

    .line 151
    xor-int/2addr p1, v6

    .line 152
    if-eqz p1, :cond_6

    .line 153
    goto :goto_3

    .line 155
    :cond_6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 156
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 158
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 160
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUnmutedVolumeMap:Ljava/util/Map;

    .line 162
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 164
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 166
    check-cast v1, Ljava/util/HashMap;

    .line 168
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Integer;

    .line 174
    if-nez v0, :cond_7

    .line 176
    move v5, v6

    .line 178
    goto :goto_3

    .line 179
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v0

    .line 183
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 184
    move-result v5

    .line 187
    :goto_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 188
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 190
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 192
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 195
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 197
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 199
    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 201
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 204
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 206
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 208
    invoke-virtual {p1, v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 210
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 213
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 215
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 217
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;

    .line 219
    const-wide/16 v0, 0x1f4

    .line 221
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    return-void

    .line 226
    :goto_4
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 227
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 229
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 231
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    .line 233
    move-result p1

    .line 236
    xor-int/2addr p1, v6

    .line 237
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 238
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 240
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 242
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 244
    move-result v0

    .line 247
    if-eqz p1, :cond_c

    .line 248
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 250
    check-cast v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 252
    iget-object v8, v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 254
    iget-object v8, v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 256
    iget-object v8, v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 258
    iget-object v7, v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 260
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    if-eqz v7, :cond_b

    .line 265
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 267
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 270
    move-result-object v3

    .line 273
    iget-object v8, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 274
    instance-of v8, v8, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 276
    if-eqz v8, :cond_a

    .line 278
    iget-object v2, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 280
    invoke-virtual {v2, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 282
    move-result-object v2

    .line 285
    iget-object v8, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 286
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 288
    move-result-object v8

    .line 291
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 292
    move-result v8

    .line 295
    if-nez v8, :cond_9

    .line 296
    if-eqz v2, :cond_9

    .line 298
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->isGroupable()Z

    .line 300
    move-result v2

    .line 303
    if-nez v2, :cond_8

    .line 304
    goto :goto_5

    .line 306
    :cond_8
    iget-object v1, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 307
    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 309
    iget-object v2, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onAddMemberRoute(Ljava/lang/String;)V

    .line 313
    goto/16 :goto_9

    .line 316
    :cond_9
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    const-string v3, "Ignoring attempt to add a non-groupable route to dynamic group : "

    .line 320
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    goto/16 :goto_9

    .line 335
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 337
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    throw p0

    .line 342
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 343
    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 345
    throw p0

    .line 348
    :cond_c
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 349
    check-cast v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 351
    iget-object v8, v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 353
    iget-object v8, v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 355
    iget-object v8, v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 357
    iget-object v7, v7, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 359
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    if-eqz v7, :cond_1e

    .line 364
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 366
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 369
    move-result-object v3

    .line 372
    iget-object v8, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 373
    instance-of v8, v8, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 375
    if-eqz v8, :cond_1d

    .line 377
    iget-object v2, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 379
    invoke-virtual {v2, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 381
    move-result-object v2

    .line 384
    iget-object v8, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 385
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 387
    move-result-object v8

    .line 390
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 391
    move-result v8

    .line 394
    if-eqz v8, :cond_11

    .line 395
    if-eqz v2, :cond_11

    .line 397
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 399
    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 401
    if-eqz v2, :cond_e

    .line 403
    iget-boolean v2, v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    .line 405
    if-eqz v2, :cond_d

    .line 407
    goto :goto_6

    .line 409
    :cond_d
    move v2, v5

    .line 410
    goto :goto_7

    .line 411
    :cond_e
    :goto_6
    move v2, v6

    .line 412
    :goto_7
    if-nez v2, :cond_f

    .line 413
    goto :goto_8

    .line 415
    :cond_f
    iget-object v2, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 416
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 418
    move-result-object v2

    .line 421
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 422
    move-result v2

    .line 425
    if-gt v2, v6, :cond_10

    .line 426
    const-string v2, "Ignoring attempt to remove the last member route."

    .line 428
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    goto :goto_9

    .line 433
    :cond_10
    iget-object v1, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 434
    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 436
    iget-object v2, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 438
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onRemoveMemberRoute(Ljava/lang/String;)V

    .line 440
    goto :goto_9

    .line 443
    :cond_11
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 444
    const-string v3, "Ignoring attempt to remove a non-unselectable member route : "

    .line 446
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v2

    .line 457
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 461
    check-cast v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 463
    xor-int/lit8 v2, v0, 0x1

    .line 465
    invoke-virtual {v1, p1, v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->showSelectingProgress(ZZ)V

    .line 467
    if-eqz v0, :cond_13

    .line 470
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 472
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 474
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 476
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 478
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 480
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 482
    move-result-object v0

    .line 485
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 486
    check-cast v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 488
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 490
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 492
    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    move-result-object v1

    .line 499
    :cond_12
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    move-result v2

    .line 503
    if-eqz v2, :cond_13

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    move-result-object v2

    .line 509
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 510
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 512
    move-result v3

    .line 515
    if-eq v3, p1, :cond_12

    .line 516
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 518
    check-cast v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 520
    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 522
    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 524
    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 526
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 528
    check-cast v3, Ljava/util/HashMap;

    .line 530
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-result-object v2

    .line 535
    check-cast v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 536
    instance-of v3, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 538
    if-eqz v3, :cond_12

    .line 540
    check-cast v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 542
    invoke-virtual {v2, p1, v6}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->showSelectingProgress(ZZ)V

    .line 544
    goto :goto_a

    .line 547
    :cond_13
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 548
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 550
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 552
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 554
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 556
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 558
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 560
    move-result-object v2

    .line 563
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 564
    move-result v3

    .line 567
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 568
    move-result v3

    .line 571
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 572
    move-result v7

    .line 575
    const/4 v8, -0x1

    .line 576
    if-eqz v7, :cond_16

    .line 577
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 579
    move-result-object p0

    .line 582
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 583
    move-result-object p0

    .line 586
    :cond_14
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    move-result v7

    .line 590
    if-eqz v7, :cond_18

    .line 591
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    move-result-object v7

    .line 596
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 597
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 599
    move-result v7

    .line 602
    if-eq v7, p1, :cond_14

    .line 603
    if-eqz p1, :cond_15

    .line 605
    move v7, v6

    .line 607
    goto :goto_c

    .line 608
    :cond_15
    move v7, v8

    .line 609
    :goto_c
    add-int/2addr v3, v7

    .line 610
    goto :goto_b

    .line 611
    :cond_16
    if-eqz p1, :cond_17

    .line 612
    move v8, v6

    .line 614
    :cond_17
    add-int/2addr v3, v8

    .line 615
    :cond_18
    iget-object p0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 616
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mEnableGroupVolumeUX:Z

    .line 618
    if-eqz p1, :cond_19

    .line 620
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 622
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 624
    move-result-object p0

    .line 627
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 628
    move-result p0

    .line 631
    if-le p0, v6, :cond_19

    .line 632
    move p0, v6

    .line 634
    goto :goto_d

    .line 635
    :cond_19
    move p0, v5

    .line 636
    :goto_d
    iget-boolean p1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mEnableGroupVolumeUX:Z

    .line 637
    if-eqz p1, :cond_1a

    .line 639
    if-lt v3, v4, :cond_1a

    .line 641
    goto :goto_e

    .line 643
    :cond_1a
    move v6, v5

    .line 644
    :goto_e
    if-eq p0, v6, :cond_1c

    .line 645
    iget-object p0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 647
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 649
    move-result-object p0

    .line 652
    instance-of p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    .line 653
    if-eqz p1, :cond_1c

    .line 655
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    .line 657
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 659
    if-eqz v6, :cond_1b

    .line 661
    iget v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->mExpandedHeight:I

    .line 663
    :cond_1b
    invoke-virtual {v0, v5, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->animateLayoutHeight(ILandroid/view/View;)V

    .line 665
    :cond_1c
    return-void

    .line 668
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 669
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 671
    throw p0

    .line 674
    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    .line 675
    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 677
    throw p0

    .line 680
    nop

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 682
.end method
