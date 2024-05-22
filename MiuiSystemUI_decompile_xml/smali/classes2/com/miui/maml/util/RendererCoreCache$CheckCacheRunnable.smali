.class public Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mKey:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/maml/util/RendererCoreCache;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lcom/miui/maml/util/RendererCoreCache;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lcom/miui/maml/util/RendererCoreCache;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 4
    invoke-static {v0, p0}, Lcom/miui/maml/util/RendererCoreCache;->access$000(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
