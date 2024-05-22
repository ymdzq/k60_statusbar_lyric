.class Lcom/miui/maml/component/MamlDrawable$3;
.super Lcom/miui/maml/RenderUpdater;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlDrawable;Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public doRenderImp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 8
    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 17
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 19
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 23
    invoke-static {v1}, Lcom/miui/maml/component/MamlDrawable;->access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 25
    move-result-object v1

    .line 28
    const-wide/16 v2, 0x64

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 34
    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;

    .line 36
    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable$3;->this$0:Lcom/miui/maml/component/MamlDrawable;

    .line 40
    invoke-static {p0}, Lcom/miui/maml/component/MamlDrawable;->access$300(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
    .line 49
.end method
