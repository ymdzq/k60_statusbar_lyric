.class public final Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyOrderObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1$onChange$1;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1$onChange$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyOrderObserver;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
    .line 21
.end method
