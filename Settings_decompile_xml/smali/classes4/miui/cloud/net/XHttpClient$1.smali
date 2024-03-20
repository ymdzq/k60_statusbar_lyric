.class Lmiui/cloud/net/XHttpClient$1;
.super Ljava/lang/Object;
.source "XHttpClient.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cloud/net/XHttpClient;

.field final synthetic val$response:Lmiui/cloud/common/XWrapper;


# direct methods
.method constructor <init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/XWrapper;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$1;->this$0:Lmiui/cloud/net/XHttpClient;

    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$1;->val$response:Lmiui/cloud/common/XWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHttpResponse(Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient$1;->val$response:Lmiui/cloud/common/XWrapper;

    invoke-virtual {p0, p1}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method
