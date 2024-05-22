.class public final Lcom/android/systemui/media/dialog/MediaOutputAdapter;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mMediaItemList:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaOutputAdapter"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 10
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getItemId(I)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    const-string p0, "Incorrect position for item id: "

    .line 13
    const-string v0, "MediaOutputAdapter"

    .line 15
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    int-to-long p0, p1

    .line 20
    return-wide p0

    .line 21
    :cond_0
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/media/dialog/MediaItem;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 30
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 38
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/settingslib/media/MediaDevice;

    .line 44
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 50
    move-result p0

    .line 53
    int-to-long p0, p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    int-to-long p0, p1

    .line 56
    :goto_0
    return-wide p0
    .line 57
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    const-string p0, "Incorrect position for item type: "

    .line 13
    const-string v0, "MediaOutputAdapter"

    .line 15
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/media/dialog/MediaItem;

    .line 28
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    .line 30
    return p0
    .line 32
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 6
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    const-string v3, "Incorrect position: "

    .line 14
    const-string v4, "MediaOutputAdapter"

    .line 16
    if-lt v1, v2, :cond_1

    .line 18
    sget-boolean v2, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->DEBUG:Z

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string v2, " list size: "

    .line 24
    invoke-static {v3, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 30
    move-result v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/media/dialog/MediaItem;

    .line 49
    iget v2, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    .line 51
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x2

    .line 54
    const/4 v7, 0x1

    .line 55
    const/16 v8, 0x8

    .line 56
    if-eqz v2, :cond_4

    .line 58
    if-eq v2, v7, :cond_3

    .line 60
    if-eq v2, v6, :cond_2

    .line 62
    invoke-static {v3, v1, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    goto/16 :goto_c

    .line 67
    :cond_2
    move-object/from16 v0, p1

    .line 69
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 71
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 73
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 75
    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 77
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleText:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 84
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 86
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 89
    const v3, 0x7f1306fa    # @string/media_output_dialog_pairing_new 'Connect a device'

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 94
    move-result-object v10

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    const/4 v14, 0x0

    .line 101
    move-object v9, v0

    .line 102
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 103
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 106
    const v3, 0x7f080ede    # @drawable/ic_add 'res/drawable/ic_add.xml'

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 111
    move-result-object v2

    .line 114
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 120
    iget v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 122
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 124
    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    iget v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    .line 131
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 133
    move-result-object v2

    .line 136
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    .line 137
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1;

    .line 142
    invoke-direct {v2, v5, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 144
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    goto/16 :goto_c

    .line 152
    :cond_3
    move-object/from16 v1, p1

    .line 154
    check-cast v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;

    .line 156
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 158
    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 160
    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 162
    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;->mTitleText:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mTitle:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    goto/16 :goto_c

    .line 174
    :cond_4
    move-object/from16 v9, p1

    .line 176
    check-cast v9, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 178
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 180
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 182
    move-result-object v0

    .line 185
    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 186
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 191
    iput-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDeviceId:Ljava/lang/String;

    .line 192
    iget-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 194
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 196
    iget-object v10, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    .line 199
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mEndTouchArea:Landroid/view/ViewGroup;

    .line 204
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 209
    iget-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    .line 212
    const/4 v3, 0x0

    .line 214
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v11, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;

    .line 221
    iget-object v3, v11, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 223
    iget v3, v3, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 225
    iget-object v12, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleText:Landroid/widget/TextView;

    .line 227
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v13, v11, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 232
    iget v3, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 234
    iget-object v4, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    .line 236
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 241
    iget v3, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 244
    iget-object v5, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTwoLineTitleText:Landroid/widget/TextView;

    .line 246
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget v3, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 251
    iget-object v6, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mVolumeValueText:Landroid/widget/TextView;

    .line 253
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v3, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    .line 258
    iget v6, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    .line 260
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 262
    move-result-object v6

    .line 265
    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 266
    iget-object v14, v9, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 269
    iget-object v3, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 271
    iget-object v3, v3, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    .line 273
    invoke-virtual {v3}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    .line 275
    move-result-object v3

    .line 278
    if-eqz v3, :cond_5

    .line 279
    move v3, v7

    .line 281
    goto :goto_0

    .line 282
    :cond_5
    const/4 v3, 0x0

    .line 283
    :goto_0
    invoke-virtual {v14, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isCurrentlyConnected(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 284
    move-result v6

    .line 287
    iget-object v15, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    .line 288
    invoke-virtual {v15}, Landroid/widget/SeekBar;->getVisibility()I

    .line 290
    move-result v15

    .line 293
    if-ne v15, v8, :cond_6

    .line 294
    move v15, v7

    .line 296
    goto :goto_1

    .line 297
    :cond_6
    const/4 v15, 0x0

    .line 298
    :goto_1
    iget v7, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 299
    if-ne v7, v1, :cond_7

    .line 301
    const/4 v7, -0x1

    .line 303
    iput v7, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 304
    :cond_7
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    const/4 v7, 0x1

    .line 309
    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 310
    const/4 v7, 0x0

    .line 313
    invoke-virtual {v2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 314
    iget-object v7, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 317
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isAnyDeviceTransferring()Z

    .line 319
    move-result v8

    .line 322
    move-object/from16 p0, v12

    .line 323
    iget-object v12, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 325
    if-eqz v8, :cond_9

    .line 327
    iget v1, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 329
    const/4 v2, 0x1

    .line 331
    if-ne v1, v2, :cond_8

    .line 332
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    .line 334
    move-result v1

    .line 337
    if-nez v1, :cond_8

    .line 338
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 340
    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 343
    move-result-object v1

    .line 346
    iget-object v2, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 347
    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 349
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 351
    move-result-object v2

    .line 354
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 355
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 358
    move-result-object v3

    .line 361
    const/4 v4, 0x0

    .line 362
    const/4 v5, 0x1

    .line 363
    const/4 v6, 0x0

    .line 364
    const/4 v7, 0x0

    .line 365
    move-object v2, v9

    .line 366
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 367
    goto/16 :goto_c

    .line 370
    :cond_8
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 375
    move-result-object v3

    .line 378
    const/4 v4, 0x0

    .line 379
    const/4 v5, 0x0

    .line 380
    const/4 v6, 0x0

    .line 381
    const/4 v7, 0x0

    .line 382
    move-object v2, v9

    .line 383
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 384
    goto/16 :goto_c

    .line 387
    :cond_9
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    .line 389
    move-result v8

    .line 392
    move/from16 p1, v6

    .line 393
    iget-object v6, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    .line 395
    move-object/from16 v16, v5

    .line 397
    const v5, 0x7f0812c2    # @drawable/media_output_icon_volume 'res/drawable/media_output_icon_volume.xml'

    .line 399
    if-eqz v8, :cond_a

    .line 402
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 404
    move-result v8

    .line 407
    if-nez v8, :cond_a

    .line 408
    iget v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 410
    invoke-virtual {v9, v5, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 412
    iput v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 415
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    .line 417
    const/4 v3, 0x1

    .line 419
    invoke-direct {v1, v9, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    .line 420
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 429
    move-result-object v3

    .line 432
    const/4 v4, 0x0

    .line 433
    const/4 v0, 0x0

    .line 434
    const/4 v1, 0x0

    .line 435
    const/4 v7, 0x0

    .line 436
    move-object v2, v9

    .line 437
    move v8, v5

    .line 438
    move v5, v0

    .line 439
    move-object v0, v6

    .line 440
    move v6, v1

    .line 441
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 442
    invoke-virtual {v9}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->disableSeekBar()V

    .line 445
    iget v1, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 448
    invoke-virtual {v9, v8, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 450
    iget-object v1, v11, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 453
    const v2, 0x7f0812c5    # @drawable/media_output_item_background_active 'res/drawable/media_output_item_background_active.xml'

    .line 455
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 458
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 462
    move-result-object v1

    .line 465
    iget-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mItemLayout:Landroid/widget/FrameLayout;

    .line 466
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 468
    iget v1, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    .line 471
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 473
    move-result-object v1

    .line 476
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 477
    iget v1, v13, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    .line 480
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 482
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 486
    goto/16 :goto_c

    .line 489
    :cond_a
    move v8, v5

    .line 491
    move-object v5, v6

    .line 492
    iget-object v6, v0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 493
    if-eqz v6, :cond_b

    .line 495
    invoke-virtual {v6}, Landroid/media/RouteListingPreference$Item;->getSubText()I

    .line 497
    move-result v6

    .line 500
    if-eqz v6, :cond_b

    .line 501
    const/4 v6, 0x1

    .line 503
    goto :goto_2

    .line 504
    :cond_b
    const/4 v6, 0x0

    .line 505
    :goto_2
    iget-object v13, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    .line 506
    const v17, 0x7f0812c8    # @drawable/media_output_status_edit_session 'res/drawable/media_output_status_edit_session.xml'

    .line 508
    const v11, 0x7f0811b3    # @drawable/ic_sound_bars_anim 'res/drawable/ic_sound_bars_anim.xml'

    .line 511
    if-eqz v6, :cond_18

    .line 514
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    .line 516
    move-result v2

    .line 519
    if-eqz v2, :cond_d

    .line 520
    if-nez p1, :cond_c

    .line 522
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 524
    move-result-object v2

    .line 527
    invoke-static {v2, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 528
    move-result v2

    .line 531
    if-eqz v2, :cond_d

    .line 532
    :cond_c
    const/4 v2, 0x1

    .line 534
    goto :goto_3

    .line 535
    :cond_d
    const/4 v2, 0x0

    .line 536
    :goto_3
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isHostForOngoingSession()Z

    .line 537
    move-result v3

    .line 540
    if-eqz v3, :cond_e

    .line 541
    if-eqz v2, :cond_e

    .line 543
    const/4 v3, 0x1

    .line 545
    goto :goto_4

    .line 546
    :cond_e
    const/4 v3, 0x0

    .line 547
    :goto_4
    if-eqz v2, :cond_10

    .line 548
    iput v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 550
    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 552
    invoke-virtual {v9, v8, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 554
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSubtextString()Ljava/lang/String;

    .line 557
    move-result-object v1

    .line 560
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const/high16 v1, 0x3f800000    # 1.0f

    .line 564
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 566
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 569
    move-object/from16 v2, v16

    .line 572
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 574
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 577
    if-eqz v3, :cond_f

    .line 580
    move/from16 v11, v17

    .line 582
    :cond_f
    invoke-virtual {v9, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickAreaAsSessionEditing(Lcom/android/settingslib/media/MediaDevice;I)V

    .line 584
    const/4 v4, 0x1

    .line 587
    const/4 v5, 0x1

    .line 588
    const/4 v6, 0x0

    .line 589
    const/4 v7, 0x1

    .line 590
    move-object v2, v9

    .line 591
    move-object v3, v0

    .line 592
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    .line 593
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 596
    goto/16 :goto_c

    .line 599
    :cond_10
    move-object/from16 v2, v16

    .line 601
    const/high16 v3, 0x3f800000    # 1.0f

    .line 603
    if-eqz p1, :cond_11

    .line 605
    iput v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 607
    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 609
    invoke-virtual {v9, v8, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 611
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 614
    goto :goto_5

    .line 617
    :cond_11
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 618
    :goto_5
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSubtextString()Ljava/lang/String;

    .line 621
    move-result-object v1

    .line 624
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    .line 628
    move-result v1

    .line 631
    if-eqz v1, :cond_12

    .line 632
    iget-object v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {v1, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 636
    move-result-object v1

    .line 639
    goto :goto_6

    .line 640
    :cond_12
    iget-object v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 641
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSelectionBehavior()I

    .line 643
    move-result v5

    .line 646
    if-eqz v5, :cond_14

    .line 647
    const/4 v6, 0x2

    .line 649
    if-eq v5, v6, :cond_13

    .line 650
    const/4 v1, 0x0

    .line 652
    goto :goto_6

    .line 653
    :cond_13
    const v5, 0x7f0812cb    # @drawable/media_output_status_help 'res/drawable/media_output_status_help.xml'

    .line 654
    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 657
    move-result-object v1

    .line 660
    goto :goto_6

    .line 661
    :cond_14
    const v5, 0x7f0812c9    # @drawable/media_output_status_failed 'res/drawable/media_output_status_failed.xml'

    .line 662
    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 665
    move-result-object v1

    .line 668
    :goto_6
    if-eqz v1, :cond_15

    .line 669
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    iget-object v5, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 674
    iget v5, v5, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 676
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 678
    move-result-object v5

    .line 681
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 682
    instance-of v5, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 685
    if-eqz v5, :cond_15

    .line 687
    move-object v5, v1

    .line 689
    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 690
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 692
    :cond_15
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateClickActionBasedOnSelectionBehavior(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 695
    move-result v5

    .line 698
    if-eqz v5, :cond_16

    .line 699
    move v11, v3

    .line 701
    goto :goto_7

    .line 702
    :cond_16
    const/high16 v11, 0x3f000000    # 0.5f

    .line 703
    :goto_7
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 705
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 708
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 711
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 714
    if-eqz v1, :cond_17

    .line 717
    const/4 v1, 0x1

    .line 719
    goto :goto_8

    .line 720
    :cond_17
    const/4 v1, 0x0

    .line 721
    :goto_8
    move v6, v1

    .line 722
    const/4 v7, 0x0

    .line 723
    move-object v2, v9

    .line 724
    move-object v3, v0

    .line 725
    move/from16 v4, p1

    .line 726
    move/from16 v5, p1

    .line 728
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    .line 730
    goto/16 :goto_c

    .line 733
    :cond_18
    iget v6, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 735
    const/4 v11, 0x3

    .line 737
    if-ne v6, v11, :cond_19

    .line 738
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 740
    iget-object v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 743
    const v3, 0x7f0812c9    # @drawable/media_output_status_failed 'res/drawable/media_output_status_failed.xml'

    .line 745
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 748
    move-result-object v1

    .line 751
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 755
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 757
    move-result-object v1

    .line 760
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 761
    const v1, 0x7f1306f5    # @string/media_output_dialog_connect_failed 'Can't switch. Tap to try again.'

    .line 764
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 767
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    .line 770
    const/4 v3, 0x2

    .line 772
    invoke-direct {v1, v9, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    .line 773
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    const/4 v4, 0x0

    .line 782
    const/4 v5, 0x0

    .line 783
    const/4 v6, 0x1

    .line 784
    const/4 v7, 0x0

    .line 785
    move-object v2, v9

    .line 786
    move-object v3, v0

    .line 787
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    .line 788
    goto/16 :goto_c

    .line 791
    :cond_19
    const v11, 0x7f0812c9    # @drawable/media_output_status_failed 'res/drawable/media_output_status_failed.xml'

    .line 793
    const/4 v4, 0x5

    .line 796
    if-ne v6, v4, :cond_1a

    .line 797
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 799
    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 802
    move-result-object v1

    .line 805
    iget-object v2, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 806
    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 808
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 810
    move-result-object v2

    .line 813
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 814
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 817
    move-result-object v3

    .line 820
    const/4 v4, 0x0

    .line 821
    const/4 v5, 0x1

    .line 822
    const/4 v6, 0x0

    .line 823
    const/4 v7, 0x0

    .line 824
    move-object v2, v9

    .line 825
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 826
    goto/16 :goto_c

    .line 829
    :cond_1a
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 831
    move-result-object v4

    .line 834
    check-cast v4, Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 837
    move-result v4

    .line 840
    const/4 v6, 0x1

    .line 841
    if-le v4, v6, :cond_1b

    .line 842
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 844
    move-result-object v4

    .line 847
    invoke-static {v4, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 848
    move-result v4

    .line 851
    if-eqz v4, :cond_1b

    .line 852
    iget-object v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 854
    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->getDeselectableMediaDevice()Ljava/util/List;

    .line 856
    move-result-object v1

    .line 859
    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 860
    move-result v1

    .line 863
    iget v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 864
    invoke-virtual {v9, v8, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 866
    const/4 v3, 0x1

    .line 869
    invoke-virtual {v9, v3, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    .line 870
    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 873
    const/4 v1, 0x0

    .line 876
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 877
    const/4 v1, 0x2

    .line 880
    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 881
    iget-object v1, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    .line 884
    invoke-virtual {v9, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    .line 886
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 889
    move-result-object v3

    .line 892
    const/4 v4, 0x1

    .line 893
    const/4 v5, 0x0

    .line 894
    const/4 v6, 0x1

    .line 895
    const/4 v7, 0x1

    .line 896
    move-object v2, v9

    .line 897
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 898
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 901
    goto/16 :goto_c

    .line 904
    :cond_1b
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    .line 906
    move-result v4

    .line 909
    if-nez v4, :cond_20

    .line 910
    if-eqz p1, :cond_20

    .line 912
    if-eqz v3, :cond_1c

    .line 914
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 916
    move-result v3

    .line 919
    if-nez v3, :cond_1c

    .line 920
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 922
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1;

    .line 925
    const/4 v3, 0x0

    .line 927
    invoke-direct {v1, v3, v9}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 928
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 937
    move-result-object v3

    .line 940
    const/4 v4, 0x0

    .line 941
    const/4 v5, 0x0

    .line 942
    const/4 v6, 0x0

    .line 943
    const/4 v7, 0x0

    .line 944
    move-object v2, v9

    .line 945
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 946
    goto/16 :goto_c

    .line 949
    :cond_1c
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    .line 951
    move-result v3

    .line 954
    if-eqz v3, :cond_1e

    .line 955
    iput v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 957
    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 959
    invoke-virtual {v9, v8, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 961
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isHostForOngoingSession()Z

    .line 964
    move-result v1

    .line 967
    if-eqz v1, :cond_1d

    .line 968
    goto :goto_9

    .line 970
    :cond_1d
    const v17, 0x7f0811b3    # @drawable/ic_sound_bars_anim 'res/drawable/ic_sound_bars_anim.xml'

    .line 971
    :goto_9
    move/from16 v1, v17

    .line 974
    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickAreaAsSessionEditing(Lcom/android/settingslib/media/MediaDevice;I)V

    .line 976
    iget-object v1, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mEndClickIcon:Landroid/widget/ImageView;

    .line 979
    const/4 v2, 0x0

    .line 981
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 985
    move-result-object v3

    .line 988
    const/4 v4, 0x1

    .line 989
    const/4 v5, 0x0

    .line 990
    const/4 v6, 0x0

    .line 991
    const/4 v7, 0x1

    .line 992
    move-object v2, v9

    .line 993
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 994
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 997
    goto/16 :goto_c

    .line 1000
    :cond_1e
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 1002
    move-result v3

    .line 1005
    if-eqz v3, :cond_1f

    .line 1006
    iget-object v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 1008
    invoke-virtual {v3}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectableMediaDevice()Ljava/util/List;

    .line 1010
    move-result-object v3

    .line 1013
    check-cast v3, Ljava/util/ArrayList;

    .line 1014
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1016
    move-result v3

    .line 1019
    if-nez v3, :cond_1f

    .line 1020
    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 1022
    invoke-virtual {v9, v8, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 1024
    iget-object v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 1027
    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->getDeselectableMediaDevice()Ljava/util/List;

    .line 1029
    move-result-object v1

    .line 1032
    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 1033
    move-result v1

    .line 1036
    const/4 v3, 0x1

    .line 1037
    invoke-virtual {v9, v3, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    .line 1038
    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 1041
    const/4 v1, 0x0

    .line 1044
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1045
    const/4 v1, 0x2

    .line 1048
    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1049
    iget-object v1, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    .line 1052
    invoke-virtual {v9, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    .line 1054
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 1057
    move-result-object v3

    .line 1060
    const/4 v4, 0x1

    .line 1061
    const/4 v5, 0x0

    .line 1062
    const/4 v6, 0x1

    .line 1063
    const/4 v7, 0x1

    .line 1064
    move-object v2, v9

    .line 1065
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 1066
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 1069
    goto/16 :goto_c

    .line 1072
    :cond_1f
    iget v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 1074
    invoke-virtual {v9, v8, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    .line 1076
    const/4 v3, 0x0

    .line 1079
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1080
    const/4 v3, 0x2

    .line 1083
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1084
    iget-object v2, v9, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    .line 1087
    invoke-virtual {v9, v2, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    .line 1089
    iput v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    .line 1092
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 1094
    move-result-object v3

    .line 1097
    const/4 v4, 0x1

    .line 1098
    const/4 v5, 0x0

    .line 1099
    const/4 v6, 0x0

    .line 1100
    const/4 v7, 0x0

    .line 1101
    move-object v2, v9

    .line 1102
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 1103
    invoke-virtual {v9, v0, v15}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 1106
    goto/16 :goto_c

    .line 1109
    :cond_20
    iget-object v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 1111
    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectableMediaDevice()Ljava/util/List;

    .line 1113
    move-result-object v1

    .line 1116
    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 1117
    move-result v1

    .line 1120
    if-eqz v1, :cond_21

    .line 1121
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 1123
    const/4 v1, 0x1

    .line 1126
    const/4 v3, 0x0

    .line 1127
    invoke-virtual {v9, v3, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    .line 1128
    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    .line 1131
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    .line 1134
    const/4 v3, 0x3

    .line 1136
    invoke-direct {v1, v9, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    .line 1137
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 1146
    move-result-object v3

    .line 1149
    const/4 v4, 0x0

    .line 1150
    const/4 v5, 0x0

    .line 1151
    const/4 v6, 0x1

    .line 1152
    const/4 v7, 0x1

    .line 1153
    move-object v2, v9

    .line 1154
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 1155
    goto :goto_c

    .line 1158
    :cond_21
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    .line 1159
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 1162
    move-result-object v3

    .line 1165
    const/4 v4, 0x0

    .line 1166
    const/4 v5, 0x0

    .line 1167
    const/4 v6, 0x0

    .line 1168
    const/4 v7, 0x0

    .line 1169
    const v1, 0x7f0811b3    # @drawable/ic_sound_bars_anim 'res/drawable/ic_sound_bars_anim.xml'

    .line 1170
    move-object v2, v9

    .line 1173
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 1174
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    .line 1177
    move-result v2

    .line 1180
    if-eqz v2, :cond_22

    .line 1181
    iget-object v2, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 1183
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1185
    move-result-object v1

    .line 1188
    goto :goto_a

    .line 1189
    :cond_22
    iget-object v1, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 1190
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSelectionBehavior()I

    .line 1192
    move-result v2

    .line 1195
    if-eqz v2, :cond_24

    .line 1196
    const/4 v3, 0x2

    .line 1198
    if-eq v2, v3, :cond_23

    .line 1199
    const/4 v1, 0x0

    .line 1201
    goto :goto_a

    .line 1202
    :cond_23
    const v2, 0x7f0812cb    # @drawable/media_output_status_help 'res/drawable/media_output_status_help.xml'

    .line 1203
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1206
    move-result-object v1

    .line 1209
    goto :goto_a

    .line 1210
    :cond_24
    invoke-virtual {v1, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1211
    move-result-object v1

    .line 1214
    :goto_a
    if-eqz v1, :cond_26

    .line 1215
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    iget-object v2, v14, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 1220
    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 1222
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1224
    move-result-object v2

    .line 1227
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1228
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1231
    if-eqz v2, :cond_25

    .line 1233
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1235
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1237
    :cond_25
    const/4 v1, 0x0

    .line 1240
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1241
    :cond_26
    invoke-virtual {v9, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateClickActionBasedOnSelectionBehavior(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 1244
    move-result v0

    .line 1247
    if-eqz v0, :cond_27

    .line 1248
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1250
    goto :goto_b

    .line 1252
    :cond_27
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1253
    :goto_b
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1255
    move-object/from16 v0, p0

    .line 1258
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1260
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1263
    :goto_c
    return-void
    .line 1266
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 v1, 0x2

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    const v1, 0x7f0d0182    # @layout/media_output_list_group_divider 'res/layout/media_output_list_group_divider.xml'

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    const v1, 0x7f0d0184    # @layout/media_output_list_item_advanced 'res/layout/media_output_list_item_advanced.xml'

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    .line 29
    const/4 p2, 0x1

    .line 31
    if-eq p1, p2, :cond_1

    .line 32
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 34
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    .line 36
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/View;)V

    .line 38
    return-object p1

    .line 41
    :cond_1
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;

    .line 42
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    .line 44
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/View;)V

    .line 46
    return-object p1
    .line 49
.end method
