.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizeWebViewClient"
.end annotation


# instance fields
.field private final mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 239
    iput-object p2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideProgress()V

    .line 263
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowProgress()V

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->get()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewOauth..WebView.url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->log(Ljava/lang/String;)V

    .line 274
    invoke-static {p2}, Lcom/xiaomi/account/utils/OAuthUrlPaser;->parse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/account/utils/LogEncryptUtils;->generateEncryptMessageLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthorizeActivityBase"

    const-string v1, "WebViewOauth sucess"

    .line 277
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "info"

    .line 278
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    sget p1, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    .line 283
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
