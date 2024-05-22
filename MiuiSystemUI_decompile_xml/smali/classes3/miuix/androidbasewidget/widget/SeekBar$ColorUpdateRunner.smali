.class public final Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mSeekBarRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lmiuix/androidbasewidget/widget/SeekBar;

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    sget v0, Lmiuix/androidbasewidget/widget/SeekBar;->$r8$clinit:I

    .line 16
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method
