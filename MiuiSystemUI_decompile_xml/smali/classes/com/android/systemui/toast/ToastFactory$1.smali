.class public final Lcom/android/systemui/toast/ToastFactory$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/ToastFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/ToastFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ToastPlugin;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    .line 6
    return-void
    .line 8
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ToastPlugin;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory$1;->this$0:Lcom/android/systemui/toast/ToastFactory;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    .line 15
    :cond_0
    return-void
    .line 17
.end method
