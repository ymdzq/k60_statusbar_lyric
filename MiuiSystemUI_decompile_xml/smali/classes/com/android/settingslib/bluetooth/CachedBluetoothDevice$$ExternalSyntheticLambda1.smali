.class public final synthetic Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public synthetic constructor <init>(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_5

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 10
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 16
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 18
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 27
    const/4 v3, 0x5

    .line 29
    invoke-static {v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    move-object v0, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    .line 45
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 63
    const-string v7, "BluetoothUtils"

    .line 65
    invoke-static {v6, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    .line 67
    move-result-object v8

    .line 70
    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 71
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v10

    .line 76
    const v11, 0x7f070132    # @dimen/bt_nearby_icon_size '24.0dp'

    .line 77
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v10

    .line 83
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v11

    .line 87
    invoke-static {v9}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    .line 88
    move-result v12

    .line 91
    if-eqz v12, :cond_2

    .line 92
    invoke-static {v9, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 97
    if-nez v3, :cond_1

    .line 98
    goto :goto_1

    .line 100
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v4

    .line 104
    :goto_1
    if-eqz v4, :cond_2

    .line 105
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_2

    .line 114
    :catch_0
    move-exception v3

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    .line 116
    const-string v12, "Failed to take persistable permission for: "

    .line 118
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v9

    .line 129
    invoke-static {v7, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 133
    move-result-object v3

    .line 136
    invoke-static {v3, v4}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 137
    move-result-object v3

    .line 140
    if-eqz v3, :cond_2

    .line 141
    invoke-static {v3, v10, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    new-instance v3, Landroid/util/Pair;

    .line 150
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 152
    invoke-direct {v6, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 157
    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-direct {v3, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    goto :goto_4

    .line 164
    :catch_1
    move-exception v1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    const-string v6, "Failed to get permission for: "

    .line 168
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 179
    invoke-static {v7, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    goto :goto_3

    .line 183
    :catch_2
    move-exception v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    const-string v6, "Failed to get drawable for: "

    .line 187
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v3

    .line 198
    invoke-static {v7, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_2
    :goto_3
    new-instance v3, Landroid/util/Pair;

    .line 202
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 208
    check-cast v4, Ljava/lang/String;

    .line 210
    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :goto_4
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 215
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 217
    invoke-virtual {v5, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_3
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;

    .line 222
    invoke-direct {v0, v2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;-><init>(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 224
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 227
    return-void

    .line 230
    :goto_5
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 236
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 241
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 243
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 246
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 248
    goto :goto_6

    .line 251
    :catch_3
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    :goto_6
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 258
.end method
