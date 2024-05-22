.class public final Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

.field public final synthetic val$action:I


# direct methods
.method public constructor <init>(Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->this$1:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 2
    iput p2, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->val$action:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->val$action:I

    .line 2
    const/4 v1, 0x5

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->this$1:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 8
    iget-object v0, v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 10
    invoke-virtual {v0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->updateTopActivity()V

    .line 12
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->this$1:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 15
    iget-object v0, v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 17
    invoke-virtual {v0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->notifyListeners()V

    .line 19
    iget v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->val$action:I

    .line 22
    const/4 v2, 0x3

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    if-ne v0, v1, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v0, v3

    .line 33
    :goto_1
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2$1;->this$1:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 34
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 36
    iget-boolean v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 38
    if-eq v0, v1, :cond_3

    .line 40
    return-void

    .line 42
    :cond_3
    xor-int/lit8 v0, v1, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 45
    return-void
    .line 47
.end method
