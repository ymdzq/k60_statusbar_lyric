.class public final synthetic Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

.field public final synthetic f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_3

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->uri:Landroid/net/Uri;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->editImage(Landroid/net/Uri;)V

    .line 20
    return-void

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-boolean v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isSensitive:Z

    .line 31
    if-eqz v3, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->loadThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object v1

    .line 41
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->showImagePreview(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setEditAccessibilityAction(Z)V

    .line 47
    return-void

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->clipData:Landroid/content/ClipData;

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->shareContent(Landroid/content/ClipData;)V

    .line 60
    return-void

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 64
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isSensitive:Z

    .line 71
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 73
    if-nez v1, :cond_2

    .line 75
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->loadThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 79
    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    .line 89
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 94
    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 98
    const/4 v2, 0x4

    .line 100
    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V

    .line 101
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 104
    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 107
    const/4 v2, 0x5

    .line 109
    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V

    .line 110
    iput-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnPreviewTapped:Ljava/lang/Runnable;

    .line 113
    :goto_2
    return-void

    .line 115
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 116
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->clipData:Landroid/content/ClipData;

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->shareContent(Landroid/content/ClipData;)V

    .line 125
    return-void

    .line 128
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->uri:Landroid/net/Uri;

    .line 136
    invoke-virtual {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->editImage(Landroid/net/Uri;)V

    .line 138
    return-void

    .line 141
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 142
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iget-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->textLinks:Landroid/view/textclassifier/TextLinks;

    .line 149
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardUtils:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;

    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    .line 156
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    .line 161
    move-result-object v5

    .line 164
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object v5

    .line 168
    :cond_3
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v6

    .line 172
    if-eqz v6, :cond_4

    .line 173
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v6

    .line 178
    check-cast v6, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 179
    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    .line 181
    move-result v7

    .line 184
    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    .line 185
    move-result v8

    .line 188
    sub-int/2addr v7, v8

    .line 189
    int-to-float v7, v7

    .line 190
    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks;->getText()Ljava/lang/CharSequence;

    .line 191
    move-result-object v8

    .line 194
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 195
    move-result v8

    .line 198
    int-to-float v8, v8

    .line 199
    const v9, 0x3f4ccccd    # 0.8f

    .line 200
    mul-float/2addr v8, v9

    .line 203
    cmpl-float v7, v7, v8

    .line 204
    if-ltz v7, :cond_3

    .line 206
    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks;->getText()Ljava/lang/CharSequence;

    .line 208
    move-result-object v7

    .line 211
    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    .line 212
    move-result v8

    .line 215
    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    .line 216
    move-result v6

    .line 219
    iget-object v9, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 220
    invoke-interface {v9, v7, v8, v6, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    .line 222
    move-result-object v6

    .line 225
    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 226
    move-result-object v6

    .line 229
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    goto :goto_4

    .line 233
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 234
    move-result-object v1

    .line 237
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils$$ExternalSyntheticLambda0;

    .line 238
    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->source:Ljava/lang/String;

    .line 240
    invoke-direct {v2, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 245
    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 249
    move-result-object v1

    .line 252
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result p0

    .line 258
    if-eqz p0, :cond_5

    .line 259
    new-instance p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda5;

    .line 261
    invoke-direct {p0, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    .line 263
    invoke-virtual {v1, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 266
    :cond_5
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 270
.end method
