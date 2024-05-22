.class public final Lmiui/stub/MiuiStub$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiui/stub/MiuiStub;


# direct methods
.method public constructor <init>(Lmiui/stub/MiuiStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiStub$4;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addObserver(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$4;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 12
    sget-object v0, Lmiui/stub/MiuiProxy;->sWakefullObserMap:Ljava/util/Map;

    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lmiui/stub/MiuiProxy$3;

    .line 31
    invoke-direct {v1, p1}, Lmiui/stub/MiuiProxy$3;-><init>(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V

    .line 33
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-object p1, v1

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 40
    return-void
    .line 43
.end method
