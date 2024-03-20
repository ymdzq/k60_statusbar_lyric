.class public final Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyConfig;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
    .line 13
.end method
