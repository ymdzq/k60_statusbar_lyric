.class Lcom/miui/maml/elements/ViewHolderScreenElement$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 2
    iput-boolean p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x4

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
    .line 18
.end method
