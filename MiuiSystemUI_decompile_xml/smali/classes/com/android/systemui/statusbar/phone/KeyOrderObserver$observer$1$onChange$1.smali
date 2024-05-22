.class public final Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1$onChange$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyOrderObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1$onChange$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1$onChange$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyOrderObserver;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->keyOrderCallback:Lkotlin/jvm/functions/Function0;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    return-void
    .line 12
.end method
