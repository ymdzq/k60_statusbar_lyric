.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final state:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->hashCode()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 6
    return-void
    .line 9
.end method
