.class Lcom/miui/maml/elements/WebViewScreenElement$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 10
    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 12
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 19
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    .line 22
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 25
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 33
    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 43
    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 45
    move-result-object p0

    .line 48
    const-string v0, "about:blank"

    .line 49
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void
    .line 54
.end method
