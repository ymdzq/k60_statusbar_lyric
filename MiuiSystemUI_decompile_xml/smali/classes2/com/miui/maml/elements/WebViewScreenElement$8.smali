.class Lcom/miui/maml/elements/WebViewScreenElement$8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$200(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 10
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$400(Lcom/miui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 16
    const-string v0, "MAML.WebViewScreenE"

    .line 19
    const-string v1, "addWebView"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 26
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 34
    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 36
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 40
    invoke-static {v2}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 49
    const/4 v0, 0x1

    .line 51
    invoke-static {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 56
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 64
    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    .line 70
    :cond_1
    :goto_0
    return-void
    .line 73
.end method
