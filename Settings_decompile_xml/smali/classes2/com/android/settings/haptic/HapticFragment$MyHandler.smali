.class Lcom/android/settings/haptic/HapticFragment$MyHandler;
.super Landroid/os/Handler;
.source "HapticFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/haptic/HapticFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/haptic/HapticFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/android/settings/haptic/HapticFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/haptic/HapticFragment$MyHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/settings/haptic/HapticFragment;Lcom/android/settings/haptic/HapticFragment$MyHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/haptic/HapticFragment$MyHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/haptic/HapticFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/settings/haptic/HapticFragment$MyHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/haptic/HapticFragment;

    .line 83
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$mupdateHapticDesc(Lcom/android/settings/haptic/HapticFragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
