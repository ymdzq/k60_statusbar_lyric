.class public Lcom/miui/maml/elements/LayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Layer"


# instance fields
.field private mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p1, Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    .line 5
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {p1, p0, p2}, Lcom/miui/maml/elements/LayerScreenElement$LayerView;-><init>(Lcom/miui/maml/elements/LayerScreenElement;Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement;->mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/LayerScreenElement;->mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    .line 2
    return-object p0
    .line 4
.end method
