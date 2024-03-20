.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;
.super Landroid/webkit/WebChromeClient;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {p0, p2}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onUpdateProgress(I)V

    return-void
.end method
