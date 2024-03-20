.class Lcom/miui/maml/data/ContentProviderBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field private mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

.field private mNoImageElement:Z

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string p2, "column"

    .line 3
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    const-string p2, "row"

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    return-void
.end method


# virtual methods
.method public getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    .line 16
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 18
    if-nez p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 27
    return-object p0
    .line 29
.end method

.method public parseType(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    .line 2
    move-result p1

    .line 5
    const-string v0, "blob.bitmap"

    .line 6
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/16 p1, 0x3e9

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 20
    :goto_0
    return p1
    .line 22
.end method

.method public setNull(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 17
    :goto_0
    return-void
    .line 20
.end method
