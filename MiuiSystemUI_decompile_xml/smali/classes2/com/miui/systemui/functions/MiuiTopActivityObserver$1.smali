.class public final Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/functions/MiuiTopActivityObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 2
    iget-object v0, p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "freeform_window_state"

    .line 10
    const/4 v2, -0x1

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-boolean v0, p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 22
    iget-object p1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 24
    invoke-virtual {p1}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->updateTopActivity()V

    .line 26
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;->this$0:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 29
    invoke-virtual {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->notifyListeners()V

    .line 31
    return-void
    .line 34
.end method
