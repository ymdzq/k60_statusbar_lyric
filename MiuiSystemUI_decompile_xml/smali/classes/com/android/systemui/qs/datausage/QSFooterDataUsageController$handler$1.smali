.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 4
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;->$r8$classId:I

    .line 2
    const v1, 0x186a0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    if-ne v0, v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    check-cast p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 21
    :cond_0
    return-void

    .line 24
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 25
    const/16 v0, 0x64

    .line 27
    if-ne p1, v0, :cond_8

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 31
    iget-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->handler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 33
    const-string v0, "QSFooterDataUsage"

    .line 35
    iget-object v2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->centralSurfaces:Ldagger/Lazy;

    .line 37
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 43
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sBootCompleted:Z

    .line 50
    if-nez v2, :cond_1

    .line 52
    goto/16 :goto_5

    .line 54
    :cond_1
    new-instance v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;

    .line 56
    invoke-direct {v2}, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;-><init>()V

    .line 58
    const/4 v3, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v5

    .line 69
    sget-object v6, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->networkUri:Landroid/net/Uri;

    .line 70
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 76
    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x1

    .line 81
    if-eqz v3, :cond_2

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    move-result v6

    .line 87
    if-ne v6, v5, :cond_2

    .line 88
    move v6, v5

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v6, v4

    .line 92
    :goto_1
    if-eqz v6, :cond_6

    .line 93
    const-string/jumbo v4, "text1"

    .line 95
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    move-result v4

    .line 101
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 105
    const-string/jumbo v6, "text2"

    .line 106
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 109
    move-result v6

    .line 112
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v7

    .line 126
    if-eqz v7, :cond_3

    .line 127
    const-string p0, "queryDataUsage: cannot find text1, text2."

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto/16 :goto_3

    .line 134
    :cond_3
    const-string v7, "icon"

    .line 136
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 138
    move-result v7

    .line 141
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 145
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    move-result-object v7

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v8

    .line 153
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    move-result-object v8

    .line 157
    const-string v9, "r"

    .line 158
    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 160
    move-result-object v7

    .line 163
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 164
    invoke-direct {v8, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 166
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 169
    move-result-object v7

    .line 172
    if-nez v7, :cond_4

    .line 173
    const-string p0, "queryDataUsage: cannot load icon."

    .line 175
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    goto :goto_3

    .line 180
    :cond_4
    const-string v8, "action1"

    .line 181
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 183
    move-result v8

    .line 186
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v8

    .line 190
    const-string v9, "action2"

    .line 191
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 193
    move-result v9

    .line 196
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 197
    move-result-object v9

    .line 200
    invoke-static {v8, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    move-result-object v8

    .line 204
    iput-object v8, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->intent1:Landroid/content/Intent;

    .line 205
    invoke-static {v9, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    move-result-object v8

    .line 210
    iput-object v8, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->intent2:Landroid/content/Intent;

    .line 211
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->intent1:Landroid/content/Intent;

    .line 213
    if-nez p0, :cond_5

    .line 215
    if-nez v8, :cond_5

    .line 217
    const-string p0, "queryDataUsage: cannot find action1, action2."

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    goto :goto_3

    .line 224
    :cond_5
    iput-boolean v5, v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 225
    new-instance p0, Lkotlin/text/Regex;

    .line 227
    const-string v5, "&nbsp;"

    .line 229
    invoke-direct {p0, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v5, "&ensp;"

    .line 234
    invoke-virtual {p0, v4, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object p0

    .line 239
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 240
    move-result-object p0

    .line 243
    iput-object p0, v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text1:Ljava/lang/CharSequence;

    .line 244
    iput-object v6, v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->text2:Ljava/lang/String;

    .line 246
    iput-object v7, v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->iconImage:Landroid/graphics/Bitmap;

    .line 248
    goto :goto_2

    .line 250
    :cond_6
    iput-boolean v4, v2, Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable:Z

    .line 251
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 256
    move-result-object p0

    .line 259
    iput v1, p0, Landroid/os/Message;->what:I

    .line 260
    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v3, :cond_8

    .line 267
    goto :goto_3

    .line 269
    :catchall_0
    move-exception p0

    .line 270
    goto :goto_4

    .line 271
    :catch_0
    move-exception p0

    .line 272
    :try_start_1
    const-string/jumbo p1, "update data usage failed."

    .line 273
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-eqz v3, :cond_8

    .line 279
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 281
    goto :goto_5

    .line 284
    :goto_4
    if-eqz v3, :cond_7

    .line 285
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_7
    throw p0

    .line 290
    :cond_8
    :goto_5
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 292
.end method
