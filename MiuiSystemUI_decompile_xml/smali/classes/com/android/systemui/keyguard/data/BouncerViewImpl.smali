.class public final Lcom/android/systemui/keyguard/data/BouncerViewImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public _delegate:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->_delegate:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->_delegate:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 8
    return-object p0
    .line 10
.end method
