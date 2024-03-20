.class public Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


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
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 2
    invoke-static {p2, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-nez p2, :cond_3

    .line 9
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p2

    .line 18
    if-nez p2, :cond_2

    .line 19
    const/16 p2, 0x5b

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 23
    move-result p2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result p4

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p2, v0, :cond_0

    .line 32
    add-int/lit8 p4, p4, -0x1

    .line 34
    if-ge p2, p4, :cond_0

    .line 36
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v0

    .line 41
    const/16 v1, 0x5d

    .line 42
    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 46
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 48
    move-result-object v0

    .line 51
    add-int/lit8 v1, p2, 0x1

    .line 52
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    move-result-object p4

    .line 57
    invoke-static {v0, p4}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 58
    move-result-object p4

    .line 61
    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 62
    :cond_0
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 64
    const/4 v0, 0x0

    .line 66
    if-nez p4, :cond_1

    .line 67
    move-object p2, p1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    :goto_0
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 75
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 77
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 79
    move-result-object v1

    .line 82
    invoke-direct {p4, p2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 83
    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 86
    :cond_2
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 88
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 90
    if-eqz p2, :cond_5

    .line 92
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 94
    if-eqz p4, :cond_4

    .line 96
    invoke-virtual {p4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 98
    move-result-wide v0

    .line 101
    double-to-int p4, v0

    .line 102
    invoke-virtual {p2, p4}, Lcom/miui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    .line 103
    move-result-object p2

    .line 106
    check-cast p2, Landroid/graphics/Bitmap;

    .line 107
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 113
    check-cast p2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    move-object p3, p2

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    const-string p2, "fail to cast as Bitmap from object: "

    .line 118
    const-string p4, "BitmapProvider"

    .line 120
    invoke-static {p2, p1, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 125
    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 127
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 130
    return-object p0
    .line 132
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

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
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 14
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 16
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, p1, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 26
    return-void
    .line 28
.end method
