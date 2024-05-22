.class Lcom/miui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 2
    iget-object v1, v0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/miui/maml/component/MamlView;->access$100(Lcom/miui/maml/component/MamlView;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 19
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$200(Lcom/miui/maml/component/MamlView;)F

    .line 21
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 25
    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$300(Lcom/miui/maml/component/MamlView;)F

    .line 27
    move-result v2

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 34
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 36
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    cmpl-float v1, v1, v2

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 45
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 51
    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 53
    move-result v2

    .line 56
    iget-object v3, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 57
    invoke-static {v3}, Lcom/miui/maml/component/MamlView;->access$500(Lcom/miui/maml/component/MamlView;)I

    .line 59
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    iget-object v4, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 64
    invoke-static {v4}, Lcom/miui/maml/component/MamlView;->access$600(Lcom/miui/maml/component/MamlView;)I

    .line 66
    move-result v4

    .line 69
    int-to-float v4, v4

    .line 70
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 74
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 85
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 87
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 89
    :goto_0
    return-void
    .line 92
.end method
