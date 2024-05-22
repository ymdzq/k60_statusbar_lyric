.class public Lcom/miui/maml/elements/MusicControlScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenE"

.field public static final METADATA_KEY_LYRIC:Ljava/lang/String; = "android.media.metadata.LYRIC"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

.field private mAutoShow:Z

.field private mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

.field private mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lcom/miui/maml/elements/MusicController;

.field private mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mResetMusicControllerRunable:Ljava/lang/Runnable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

.field private mTitleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement$1;)V

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 11
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$1;

    .line 13
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 15
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 18
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$2;

    .line 20
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$2;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 22
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$3;

    .line 27
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$3;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 29
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 32
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$4;

    .line 34
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$4;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 36
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 39
    const-string p2, "music_prev"

    .line 41
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 43
    move-result-object p2

    .line 46
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 47
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 49
    const-string p2, "music_next"

    .line 51
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 53
    move-result-object p2

    .line 56
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 57
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 59
    const-string p2, "music_play"

    .line 61
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 63
    move-result-object p2

    .line 66
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 67
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 69
    const-string p2, "music_pause"

    .line 71
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 73
    move-result-object p2

    .line 76
    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 77
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 79
    const-string p2, "music_display"

    .line 81
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 83
    move-result-object p2

    .line 86
    check-cast p2, Lcom/miui/maml/elements/TextScreenElement;

    .line 87
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 89
    const-string p2, "music_album_cover"

    .line 91
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 93
    move-result-object p2

    .line 96
    check-cast p2, Lcom/miui/maml/elements/ImageScreenElement;

    .line 97
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 99
    invoke-direct {p0, p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 101
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 105
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 107
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 109
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 112
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 114
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 117
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 119
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 122
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 124
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 127
    const/4 v0, 0x0

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 135
    if-eqz p2, :cond_2

    .line 137
    const-string p2, "defAlbumCover"

    .line 139
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v1

    .line 148
    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 151
    move-result-object v1

    .line 154
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 155
    invoke-virtual {v1, p2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 157
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 163
    if-eqz p2, :cond_2

    .line 165
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 167
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getResourceDensity()I

    .line 169
    move-result v1

    .line 172
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 173
    :cond_2
    const-string p2, "autoShow"

    .line 176
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 181
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 182
    move-result p2

    .line 185
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 186
    const-string p2, "enableLyric"

    .line 188
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 193
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 194
    move-result p2

    .line 197
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 198
    const/4 v1, 0x1

    .line 200
    if-eqz p2, :cond_3

    .line 201
    move p2, v1

    .line 203
    goto :goto_0

    .line 204
    :cond_3
    const-string p2, "enableProgress"

    .line 205
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 210
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 211
    move-result p2

    .line 214
    :goto_0
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 215
    const-string/jumbo p2, "updateProgressInterval"

    .line 217
    const/16 v2, 0x3e8

    .line 220
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 222
    move-result p1

    .line 225
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 226
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 228
    if-eqz p1, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 232
    move-result-object p1

    .line 235
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 243
    const-string v4, ".music_state"

    .line 245
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 250
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 251
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 254
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 263
    const-string v4, ".title"

    .line 265
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v2

    .line 270
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 271
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 274
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 283
    const-string v4, ".artist"

    .line 285
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 290
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 291
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 294
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 303
    const-string v4, ".album"

    .line 305
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 310
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 311
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 314
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 316
    if-eqz p2, :cond_4

    .line 318
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 327
    const-string v4, ".lyric_current"

    .line 329
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v2

    .line 334
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 335
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 338
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 347
    const-string v4, ".lyric_before"

    .line 349
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    move-result-object v2

    .line 354
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 355
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 358
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 367
    const-string v4, ".lyric_after"

    .line 369
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    move-result-object v2

    .line 374
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 375
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 378
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 387
    const-string v4, ".lyric_last"

    .line 389
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v2

    .line 394
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 395
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 398
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 407
    const-string v4, ".lyric_prev"

    .line 409
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object v2

    .line 414
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 415
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 418
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 427
    const-string v4, ".lyric_next"

    .line 429
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    move-result-object v2

    .line 434
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 435
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 438
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 447
    const-string v4, ".lyric_current_line_progress"

    .line 449
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    move-result-object v2

    .line 454
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 455
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 458
    :cond_4
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 460
    if-eqz p2, :cond_5

    .line 462
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 471
    const-string v4, ".music_duration"

    .line 473
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    move-result-object v2

    .line 478
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 479
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 482
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 491
    const-string v4, ".music_position"

    .line 493
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    move-result-object v2

    .line 498
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 499
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 502
    :cond_5
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 511
    const-string v4, ".user_rating_style"

    .line 513
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    move-result-object v2

    .line 518
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 519
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 522
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 526
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 531
    const-string v4, ".user_rating_value"

    .line 533
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    move-result-object v2

    .line 538
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 539
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 542
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    .line 546
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 551
    const-string v4, ".disable_play"

    .line 553
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    move-result-object v2

    .line 558
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 559
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 562
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    .line 566
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 571
    const-string v4, ".disable_prev"

    .line 573
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    move-result-object v2

    .line 578
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 579
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 582
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    .line 586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 591
    const-string v4, ".disable_next"

    .line 593
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    move-result-object v2

    .line 598
    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 599
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 602
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 611
    const-string v4, ".artwork"

    .line 613
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    move-result-object v2

    .line 618
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 619
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 622
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 631
    const-string v4, ".package"

    .line 633
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    move-result-object v2

    .line 638
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 639
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 642
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 651
    const-string v4, ".class"

    .line 653
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    move-result-object v2

    .line 658
    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 659
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 662
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 664
    if-eqz p1, :cond_7

    .line 666
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 668
    if-eqz p1, :cond_7

    .line 670
    move p1, v1

    .line 672
    goto :goto_1

    .line 673
    :cond_7
    move p1, v0

    .line 674
    :goto_1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 675
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 677
    if-eqz p1, :cond_8

    .line 679
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 681
    if-eqz p1, :cond_8

    .line 683
    move v0, v1

    .line 685
    :cond_8
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 686
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 688
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 692
    move-result-object p1

    .line 695
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 696
    const-string p2, "com.miui.player"

    .line 698
    const/4 v0, 0x2

    .line 700
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 701
    move-result-object p1

    .line 704
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    goto :goto_2

    .line 707
    :catch_0
    move-exception p1

    .line 708
    const-string p2, "MusicControlScreenE"

    .line 709
    const-string v0, "fail to get MiuiMusic preference"

    .line 711
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :goto_2
    new-instance p1, Lcom/miui/maml/elements/MusicController;

    .line 716
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 718
    move-result-object p2

    .line 721
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 722
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 724
    move-result-object v0

    .line 727
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 728
    move-result-object v0

    .line 731
    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 732
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 735
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 737
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    .line 739
    move-result-object p1

    .line 742
    const-string p2, "maml"

    .line 743
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 745
    const-string p2, "gadget"

    .line 747
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 749
    move-result p2

    .line 752
    if-eqz p2, :cond_9

    .line 753
    const-string p1, "home_widget"

    .line 755
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 757
    goto :goto_3

    .line 759
    :cond_9
    const-string/jumbo p2, "statusbar"

    .line 760
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 763
    move-result p2

    .line 766
    if-eqz p2, :cond_a

    .line 767
    const-string p1, "notification_bar"

    .line 769
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 771
    goto :goto_3

    .line 773
    :cond_a
    const-string p2, "lockscreen"

    .line 774
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 776
    move-result p1

    .line 779
    if-eqz p1, :cond_b

    .line 780
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 782
    :cond_b
    :goto_3
    return-void
    .line 784
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$2300(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetAll()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 2
    return-void
    .line 5
.end method

.method private cancelSetDefaultArtwork()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method private delayToSetDefaultArtwork(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
    .line 20
.end method

.method private findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    instance-of v1, v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    check-cast v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 26
    return-object v0

    .line 28
    :cond_1
    instance-of v1, v0, Lcom/miui/maml/elements/ElementGroup;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    .line 33
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return-object p0
    .line 43
.end method

.method private onMusicStateChange(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 15
    :cond_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    if-eqz v1, :cond_2

    .line 22
    if-eqz p1, :cond_1

    .line 24
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 41
    if-eqz v1, :cond_4

    .line 43
    xor-int/lit8 v2, p1, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 47
    :cond_4
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 50
    if-eqz v1, :cond_6

    .line 52
    if-eqz p1, :cond_5

    .line 54
    const-wide/16 v1, 0x64

    .line 56
    goto :goto_1

    .line 58
    :cond_5
    const-wide/16 v1, 0x0

    .line 59
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 61
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 64
    if-eqz v1, :cond_8

    .line 66
    if-eqz p1, :cond_7

    .line 68
    iget-boolean v2, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 70
    if-eqz v2, :cond_7

    .line 72
    goto :goto_2

    .line 74
    :cond_7
    const/4 v0, 0x0

    .line 75
    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 76
    :cond_8
    if-eqz p1, :cond_9

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 81
    if-eqz v0, :cond_9

    .line 83
    const/high16 v0, 0x41f00000    # 30.0f

    .line 85
    goto :goto_3

    .line 87
    :cond_9
    const/4 v0, 0x0

    .line 88
    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "music state change: playing="

    .line 97
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    const-string p1, "MusicControlScreenE"

    .line 109
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
    .line 114
.end method

.method private resetAll()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 15
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    .line 20
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetMusicState()V

    .line 23
    return-void
    .line 26
.end method

.method private resetLyric()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 27
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 29
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method private resetMusicState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 3
    return-void
    .line 6
.end method

.method private resetPackageName()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    return-void
    .line 17
.end method

.method private resetProgress()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method private resetUserRating()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    const-wide/16 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "music_prev"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    const-string v2, "music_pause"

    .line 8
    const/16 v3, 0x55

    .line 10
    const/16 v4, 0x57

    .line 12
    const-string v5, "music_play"

    .line 14
    const/16 v6, 0x58

    .line 16
    const-string v7, "music_next"

    .line 18
    const/4 v8, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    move v1, v6

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    move v1, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    move v1, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move v1, v3

    .line 48
    :goto_1
    if-ne v1, v6, :cond_4

    .line 49
    iget-boolean v6, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 51
    if-eqz v6, :cond_4

    .line 53
    return v8

    .line 55
    :cond_4
    if-ne v1, v4, :cond_5

    .line 56
    iget-boolean v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 58
    if-eqz v4, :cond_5

    .line 60
    return v8

    .line 62
    :cond_5
    if-ne v1, v3, :cond_6

    .line 63
    iget-boolean v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 65
    if-eqz v3, :cond_6

    .line 67
    return v8

    .line 69
    :cond_6
    iget-object v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 70
    invoke-virtual {v3, p1, v1}, Lcom/miui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    .line 72
    move-result v1

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    return v3

    .line 79
    :cond_7
    const-string v1, "MusicControlScreenE"

    .line 80
    const-string v4, "fail to dispatch by media controller, send to MiuiMusic."

    .line 82
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_8

    .line 87
    return v3

    .line 89
    :cond_8
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 93
    if-nez p1, :cond_c

    .line 94
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 99
    if-eqz p1, :cond_9

    .line 100
    goto :goto_2

    .line 102
    :cond_9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 106
    if-eqz p1, :cond_a

    .line 107
    new-instance p1, Landroid/content/Intent;

    .line 109
    const-string p2, "com.miui.player.musicservicecommand.previous"

    .line 111
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    goto :goto_3

    .line 116
    :cond_a
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    new-instance p1, Landroid/content/Intent;

    .line 123
    const-string p2, "com.miui.player.musicservicecommand.next"

    .line 125
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    goto :goto_3

    .line 130
    :cond_b
    const/4 p1, 0x0

    .line 131
    goto :goto_3

    .line 132
    :cond_c
    :goto_2
    new-instance p1, Landroid/content/Intent;

    .line 133
    const-string p2, "com.miui.player.musicservicecommand.togglepause"

    .line 135
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    :goto_3
    if-eqz p1, :cond_d

    .line 140
    const-string p2, "com.miui.player"

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string p2, "intent_sender"

    .line 147
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 149
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 154
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 156
    move-result-object p2

    .line 159
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 169
    move-result-object p1

    .line 172
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 173
    const-wide/16 v0, 0x3e8

    .line 175
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return v3

    .line 180
    :cond_d
    return v8
    .line 181
.end method

.method private setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ButtonScreenElement;->setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private startProgressUpdate(ZJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    if-eqz p1, :cond_1

    .line 15
    const-wide/16 v0, 0x0

    .line 17
    cmp-long p1, p2, v0

    .line 19
    if-lez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 27
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 41
    move-result-object p1

    .line 44
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_1
    :goto_0
    return-void
    .line 50
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 16
    invoke-virtual {v0, p3}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 21
    if-eqz p3, :cond_3

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    move-object p1, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    const-string p3, "%s   %s"

    .line 40
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    :goto_0
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 50
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 55
    return-void
    .line 58
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 21
    return-void
    .line 24
.end method

.method private updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 9
    return-void

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    .line 17
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 21
    if-eqz p0, :cond_2

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    .line 25
    :cond_2
    return-void
    .line 28
.end method

.method private updateLyricVar(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 4
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 72
    return-void
    .line 75
.end method

.method private updateProgress(JJ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    cmp-long v2, p1, v0

    .line 9
    if-lez v2, :cond_4

    .line 11
    cmp-long v2, p3, v0

    .line 13
    if-gez v2, :cond_1

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 18
    long-to-double p1, p1

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    long-to-double v2, p3

    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 27
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 30
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 34
    if-eqz p1, :cond_2

    .line 36
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 45
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 50
    return-void

    .line 53
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 54
    return-void
    .line 57
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 9
    return-void

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    const/4 v2, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    iput v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 25
    goto :goto_2

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    .line 28
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 32
    goto :goto_2

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 39
    goto :goto_2

    .line 41
    :pswitch_2
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_0
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 50
    goto :goto_2

    .line 52
    :pswitch_3
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    move v1, v2

    .line 60
    :goto_1
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 61
    :goto_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 65
    int-to-double v0, v0

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 68
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 73
    float-to-double v0, v0

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 79
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 84
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->unregisterListener()V

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->finish()V

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 41
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    return-void
    .line 46
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->initByPreference()V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/MusicController;->registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->isMusicActive()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 23
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 28
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 36
    :goto_0
    return-void
    .line 39
.end method

.method public initByPreference()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "MiuiMusic"

    .line 7
    const/4 v3, 0x4

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-object v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_0

    .line 16
    const-string/jumbo v2, "songName"

    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-string v3, "artistName"

    .line 25
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 30
    const-string v4, "albumName"

    .line 31
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-direct {p0, v2, v3, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 3
    move-result p0

    .line 6
    return p0
    .line 7
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 3
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    const-string v1, "music_prev"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    const-string v1, "music_next"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 34
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 38
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    :cond_2
    return v0
    .line 43
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 8
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 11
    if-eqz p1, :cond_2

    .line 13
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-boolean p0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 23
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 29
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 32
    if-eqz p0, :cond_2

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 36
    :cond_2
    :goto_0
    return-void
    .line 39
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public ratingHeart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    cmpl-float v0, v0, v2

    .line 11
    if-nez v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    xor-int/2addr v0, v1

    .line 18
    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    .line 19
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public readPackageName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->getClientPackageName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "readPackage: "

    .line 17
    const-string v2, "MusicControlScreenE"

    .line 19
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-eqz v0, :cond_2

    .line 24
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 28
    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 44
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 48
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 54
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 57
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 69
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 72
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo p0, "set player info fail."

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    :goto_0
    return-void
    .line 84
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 12
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public seekTo(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 4
    move-result-wide v0

    .line 7
    mul-double/2addr v0, p1

    .line 8
    double-to-long p1, v0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicController;->seekTo(J)Z

    .line 12
    return-void
    .line 15
.end method
