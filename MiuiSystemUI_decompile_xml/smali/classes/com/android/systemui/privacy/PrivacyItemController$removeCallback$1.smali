.class public final Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $callback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    :goto_0
    return p0
.end method
