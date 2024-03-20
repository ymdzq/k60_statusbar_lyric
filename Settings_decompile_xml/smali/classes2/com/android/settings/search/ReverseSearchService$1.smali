.class Lcom/android/settings/search/ReverseSearchService$1;
.super Lcom/android/settings/aidl/IReverseSearchService$Stub;
.source "ReverseSearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/ReverseSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/ReverseSearchService;


# direct methods
.method constructor <init>(Lcom/android/settings/search/ReverseSearchService;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/search/ReverseSearchService$1;->this$0:Lcom/android/settings/search/ReverseSearchService;

    invoke-direct {p0}, Lcom/android/settings/aidl/IReverseSearchService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getResults(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/settings/search/ReverseSearchService$1;->this$0:Lcom/android/settings/search/ReverseSearchService;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/ReverseSearchService;->getResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
