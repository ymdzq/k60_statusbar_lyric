.class public final Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;->this$1:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 2
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUpdateSlice:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    .line 4
    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
    .line 9
.end method
