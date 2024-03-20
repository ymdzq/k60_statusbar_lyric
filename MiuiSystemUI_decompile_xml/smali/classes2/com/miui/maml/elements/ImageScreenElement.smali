.class public Lcom/miui/maml/elements/ImageScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpH:Lcom/miui/maml/data/Expression;

.field private mExpSrcH:Lcom/miui/maml/data/Expression;

.field private mExpSrcW:Lcom/miui/maml/data/Expression;

.field private mExpSrcX:Lcom/miui/maml/data/Expression;

.field private mExpSrcY:Lcom/miui/maml/data/Expression;

.field private mExpW:Lcom/miui/maml/data/Expression;

.field private mH:I

.field private mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHasSrcRect:Z

.field private mHasWidthAndHeight:Z

.field private mIsLoadAsyncSet:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;

.field private mMeshHeight:I

.field private mMeshVerts:[F

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRetainWhenInvisible:Z

.field private mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

.field private mSources:Lcom/miui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mSrcH:I

.field private mSrcIdExpression:Lcom/miui/maml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mW:I

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 11
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 13
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 18
    new-instance p2, Landroid/graphics/Paint;

    .line 20
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    .line 27
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Rect;

    .line 34
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 39
    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 42
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 46
    return-void
    .line 49
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v7

    .line 8
    const-string/jumbo v2, "src"

    .line 9
    const-string/jumbo v3, "srcFormat"

    .line 12
    const-string/jumbo v4, "srcParas"

    .line 15
    const-string/jumbo v5, "srcExp"

    .line 18
    const-string/jumbo v6, "srcFormatExp"

    .line 21
    move-object v0, v7

    .line 24
    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 30
    const-string/jumbo v0, "srcid"

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 39
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 43
    const-string v0, "antiAlias"

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    const-string v1, "false"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    xor-int/2addr v0, v1

    .line 58
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 59
    iget-object v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 68
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 70
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 78
    iget-boolean v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 80
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 82
    const-string/jumbo v0, "srcX"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 92
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    .line 96
    const-string/jumbo v0, "srcY"

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 104
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 105
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    .line 109
    const-string/jumbo v0, "srcW"

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 118
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 122
    const-string/jumbo v0, "srcH"

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 131
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 135
    const-string/jumbo v0, "w"

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 143
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 144
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 148
    const-string v0, "h"

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 155
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 156
    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 160
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 162
    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 166
    if-eqz v0, :cond_1

    .line 168
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    .line 172
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 174
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 179
    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 183
    if-eqz v0, :cond_2

    .line 185
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    .line 187
    :cond_2
    const-string v0, "blur"

    .line 189
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0, p1, v0, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 192
    move-result v0

    .line 195
    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 196
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMesh(Lorg/w3c/dom/Element;)V

    .line 198
    const-string/jumbo v0, "xfermodeNum"

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 207
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 208
    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 212
    if-nez v0, :cond_3

    .line 214
    const-string/jumbo v0, "xfermode"

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 223
    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 227
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 229
    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 231
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 234
    :cond_3
    const-string/jumbo v0, "useVirtualScreen"

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 244
    move-result v0

    .line 247
    const-string/jumbo v2, "srcType"

    .line 248
    invoke-virtual {p0, p1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v2

    .line 254
    if-eqz v0, :cond_4

    .line 255
    const-string v2, "VirtualScreen"

    .line 257
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    .line 259
    const-string v0, "loadAsync"

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    move-result v2

    .line 271
    if-nez v2, :cond_5

    .line 272
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 274
    move-result v0

    .line 277
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 278
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    .line 280
    :cond_5
    const-string v0, "retainWhenInvisible"

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 287
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 288
    move-result v0

    .line 291
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 292
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 294
    if-eqz v0, :cond_6

    .line 296
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 305
    const-string v4, ".bmp_width"

    .line 307
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    move-result-object v2

    .line 312
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 313
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 316
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 325
    const-string v4, ".bmp_height"

    .line 327
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    move-result-object v2

    .line 332
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 333
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 336
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 345
    const-string v4, ".has_bitmap"

    .line 347
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object v2

    .line 352
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 353
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    .line 356
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 358
    return-void
    .line 361
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    const-string v0, "Mask"

    .line 18
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 20
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 25
    move-result v1

    .line 28
    if-ge v0, v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 31
    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 33
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Lorg/w3c/dom/Element;

    .line 39
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    invoke-direct {v2, p0, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement$Mask;-><init>(Lcom/miui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    return-void
    .line 52
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 29

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move/from16 v10, p3

    .line 6
    move/from16 v11, p4

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v12

    .line 23
    if-nez v12, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getX()F

    .line 30
    move-result v0

    .line 33
    float-to-double v13, v0

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getY()F

    .line 35
    move-result v0

    .line 38
    float-to-double v5, v0

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 40
    move-result v0

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    .line 44
    move-result v1

    .line 47
    const/4 v15, 0x0

    .line 48
    if-eqz v1, :cond_4

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 51
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    cmpl-float v2, v1, v2

    .line 56
    if-nez v2, :cond_1

    .line 58
    int-to-double v1, v10

    .line 60
    sub-double/2addr v13, v1

    .line 61
    int-to-double v1, v11

    .line 62
    sub-double/2addr v5, v1

    .line 63
    goto/16 :goto_1

    .line 64
    :cond_1
    sub-float v16, v0, v1

    .line 66
    float-to-double v0, v1

    .line 68
    const-wide v17, 0x400921fb54442c46L    # 3.1415926535897

    .line 69
    mul-double v0, v0, v17

    .line 74
    const-wide v19, 0x4066800000000000L    # 180.0

    .line 76
    div-double v21, v0, v19

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 83
    move-result v0

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 87
    move-result v1

    .line 90
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 91
    if-nez v2, :cond_2

    .line 93
    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 95
    invoke-direct {v2, v15}, Lcom/miui/maml/elements/ImageScreenElement$pair;-><init>(Lcom/miui/maml/elements/ImageScreenElement$1;)V

    .line 97
    iput-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 100
    :cond_2
    float-to-double v2, v0

    .line 102
    float-to-double v0, v1

    .line 103
    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 104
    move-wide/from16 v23, v0

    .line 106
    move-object/from16 v0, p0

    .line 108
    move-wide v1, v2

    .line 110
    move-wide/from16 v3, v23

    .line 111
    move-wide/from16 v23, v5

    .line 113
    move-wide/from16 v5, v21

    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    .line 117
    int-to-double v0, v10

    .line 120
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 121
    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 123
    check-cast v2, Ljava/lang/Double;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 127
    move-result-wide v2

    .line 130
    add-double v25, v2, v0

    .line 131
    int-to-double v0, v11

    .line 133
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 134
    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 136
    check-cast v2, Ljava/lang/Double;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 140
    move-result-wide v2

    .line 143
    add-double v27, v2, v0

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 146
    move-result v0

    .line 149
    float-to-double v0, v0

    .line 150
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 151
    move-result-wide v1

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 155
    move-result v0

    .line 158
    float-to-double v3, v0

    .line 159
    invoke-virtual {v8, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 160
    move-result-wide v3

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 164
    move-result v0

    .line 167
    float-to-double v5, v0

    .line 168
    mul-double v5, v5, v17

    .line 169
    div-double v5, v5, v19

    .line 171
    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 173
    move-object/from16 v0, p0

    .line 175
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    .line 177
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 180
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 182
    check-cast v0, Ljava/lang/Double;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 186
    move-result-wide v0

    .line 189
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 190
    move-result v0

    .line 193
    float-to-double v0, v0

    .line 194
    add-double/2addr v13, v0

    .line 195
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 196
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 198
    check-cast v0, Ljava/lang/Double;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 202
    move-result-wide v0

    .line 205
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 206
    move-result v0

    .line 209
    float-to-double v0, v0

    .line 210
    add-double v5, v23, v0

    .line 211
    sub-double v13, v13, v25

    .line 213
    sub-double v5, v5, v27

    .line 215
    mul-double v0, v13, v13

    .line 217
    mul-double v2, v5, v5

    .line 219
    add-double/2addr v2, v0

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 222
    move-result-wide v0

    .line 225
    div-double/2addr v13, v0

    .line 226
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    .line 227
    move-result-wide v2

    .line 230
    const-wide/16 v13, 0x0

    .line 231
    cmpl-double v4, v5, v13

    .line 233
    if-lez v4, :cond_3

    .line 235
    add-double v21, v21, v2

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    add-double v21, v21, v17

    .line 240
    sub-double v21, v21, v2

    .line 242
    :goto_0
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 244
    move-result-wide v2

    .line 247
    mul-double v13, v2, v0

    .line 248
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 250
    move-result-wide v2

    .line 253
    mul-double v5, v2, v0

    .line 254
    move/from16 v0, v16

    .line 256
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getX()F

    .line 258
    move-result v1

    .line 261
    float-to-double v1, v1

    .line 262
    sub-double/2addr v13, v1

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getY()F

    .line 264
    move-result v1

    .line 267
    float-to-double v1, v1

    .line 268
    sub-double/2addr v5, v1

    .line 269
    goto :goto_2

    .line 270
    :cond_4
    move-wide/from16 v23, v5

    .line 271
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 273
    move-result v1

    .line 276
    float-to-double v1, v1

    .line 277
    add-double/2addr v1, v13

    .line 278
    int-to-double v3, v10

    .line 279
    add-double/2addr v1, v3

    .line 280
    double-to-float v1, v1

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 282
    move-result v2

    .line 285
    float-to-double v2, v2

    .line 286
    add-double/2addr v2, v5

    .line 287
    int-to-double v7, v11

    .line 288
    add-double/2addr v2, v7

    .line 289
    double-to-float v2, v2

    .line 290
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 291
    double-to-int v0, v13

    .line 294
    double-to-int v1, v5

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 296
    move-result v2

    .line 299
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 300
    move-result v2

    .line 303
    if-gez v2, :cond_5

    .line 304
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 306
    move-result v2

    .line 309
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 310
    move-result v3

    .line 313
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 314
    move-result v3

    .line 317
    if-gez v3, :cond_6

    .line 318
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 320
    move-result v3

    .line 323
    :cond_6
    move-object/from16 v4, p0

    .line 324
    iget-object v5, v4, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 326
    add-int/2addr v0, v10

    .line 328
    add-int/2addr v1, v11

    .line 329
    add-int/2addr v2, v0

    .line 330
    add-int/2addr v3, v1

    .line 331
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    iget-object v0, v4, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 335
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 337
    move-result v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    iget-object v0, v4, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 344
    iget-object v1, v4, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 346
    invoke-virtual {v9, v12, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    return-void
    .line 354
.end method

.method private rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V
    .locals 6

    .line 1
    mul-double v0, p1, p1

    .line 2
    mul-double v2, p3, p3

    .line 4
    add-double/2addr v2, v0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 7
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    move-result-object p0

    .line 16
    cmpl-double v2, v0, v2

    .line 17
    if-lez v2, :cond_0

    .line 19
    div-double v2, p1, v0

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    .line 23
    move-result-wide v2

    .line 26
    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    .line 27
    sub-double/2addr v4, v2

    .line 32
    sub-double/2addr v4, p5

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 34
    move-result-wide p5

    .line 37
    mul-double/2addr p5, v0

    .line 38
    add-double/2addr p5, p1

    .line 39
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    move-result-object p0

    .line 43
    iput-object p0, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 46
    move-result-wide p0

    .line 49
    mul-double/2addr p0, v0

    .line 50
    sub-double/2addr p3, p0

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    move-result-object p0

    .line 55
    iput-object p0, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    iput-object p0, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 59
    iput-object p0, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 61
    :goto_0
    return-void
    .line 63
.end method

.method private updateBitmap(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapImpl(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 6
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-boolean v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 15
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    move-result v2

    .line 27
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 28
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 30
    move-result v4

    .line 33
    if-ne v2, v4, :cond_1

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    move-result v2

    .line 39
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v4

    .line 45
    if-eq v2, v4, :cond_2

    .line 46
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    move-result v2

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v4

    .line 55
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    move-result-object v2

    .line 61
    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_2
    iput-boolean v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 64
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 66
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 68
    move-result-object v2

    .line 71
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 72
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 74
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 76
    invoke-static {v2, v1, v4, v5}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 78
    move-result-object v2

    .line 81
    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 82
    :cond_3
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 84
    if-eqz v2, :cond_4

    .line 86
    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 88
    if-lez v4, :cond_4

    .line 90
    move-object v8, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    move-object v8, v1

    .line 94
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 95
    move-result v1

    .line 98
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    .line 104
    move-result v10

    .line 107
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 111
    move-result v11

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 115
    move-result v12

    .line 118
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 119
    move-result v13

    .line 122
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 123
    move-result v14

    .line 126
    const/4 v15, 0x0

    .line 127
    cmpl-float v1, v11, v15

    .line 128
    if-eqz v1, :cond_11

    .line 130
    cmpl-float v1, v12, v15

    .line 132
    if-nez v1, :cond_5

    .line 134
    goto/16 :goto_6

    .line 136
    :cond_5
    invoke-virtual {v0, v15, v11}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 138
    move-result v1

    .line 141
    float-to-int v7, v1

    .line 142
    invoke-virtual {v0, v15, v12}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 143
    move-result v1

    .line 146
    float-to-int v6, v1

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 153
    move-result v1

    .line 156
    if-nez v1, :cond_c

    .line 157
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 159
    move-result-object v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 165
    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    .line 175
    move-result-object v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 181
    int-to-float v3, v7

    .line 183
    add-float/2addr v3, v11

    .line 184
    float-to-int v3, v3

    .line 185
    int-to-float v4, v6

    .line 186
    add-float/2addr v4, v12

    .line 187
    float-to-int v4, v4

    .line 188
    invoke-virtual {v2, v7, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 192
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {v1, v9, v2, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    goto/16 :goto_5

    .line 199
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v2, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    .line 203
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 219
    const-string v1, "ImageScreenElement"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    goto/16 :goto_5

    .line 225
    :cond_7
    cmpl-float v1, v13, v15

    .line 227
    if-gtz v1, :cond_a

    .line 229
    cmpl-float v1, v14, v15

    .line 231
    if-gtz v1, :cond_a

    .line 233
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 235
    if-eqz v1, :cond_8

    .line 237
    goto :goto_1

    .line 239
    :cond_8
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 240
    if-lez v2, :cond_9

    .line 242
    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 244
    if-lez v3, :cond_9

    .line 246
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    .line 248
    const/4 v5, 0x0

    .line 250
    const/4 v6, 0x0

    .line 251
    const/4 v7, 0x0

    .line 252
    iget-object v11, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 253
    move-object/from16 v0, p1

    .line 255
    move-object v1, v8

    .line 257
    move-object v8, v11

    .line 258
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 259
    goto/16 :goto_5

    .line 262
    :cond_9
    int-to-float v1, v7

    .line 264
    int-to-float v2, v6

    .line 265
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 266
    invoke-virtual {v9, v8, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    goto/16 :goto_5

    .line 271
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 273
    int-to-float v2, v7

    .line 275
    add-float/2addr v2, v11

    .line 276
    float-to-int v2, v2

    .line 277
    int-to-float v3, v6

    .line 278
    add-float/2addr v3, v12

    .line 279
    float-to-int v3, v3

    .line 280
    invoke-virtual {v1, v7, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 284
    if-eqz v1, :cond_b

    .line 286
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 288
    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 290
    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 292
    add-int/2addr v4, v2

    .line 294
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 295
    add-int/2addr v5, v3

    .line 297
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    :cond_b
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 301
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 303
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 305
    invoke-virtual {v9, v8, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 307
    goto/16 :goto_5

    .line 310
    :cond_c
    float-to-double v1, v11

    .line 312
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 313
    move-result-wide v1

    .line 316
    double-to-int v1, v1

    .line 317
    float-to-double v2, v12

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 319
    move-result-wide v2

    .line 322
    double-to-int v2, v2

    .line 323
    int-to-float v5, v7

    .line 324
    int-to-float v4, v6

    .line 325
    add-int/2addr v1, v7

    .line 326
    int-to-float v3, v1

    .line 327
    add-int/2addr v2, v6

    .line 328
    int-to-float v2, v2

    .line 329
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 330
    const/16 v16, 0x1f

    .line 332
    move-object/from16 v17, v1

    .line 334
    move-object/from16 v1, p1

    .line 336
    move/from16 v18, v2

    .line 338
    move v2, v5

    .line 340
    move/from16 v19, v3

    .line 341
    move v3, v4

    .line 343
    move/from16 v20, v4

    .line 344
    move/from16 v4, v19

    .line 346
    move/from16 v21, v5

    .line 348
    move/from16 v5, v18

    .line 350
    move/from16 v22, v6

    .line 352
    move-object/from16 v6, v17

    .line 354
    move/from16 v23, v7

    .line 356
    move/from16 v7, v16

    .line 358
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 360
    cmpl-float v1, v13, v15

    .line 363
    if-gtz v1, :cond_e

    .line 365
    cmpl-float v1, v14, v15

    .line 367
    if-gtz v1, :cond_e

    .line 369
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 371
    if-eqz v1, :cond_d

    .line 373
    goto :goto_2

    .line 375
    :cond_d
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 376
    move/from16 v3, v20

    .line 378
    move/from16 v2, v21

    .line 380
    invoke-virtual {v9, v8, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    move/from16 v4, v22

    .line 385
    move/from16 v3, v23

    .line 387
    goto :goto_3

    .line 389
    :cond_e
    :goto_2
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 390
    float-to-int v2, v11

    .line 392
    move/from16 v3, v23

    .line 393
    add-int v7, v3, v2

    .line 395
    float-to-int v2, v12

    .line 397
    move/from16 v4, v22

    .line 398
    add-int v6, v4, v2

    .line 400
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 405
    if-eqz v1, :cond_f

    .line 407
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 409
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 411
    iget v6, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 413
    add-int/2addr v6, v2

    .line 415
    iget v7, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 416
    add-int/2addr v7, v5

    .line 418
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    :cond_f
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 422
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 424
    iget-object v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 426
    invoke-virtual {v9, v8, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    :goto_3
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 433
    move-result-object v1

    .line 436
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    move-result v2

    .line 440
    if-eqz v2, :cond_10

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    move-result-object v2

    .line 446
    check-cast v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 447
    invoke-direct {v0, v9, v2, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V

    .line 449
    goto :goto_4

    .line 452
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 453
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 456
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 459
    :cond_11
    :goto_6
    return-void
    .line 462
.end method

.method public doTick(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 31
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 42
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 44
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 48
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 52
    move-result-wide p1

    .line 55
    double-to-int p1, p1

    .line 56
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 57
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 63
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 71
    if-eqz p1, :cond_4

    .line 73
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 77
    move-result-wide p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 81
    move-result p1

    .line 84
    float-to-int p1, p1

    .line 85
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 86
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 90
    move-result-wide p1

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 94
    move-result p1

    .line 97
    float-to-int p1, p1

    .line 98
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 99
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 103
    move-result-wide p1

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 107
    move-result p1

    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 112
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 116
    move-result-wide p1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 120
    move-result p1

    .line 123
    float-to-int p1, p1

    .line 124
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 125
    :cond_4
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    .line 127
    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 133
    move-result-wide p1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 137
    move-result p1

    .line 140
    float-to-int p1, p1

    .line 141
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 142
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 146
    move-result-wide p1

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 150
    move-result p1

    .line 153
    float-to-int p1, p1

    .line 154
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 155
    :cond_5
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 157
    if-eqz p1, :cond_6

    .line 159
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 161
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 163
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 168
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 170
    return-void
    .line 173
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 30
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 41
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 43
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 47
    return-void
    .line 49
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0
.end method

.method public getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    iget v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    iget p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/miui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public getBitmapWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public getHeight()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 7
    if-ltz v1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 16
    :goto_0
    int-to-float p0, p0

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    .line 20
    move-result p0

    .line 23
    goto :goto_0
    .line 24
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    move-result-wide v1

    .line 22
    double-to-long v1, v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    :cond_1
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 7
    if-ltz v1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 16
    :goto_0
    int-to-float p0, p0

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    .line 20
    move-result p0

    .line 23
    goto :goto_0
    .line 24
.end method

.method public getX()F
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    .line 10
    move-result-wide v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 14
    move-result p0

    .line 17
    add-float/2addr v0, p0

    .line 18
    :cond_0
    return v0
    .line 19
.end method

.method public getY()F
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    .line 10
    move-result-wide v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 14
    move-result p0

    .line 17
    add-float/2addr v0, p0

    .line 18
    :cond_0
    return v0
    .line 19
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 40
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 63
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 65
    :cond_3
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 68
    int-to-double v0, v0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 71
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 76
    if-lez v0, :cond_4

    .line 78
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 81
    :cond_4
    return-void
    .line 83
.end method

.method public loadMesh(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    const-string v0, "ImageScreenElement"

    .line 2
    const-string v1, "mesh"

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    const-string v2, ","

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result v4

    .line 27
    iput v4, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result v2

    .line 39
    iput v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 42
    :catch_0
    const-string v2, "Invalid mesh format:"

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    iget v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 52
    if-eqz v1, :cond_1

    .line 54
    iget v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 56
    if-eqz v1, :cond_1

    .line 58
    const-string v1, "meshVertsArr"

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    instance-of v2, v1, [F

    .line 76
    if-eqz v2, :cond_0

    .line 78
    check-cast v1, [F

    .line 80
    iput-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    .line 82
    goto :goto_1

    .line 84
    :cond_0
    iput v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 85
    iput v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "Invalid meshVertsArr:"

    .line 91
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string p1, "  undifined or not float[] type"

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_1
    return-void
    .line 111
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    .line 1
    const-string v0, "SourcesAnimation"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 10
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 15
    return-object p1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public onSetAnimBefore()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimBefore()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 6
    return-void
    .line 8
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 11
    :goto_0
    return-void
    .line 14
.end method

.method public onVisibilityChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 13
    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 26
    :cond_2
    :goto_0
    return-void
    .line 29
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/elements/ImageScreenElement;->pause()V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public pauseAnim(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->pauseAnim(J)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public playAnim(JJJZZ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 3
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 25
    move-wide v4, p1

    .line 27
    move-wide v6, p3

    .line 28
    move-wide/from16 v8, p5

    .line 29
    move/from16 v10, p7

    .line 31
    move/from16 v11, p8

    .line 33
    invoke-virtual/range {v3 .. v11}, Lcom/miui/maml/elements/ImageScreenElement;->playAnim(JJJZZ)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 39
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method

.method public reset(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 23
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->reset(J)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 33
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 36
    if-lez p1, :cond_2

    .line 38
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 41
    :cond_2
    return-void
    .line 43
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/elements/ImageScreenElement;->resume()V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public resumeAnim(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->resumeAnim(J)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 12
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSrcId(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 16
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 25
    :goto_0
    return-void
    .line 27
.end method

.method public setSrcType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-static {v0, p1}, Lcom/miui/maml/elements/BitmapProvider;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 8
    return-void
    .line 10
.end method

.method public updateBitmapImpl(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    move-result-object p1

    .line 5
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 6
    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 10
    invoke-static {p1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 21
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 26
    return-void
    .line 29
.end method

.method public updateBitmapVars()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    .line 8
    move-result v1

    .line 11
    int-to-double v1, v1

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 13
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    .line 22
    move-result v1

    .line 25
    int-to-double v1, v1

    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 27
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 38
    move-result-object p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    const-wide/16 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 49
    :cond_1
    return-void
    .line 52
.end method
