.class Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Lcom/miui/maml/elements/WebViewScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public getDouble(I)D
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getObj(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 8
    return-void
    .line 11
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    int-to-double v0, p2

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 9
    return-void
    .line 12
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
