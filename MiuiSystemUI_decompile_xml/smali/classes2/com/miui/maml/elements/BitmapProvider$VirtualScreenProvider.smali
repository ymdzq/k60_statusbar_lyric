.class Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;


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
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    .line 4
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/miui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 17
    return-object p0
    .line 19
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 7
    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualScreen;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/miui/maml/elements/VirtualScreen;

    .line 15
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    .line 17
    :cond_0
    return-void
    .line 19
.end method
