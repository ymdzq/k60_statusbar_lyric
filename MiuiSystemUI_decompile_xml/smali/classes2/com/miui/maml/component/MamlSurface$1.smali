.class Lcom/miui/maml/component/MamlSurface$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlSurface;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlSurface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    .line 10
    invoke-static {p0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
