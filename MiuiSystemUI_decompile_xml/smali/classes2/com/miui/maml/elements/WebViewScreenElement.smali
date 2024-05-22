.class public Lcom/miui/maml/elements/WebViewScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML.WebViewScreenE"

.field public static final TAG_NAME:Ljava/lang/String; = "WebView"

.field private static final USE_NETWORK_ALL:I = 0x2

.field private static final USE_NETWORK_WIFI:I = 0x1


# instance fields
.field private mCachePage:Z

.field private mCurUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mUriFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lcom/miui/maml/data/Expression;

.field private mViewAdded:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$UslKwuf_8OaphjS3IJhJlB9pw2g(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->lambda$goBack$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 6
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object p2

    .line 11
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    .line 14
    new-instance p2, Landroid/webkit/WebView;

    .line 16
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    .line 18
    invoke-direct {p2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 23
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$1;

    .line 25
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$1;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 27
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 33
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$2;

    .line 35
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$2;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 37
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 43
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 45
    move-result-object p2

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 53
    const/16 v2, 0x64

    .line 55
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 57
    const-string/jumbo p2, "userAgent"

    .line 60
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 73
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v2, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 82
    new-instance v2, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;

    .line 84
    const/4 v3, 0x0

    .line 86
    invoke-direct {v2, p0, v3}, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Lcom/miui/maml/elements/WebViewScreenElement$1;)V

    .line 87
    const-string v3, "maml"

    .line 90
    invoke-virtual {p2, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 95
    const/4 v2, -0x1

    .line 97
    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 101
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 103
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 107
    move-result-object p2

    .line 110
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 113
    move-result-object p2

    .line 116
    const-string/jumbo v2, "uriExp"

    .line 117
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 123
    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 124
    move-result-object v2

    .line 127
    new-instance v3, Lcom/miui/maml/util/TextFormatter;

    .line 128
    const-string/jumbo v4, "uri"

    .line 130
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 136
    invoke-direct {v3, p2, v4, v2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 137
    iput-object v3, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 140
    const-string v2, "cachePage"

    .line 142
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 147
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 148
    move-result v2

    .line 151
    iput-boolean v2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 152
    const-string/jumbo v2, "useNetwork"

    .line 154
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v2

    .line 164
    if-nez v2, :cond_3

    .line 165
    const-string v2, "all"

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v0, "wifi"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    move-result v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    iput v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 185
    goto :goto_1

    .line 187
    :cond_2
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 188
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lcom/miui/maml/data/Expression;

    .line 192
    goto :goto_1

    .line 194
    :cond_3
    :goto_0
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 195
    :goto_1
    return-void
    .line 197
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/WebViewScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 2
    return p0
    .line 4
.end method

.method private canUseNetwork()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return v2

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    if-ne v0, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 12
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 16
    const-string v0, "connectivity"

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 24
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 26
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 32
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    move v2, v1

    .line 45
    :goto_0
    return v2

    .line 46
    :cond_2
    return v1
    .line 47
.end method

.method private final finishWebView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$9;

    .line 4
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$9;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method private final initWebView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$8;

    .line 12
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$8;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method private synthetic lambda$goBack$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 4
    return-void
    .line 7
.end method

.method private pauseWebView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$7;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$7;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    const/4 v2, 0x1

    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 17
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    if-eq v1, p0, :cond_1

    .line 24
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_1
    return v2
    .line 30
.end method

.method private final updateView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 10
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setX(F)V

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 19
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setY(F)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 24
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 32
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 34
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public doTick(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 5
    invoke-virtual {p1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 17
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    const-string v0, "loadUrl: "

    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 38
    const-string v0, "MAML.WebViewScreenE"

    .line 39
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->updateView()V

    .line 47
    return-void
    .line 50
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->finishWebView()V

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public goBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lcom/miui/maml/data/Expression;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v0

    .line 12
    double-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 18
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->initWebView()V

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "MAML.WebViewScreenE"

    .line 28
    const-string v0, "ViewManager must be set before init"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->canUseNetwork()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string v0, "http"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const-string p0, "loadUrl canceled due to useNetwork setting."

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    const-string p1, "MAML.WebViewScreenE"

    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$3;

    .line 32
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$3;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
    .line 40
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$6;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$6;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public reload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$5;

    .line 4
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$5;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public runjs(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$4;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$4;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method
