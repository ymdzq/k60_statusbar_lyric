.class Lcom/miui/maml/data/ContentProviderBinder$1;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$1;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$1;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-static {p0}, Lcom/miui/maml/data/ContentProviderBinder;->access$000(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-void
.end method
