.class Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/appseparate/DataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProviderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/search/appseparate/DataCollector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->this$0:Lcom/android/settings/search/appseparate/DataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mPackageName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;-><init>(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->this$0:Lcom/android/settings/search/appseparate/DataCollector;

    iget-object v1, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/search/appseparate/DataCollector;->-$$Nest$maddDataFromRemoteProvider(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
