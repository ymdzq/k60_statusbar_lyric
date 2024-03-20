.class Lcom/android/settings/search/RemoteSearchService$1;
.super Lcom/android/settings/aidl/IRemoteSearchService$Stub;
.source "RemoteSearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/RemoteSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/RemoteSearchService;


# direct methods
.method constructor <init>(Lcom/android/settings/search/RemoteSearchService;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/settings/search/RemoteSearchService$1;->this$0:Lcom/android/settings/search/RemoteSearchService;

    invoke-direct {p0}, Lcom/android/settings/aidl/IRemoteSearchService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public change(Ljava/lang/String;I)Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchService$1;->this$0:Lcom/android/settings/search/RemoteSearchService;

    invoke-static {p0, p1, p2}, Lcom/android/settings/search/RemoteSearchService;->-$$Nest$maction(Lcom/android/settings/search/RemoteSearchService;Ljava/lang/String;I)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public enquiry(Ljava/lang/String;)I
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchService$1;->this$0:Lcom/android/settings/search/RemoteSearchService;

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/search/RemoteSearchService;->-$$Nest$maction(Lcom/android/settings/search/RemoteSearchService;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/RemoteSearchResult;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public visit(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
