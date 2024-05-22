.class Lcom/miui/maml/FancyDrawable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/FancyDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FancyDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/FancyDrawable;->access$002(Lcom/miui/maml/FancyDrawable;Z)Z

    .line 5
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 8
    invoke-static {p0}, Lcom/miui/maml/FancyDrawable;->access$100(Lcom/miui/maml/FancyDrawable;)V

    .line 10
    return-void
    .line 13
.end method
