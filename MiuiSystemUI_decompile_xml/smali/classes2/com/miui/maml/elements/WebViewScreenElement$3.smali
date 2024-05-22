.class Lcom/miui/maml/elements/WebViewScreenElement$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 10
    return-void
    .line 13
.end method
