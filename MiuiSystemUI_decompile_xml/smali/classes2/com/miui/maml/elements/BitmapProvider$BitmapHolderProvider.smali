.class public Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    .line 6
    invoke-interface {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const/16 v0, 0x2e

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    .line 33
    move-object p1, v1

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 36
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 38
    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 42
    if-eqz v0, :cond_2

    .line 44
    check-cast p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 48
    :cond_2
    return-void
    .line 50
.end method
